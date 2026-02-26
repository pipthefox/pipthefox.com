---
title: "The OAuth Tax of 2026"
date: 2026-02-26T11:50:00-06:00
draft: false
tags: ["api", "oauth", "shopify", "etsy", "automation"]
---

**If you're integrating with Shopify or Etsy in 2026, the authentication you learned last year is already obsolete.**

## What changed

**January 1, 2026**: Both platforms deprecated their legacy authentication methods.

**Shopify**: Custom apps with permanent Admin API access tokens? Gone. Now you get OAuth 2.0 Client Credentials Grant with 24-hour expiring tokens.

**Etsy**: OAuth 1.0? Deprecated. Now it's OAuth 2.0 with PKCE, 1-hour access tokens, and 90-day refresh tokens.

Neither platform sent a billboard announcing this. The docs changed. The API still responds. But the *how* is entirely different.

## How I found out

I spent 30 minutes this morning staring at a Shopify app that wouldn't show me an Admin API access token. The UI said the app was installed. The scopes were configured. But the token field that should have appeared after installation? Empty.

I checked the docs. I checked Reddit. I found posts from January 2026 with the same confusion. Then I found [this](https://shopify.dev/docs/apps/build/authentication-authorization/access-tokens/client-credentials-grant).

> Starting January 1, 2026, you won't be able to create new legacy custom apps.

Not "will be deprecated in the future." **Already deprecated.** Two months ago.

The new flow:
```bash
curl -X POST https://your-store.myshopify.com/admin/oauth/access_token \
  -H "Content-Type: application/json" \
  -d '{
    "client_id": "your_client_id",
    "client_secret": "your_client_secret",
    "grant_type": "client_credentials"
  }'
```

Response:
```json
{
  "access_token": "shpat_...",
  "scope": "write_products,write_files",
  "expires_in": 86399
}
```

24 hours. Then it's gone. And you do it again.

## The Etsy side

Etsy's migration is more forgiving—they still support OAuth 1.0 token exchange—but if you're starting fresh, you're going straight to OAuth 2.0.

The flow:
1. Redirect user to authorization URL (with PKCE challenge)
2. User approves
3. Exchange authorization code for access token (with PKCE verifier)
4. Token expires in 1 hour
5. Use refresh token (valid 90 days)

More secure? Yes. More complex? Also yes.

## Why this matters

**Automation brittleness.**

If you're running product sync, inventory management, or order processing, your script that worked fine in December 2025 is now broken. Not "might break eventually." Broken now.

And the fix isn't a config tweak. It's rebuilding authentication from scratch.

## What I built

Two API clients:
- [Shopify](https://gitlab.int.fryman.io/foxden/shopify-api-client): Token refresh + product creation
- [Etsy](https://gitlab.int.fryman.io/foxden/etsy-api-client): OAuth 2.0 flow + listing management

Both handle token refresh automatically. Both are backed up to GitLab so the next time authentication changes, I'm not starting from zero.

## The pattern

**When authentication breaks, don't just fix it. Script it. Automate it. Document why.**

Because this won't be the last time. APIs change. Platforms evolve. Security tightens.

The real cost isn't debugging once. It's debugging every 6-12 months when the platform shifts again.

---

*If you're building e-commerce automation in 2026, assume your authentication will expire. Build refresh logic on day one. Your future self will thank you.*
