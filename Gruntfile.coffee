module.exports = (grunt) ->

  grunt.initConfig

    jade:
      dist: # Can be called whatever you want
        files: [ {
          expand: true
          cwd: 'src'
          src: '**/*.jade'
          dest: 'target'
          ext: '.html'
        } ]

    sass:
      dist: # Can be called whatever you want
        files: [ {
          expand: true
          cwd: 'src'
          src: '**/*.scss'
          dest: 'target'
          ext: '.css'
        } ]

    svgstore:

      # options:
      #   prefix: 'prefix-', # This will prefix each <g> ID

      default:
        files:
          'target/svg-defs.svg': ['src/svgs/**/*.svg']

    watch:

      options:
        livereload: true

      anything:
        files: [
          '**/*.*'
          '!svgs/**/*.svg'
        ]

      sass:
        files: [
          '**/*.scss'
        ]
        tasks: [
          'sass'
        ]

      jade:
        files: [
          '**/*.jade'
        ]
        tasks: [
          'jade'
        ]

      svg:
        files: [
          'src/**/*.svg'
        ]
        tasks: [
          'svgstore'
        ]

  grunt.registerTask 'dev', [
    'svgstore'
    'sass'
    'jade'
    'watch'
  ]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-svgstore'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-jade'
