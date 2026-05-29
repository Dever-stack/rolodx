-- Rolodx — Supabase Setup
-- Run this in your Supabase project: SQL Editor > New query > paste > Run

-- 1. Create the contacts table with constraints
create table if not exists contacts (
  id            uuid primary key default gen_random_uuid(),
  created_at    timestamptz default now(),
  first_name    text not null check (char_length(first_name) between 1 and 50),
  last_name     text not null check (char_length(last_name) between 1 and 50),
  role          text check (char_length(role) <= 100),
  business_name text check (char_length(business_name) <= 100),
  location      text check (char_length(location) <= 100),
  description   text check (char_length(description) <= 500),
  whatsapp      text check (whatsapp ~ '^[0-9]{7,15}$'),
  email         text check (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$'),
  linkedin      text check (char_length(linkedin) <= 200),
  website       text check (char_length(website) <= 200),
  categories    text[] default '{}' check (array_length(categories, 1) <= 3),
  status        text not null default 'pending'
    check (status in ('pending', 'approved', 'rejected'))
);

-- 2. Enable Row Level Security
alter table contacts enable row level security;

-- 3. Public (anonymous) can only read approved contacts
create policy "anon_select_approved"
  on contacts for select
  to anon
  using (status = 'approved');

-- 4. Authenticated users (Barrett) can read everything
create policy "auth_select_all"
  on contacts for select
  to authenticated
  using (true);

-- 5. Anyone can submit a new application — always inserts as pending
--    (DB constraint enforces this even if someone bypasses the form)
create policy "anon_insert_pending"
  on contacts for insert
  to anon
  with check (status = 'pending');

-- 6. Only authenticated users can update (approve/reject)
create policy "auth_update"
  on contacts for update
  to authenticated
  using (true)
  with check (true);

-- 7. Only authenticated users can delete
create policy "auth_delete"
  on contacts for delete
  to authenticated
  using (true);

-- 8. Index for fast status filtering
create index if not exists contacts_status_idx on contacts (status);
create index if not exists contacts_created_at_idx on contacts (created_at desc);

-- Done.
-- Next: go to Authentication > Users in your Supabase dashboard and create your admin account.
