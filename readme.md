## source code for the QERC website

This repo contains ithe source code for the QERC website: [https://esa-qerc.github.io](https://esa-qerc.github.io)

The site is built using [Hugo](https://gohugo.io/) and served via GitHub Pages. The [`esa-qerc.github.io` GitHub repo](https://github.com/esa-qerc/esa-qerc.github.io) contains the files for the built website. Those should never be directly edited. Instead, this repo should be edited, and the site [deployed](#deploy).

### Deploy

To deploy the website, run `bash deploy.sh` from a terminal, with this repo as the working directory.

This will build the website, putting the resulting website files in the `public` directory. The `public` directory is a *git submodule*, corresponding to the [`esa-qerc.github.io` GitHub repo](https://github.com/esa-qerc/esa-qerc.github.io). The script then commits the changes to those files, and pushes them up to the `esa-qerc.github.io` Github repo so they can be rendered by Github pages.

