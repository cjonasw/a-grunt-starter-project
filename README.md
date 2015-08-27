# grunt-scss-jade-svgstore-starter-project

Basic project using grunt-svgstore, grunt-contrib-sass, grunt-contrib-jade and grunt-contrib-watch.

```
npm install
grunt dev
```

This then watches for any files to change and livereloads.

`.svg` file changes inside of 'src/svg' will run the `svgstore` task.
`.scss` file changes inside of 'src' will run the `sass` task.
`.jade` file changes inside of 'src' will run the `jade` task.

Navigate to 'target/index.html' in a browser. It may require the browser to be opened with file web security off:

For Chrome it is:

*Mac OS*
`open -a Google\ Chrome --args --disable-web-security`

*PC*
`chrome.exe --disable-web-security`

*Linux*
`google-chrome --disable-web-security`
