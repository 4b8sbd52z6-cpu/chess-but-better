create table if not exists public.chess_shared_store (
  key text primary key,
  value jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.chess_shared_store enable row level security;

drop policy if exists "public can read chess shared data" on public.chess_shared_store;
create policy "public can read chess shared data"
  on public.chess_shared_store for select
  to anon, authenticated
  using (true);

drop policy if exists "public can insert chess shared data" on public.chess_shared_store;
create policy "public can insert chess shared data"
  on public.chess_shared_store for insert
  to anon, authenticated
  with check (true);

drop policy if exists "public can update chess shared data" on public.chess_shared_store;
create policy "public can update chess shared data"
  on public.chess_shared_store for update
  to anon, authenticated
  using (true)
  with check (true);

drop policy if exists "public can delete chess shared data" on public.chess_shared_store;
create policy "public can delete chess shared data"
  on public.chess_shared_store for delete
  to anon, authenticated
  using (true);