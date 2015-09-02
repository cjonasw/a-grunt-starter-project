# a-grunt-starter-project

Starter project using the following:

- grunt-svgstore
- grunt-contrib-sass
- grunt-contrib-jade
- grunt-contrib-watch
- grunt-contrib-connect

## Instructions

1. Install Node.js (for first timers)

  If you haven't installed Node on your system do so from here https://nodejs.org/

  Follow the install instructions.

  `npm` will then be assessable from the Command Prompt (Windows) / Terminal (Mac).

2. Open up Command Prompt (Windows) / Terminal (Mac) and run

  ```
  npm install -g grunt-cli
  ```

  This will install the grunt command line interface globally so that you can run `grunt` tasks from the command line.

3. Clone this repository

4. `cd` to the directory in command line

5. Install the node packages defined in this project (in 'package.json'):

  ```
  npm install
  ```

6. Run the `dev` grunt task that has been registered in this project:

  ```
  grunt dev
  ```

  This runs relevant compile tasks, starts a connect web server under port 9001 and watches for any files changes and livereloads.

  When files change their relevant compile task is run.

  ##### Compilers
    - `.svg` file changes inside of 'src/svg' will run the `svgstore` task.
    - `.scss` file changes inside of 'src' will run the `sass` task.
    - `.jade` file changes inside of 'src' will run the `jade` task.
7. Navigate to http://localhost:9001.
8. Change some files in 'src' directory and watch the magic happen...
9. Victory poo! 💩🎉

**Note:** It may require the browser to be opened with file web security off for the 'svg-defs.svg' 'ng-include' to work:

For Chrome it is:

**Mac OS**
`open -a Google\ Chrome --args --disable-web-security`

**PC**
`chrome.exe --disable-web-security`

**Linux**
`google-chrome --disable-web-security`
