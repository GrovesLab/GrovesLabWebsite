module.exports = (grunt)->
  grunt.loadNpmTasks 'assemble'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-convert'

  grunt.initConfig
    convert:
      options:
        explicitArray: false
      csv2json:
        files: [
            expand: true
            cwd: 'src/data'
            src: ['*.csv']
            dest: 'src/data/json_generated/'
            ext: '.json'
        ]
    assemble:
      options:
        layoutdir: 'src/layouts'
        data: ['src/data/json_generated/*.json']
        partials: ['src/includes/**/*.hbs']
        helpers: ['src/helpers/*.js']
        flatten: true
        dest: 'mydist'
        removeHbsWhitespace: true
        minify:
          removeAttributeQuotes: true
          collapseWhitespace: true
      site:
        files:
          '..': ['src/pages/**/*.hbs']
    watch:
      assemble:
        files: ['src/**/*.hbs','src/data/*.csv','src/helpers/*.js']
        tasks: ['convert', 'assemble']

  grunt.registerTask 'default', ['watch']
