# Rolodx — Go Live Today

Follow these steps in order. Takes about 20 minutes.

---

## Step 1 — Create a Supabase project (5 mins)

1. Go to [supabase.com](https://supabase.com) and sign up (free)
2. Click **New project**
3. Name it `rolodx`, pick a region close to you (Europe West for SA), set a strong password
4. Wait ~2 minutes for it to provision

---

## Step 2 — Run the database setup (2 mins)

1. In your Supabase project, go to **SQL Editor** (left sidebar)
2. Click **New query**
3. Open `setup.sql` from this folder, copy everything, paste it in
4. Click **Run**
5. You should see "Success. No rows returned"

---

## Step 3 — Create your admin account (2 mins)

1. In Supabase, go to **Authentication > Users**
2. Click **Add user > Create new user**
3. Enter your email and a strong password
4. Save these — you'll use them to log into `admin.html`

---

## Step 4 — Get your API keys (1 min)

1. In Supabase, go to **Settings > API**
2. Copy:
   - **Project URL** (looks like `https://xxxx.supabase.co`)
   - **anon public** key (long string starting with `eyJ...`)

---

## Step 5 — Fill in config.js (2 mins)

Open `config.js` and replace the placeholder values:

```js
supabase: {
  url:     'https://xxxx.supabase.co',   // ← your Project URL
  anonKey: 'eyJhbGci...',                // ← your anon public key
},
```

Also fill in your personal details:
```js
owner: {
  initials:  'BA',
  name:      'Barrett Alexander',
  title:     'Founder, Alexander Tech',
  location:  'Cape Town, South Africa',
  bio:       '...',
  whatsapp:  '27821234567',   // your number
  linkedin:  'https://linkedin.com/in/yourprofile',
},
```

---

## Step 6 — Deploy to Vercel (5 mins)

1. Go to [vercel.com](https://vercel.com) and sign up (free, use GitHub or email)
2. Click **Add New > Project**
3. Choose **Upload** (drag and drop your `rolodx` folder)
4. Click **Deploy**
5. Vercel gives you a live URL like `rolodx-barrett.vercel.app`

That's it — you're live.

---

## Step 7 — Add yourself as the first contact (optional but good for demo)

1. Open your live URL + `/join.html`
2. Fill in your own details
3. Open `/admin.html`, sign in, approve yourself
4. You're the first entry in the network

---

## Your pages

| Page | URL | Who sees it |
|---|---|---|
| Browse network | `/index.html` | Everyone |
| Apply to join | `/join.html` | Anyone wanting to be listed |
| Admin dashboard | `/admin.html` | You only |

---

## Custom domain (optional, later)

In Vercel > your project > **Settings > Domains**, add any domain you own.
`rolodx.co.za` or `barrett.network` or anything you like.

---

## What happens when someone applies

1. They fill in `/join.html` — saved to Supabase as `pending`
2. You see it in `/admin.html` under **Pending**
3. You click **Approve** — they instantly appear on the network
4. Or **Reject** — they stay hidden

---

## Sharing the link

Just share your Vercel URL. The curator bar at the top makes it immediately clear it's your network. Every connect button pre-fills a WhatsApp message mentioning your name.
