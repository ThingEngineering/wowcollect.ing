# WoW Collecting

Explain what this is. Link to Hugo, Docsy, etc.

## Running the website locally

Install the [prerequisites][]: Node.js and npm (minimum versions enforced at
install time), plus Go and Git. Hugo itself comes from the pinned
[hugo-extended][] npm package. On Windows, npm scripts run under Bash (which
ships with [Git for Windows](https://gitforwindows.org/)): make sure `bash` is
on your `PATH`.

From the repo root folder, install the site's dependencies:

```bash
npm run install:safe
```

This performs a clean, script-free install of the pinned dependencies; the Hugo
binary self-installs at first use. For dependency management (lockfile,
generated theme manifest, Hugo updates), see the [maintainer notes][].

Then run:

```bash
npm run serve
```

Run Hugo through the npm scripts, as above: they put the [Dart Sass][] `sass`
CLI from `node_modules` on the `PATH`; a direct `hugo` invocation fails without
it.

<!-- cSpell:ignore hugo docsy -->
