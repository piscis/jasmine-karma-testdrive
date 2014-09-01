module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    karma:
      unit:
        configFile: 'karma.conf.coffee'
    casperjs:
      options:
        async:
          parallel: false
      files: [
        'test/front/**/*.coffee'
      ]
    mocha_casperjs:
      options:
        timeout: 5000
        color: false
      files:
        src: ['test/front/**/*.coffee']
    webdriver:
      login:
        tests: ['test/front/**/*.coffee']
        options:
          desiredCapabilities:
            browserName: "chrome"


  # Load Grunt modules
  grunt.loadNpmTasks('grunt-karma');
  grunt.loadNpmTasks('grunt-casperjs');
  grunt.loadNpmTasks('grunt-mocha-casperjs');
  grunt.loadNpmTasks('grunt-webdriver');

  # Default task(s).
  grunt.registerTask "default", [""]
  #grunt.registerTask "test", ["karma"]
  grunt.registerTask "test", ["webdriver"]

  return