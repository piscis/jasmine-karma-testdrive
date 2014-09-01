module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    karma:
      unit:
        configFile: 'karma.conf.coffee'


  # Load Grunt modules
  grunt.loadNpmTasks('grunt-karma');

  # Default task(s).
  grunt.registerTask "default", [""]
  grunt.registerTask "test", ["karma"]
  return