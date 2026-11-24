# Check in browser before committing

After making changes that affect how pages render — templates, CSS, Liquid, layout — ask to check in the browser (the local dev server, or `./publish.sh preview` for the production build) before committing. Don't assume changes work correctly because the code looks right.

A commit does not publish; the next `./publish.sh deploy` does (`posting-guide.md` § Publishing), and it takes everything committed. The cost of checking is low; the cost of a broken layout on the live site is not.
