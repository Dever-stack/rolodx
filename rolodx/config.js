// ─── Rolodx Configuration ────────────────────────────────────────────────────
// Fill in these values before deploying. See SETUP.md for instructions.

const ROLODX_CONFIG = {

  // Supabase — get these from your project Settings > API
  supabase: {
    url:     'https://rhdcnzvgtkwqbgovhprj.supabase.co',       // e.g. https://xxxx.supabase.co 
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJoZGNuenZndGt3cWJnb3ZocHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODAwNDU4NzEsImV4cCI6MjA5NTYyMTg3MX0.aXtHlgJ1iPr0ZLQzNKaLjDSPOdCha0yohoYah9LUi4I',  // safe to expose publicly
  },

  // Your personal details — shown prominently on the browse page
  owner: {
    initials:  'BA',
    name:      'Barrett Alexander',
    title:     'Founder, Alexander Tech',
    location:  'Cape Town, South Africa',
    bio:       'I built this to solve a problem I kept running into — someone asks "do you know anyone who does X?" and I\'d scramble to remember. Now I just send a link. Everyone here is someone I\'d personally vouch for.',
    whatsapp:  '',   // your number with country code, e.g. 27821234567
    linkedin:  '',   // your LinkedIn profile URL
  },

  // Categories shown as filter chips
  categories: [
    'Property',
    'Legal',
    'Marketing',
    'Technology',
    'Finance',
    'Creative',
    'Operations',
    'Health',
    'Education',
    'Other',
  ],

};
