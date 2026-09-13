# chess-but-better
fun site i made vibecoding

## GitHub Pages

This site deploys automatically from `main` using [GitHub Pages](https://pages.github.com/).

In the repository settings, open **Pages**, set **Source** to **GitHub Actions**, and push to `main`. The workflow in `.github/workflows/pages.yml` publishes the repository root.

## Supabase setup

Run [`supabase-schema.sql`](supabase-schema.sql) once in the Supabase SQL Editor. The site uses the public anon key in the frontend and stores shared friends, chat, feed posts, and room data in `chess_shared_store`.
