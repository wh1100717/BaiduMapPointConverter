'use strict'

mountFolder = (connect, dir) ->
    connect.static require('path').resolve(dir)

module.exports = (grunt) ->
  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks)

  Config =
    src: 'src'
    dist : 'dist'
  grunt.initConfig
    bmpc: Config
    coffee:
      dist:
        files: [
          expand: true
          cwd: '<%= bmpc.src %>'
          src: '{,*/}*.coffee'
          dest: '<%= bmpc.dist %>'
          ext: '.js'
        ]
    uglify:
      build:
        src: '<%=bmpc.dist %>/bmpointconverter.js'
        dest: '<%=bmpc.dist %>/bmpointconverter.min.js'
    mochaTest:
      test: 
        options: 
          reporter: 'spec'
          compilers: 'coffee:coffee-script'
        src: ['test/**/*.coffee']

    grunt.registerTask 'default', [
      'mochaTest'
      'coffee'
      'uglify'
    ]