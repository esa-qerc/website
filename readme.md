## source code for the QERC website

This repo contains ithe source code for the QERC website: [https://esa-qerc.github.io](https://esa-qerc.github.io)

The site is built using [Hugo](https://gohugo.io/) and served via GitHub Pages. The [`esa-qerc.github.io` GitHub repo](https://github.com/esa-qerc/esa-qerc.github.io) contains the files for the built website. Those should never be directly edited. Instead, this repo should be edited, and the site [deployed](#deploy).

### Deploy

To deploy the website, run `bash deploy.sh` from a terminal, with this repo as the working directory.

This will build the website, putting the resulting website files in the `public` directory. The `public` directory is a *git submodule*, corresponding to the [`esa-qerc.github.io` GitHub repo](https://github.com/esa-qerc/esa-qerc.github.io). The script then commits the changes to those files, and pushes them up to the `esa-qerc.github.io` Github repo so they can be rendered by Github pages.

### Edit profile

To add or edit your profile on the member profiles page, follow these instructions:

#### 1. fork this repository on github, by clicking on the fork button in the top right corner

#### 2. edit the `content/member_profiles/_index.md` file (either directly on Github or on your local machine) to add your information at the bottom of the file, in the following format:

```

## Your Name
 
{{< twitter your_twitter_username >}}
{{< facebook your_facebook_username >}}
{{< github your_github_username >}}
{{< website "https://your_website.com" >}}

Your, Research, Interests
---

``` 

Replace the name, usernames, website URL, and research interests with your information. Delete any of the media lines (e.g. delete the whole `{{< facebook your_facebook_username >}}`) if you don't have something to put there.

#### 3. open a pull request from your fork to the main repository

We'll then check the pull request, merge it in, and rebuild the website. 
