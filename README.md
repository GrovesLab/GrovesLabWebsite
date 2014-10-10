# How to keep the website updated

1. Use [Assemble](http://assemble.io/) for generating scientist page.
2. Currently, publication page has to be updated manually.

# How to generate the website

Prerequisite: Grunt, Assemble.

You can install them by running `npm install` in `assemble` folder.

## To update scientist page
1. Edit csv files under `assemble/src/data`
2. Run `grunt convert assemble`
    This generates JSON files under `json_generated` folder and those JSON files are used for generating HTML by .hbs files under `pages` folder. All of .hbs files use `layout/default.hbs` as a common template.
