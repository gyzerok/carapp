module.exports = function(grunt) {

  grunt.config.set('jade', {
    dev: {
      files: [{
        expand: true,
        cwd: 'assets/templates/',
        src: ['*.jade'],
        dest: '.tmp/public/templates/',
        ext: '.hbs'
      }]
    }
  });

  grunt.loadNpmTasks('grunt-contrib-jade');
};