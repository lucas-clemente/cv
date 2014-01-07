module.exports = (grunt) ->
  grunt.initConfig
    sass:
      dist:
        options:
          style: 'expanded'
        files:
          'css/share.css': 'scss/share.scss'
          'css/print.css': 'scss/print.scss'

    watch:
      css:
        files: ['scss/*.scss']
        tasks: ['sass']
        options:
          livereload: true
      html:
        files: ['index.html']
        options:
          livereload: true

  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['sass']
