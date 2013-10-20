module.exports = (grunt) ->

	# Project configuration.
	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')

		watch:
			options:
				livereload: true
			coffee:
				files: ['src/coffee/**/*.coffee']
				tasks: ['coffee']
			compass:
				files: ['src/sass/**/*.{sass,scss}']
				tasks: ['compass']
			jade:
				files: ['*.jade']
				tasks: ['jade']

		coffee:
			options:
				join: true
			compile:
				files:
					'www/assets/javascripts/main.js': [
						# 'src/coffee/main.coffee',
					] # // compile and concat into single file

		compass:
			dist:
				options:
					sassDir: 'src/sass/',
					cssDir: 'www/assets/stylesheets/',
					environment: 'production'

		jade: {
            dist: {
                options: {
                    pretty: true
                },
                files: [{
                    expand: true,
                    cwd: '',
                    dest: 'www',
                    src: '*.jade',
                    ext: '.html'
                }]
            }
        },

	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.loadNpmTasks('grunt-contrib-compass')
	grunt.loadNpmTasks('grunt-contrib-jade')
	grunt.loadNpmTasks('grunt-notify')

	#// Default task(s).
	grunt.registerTask 'default', [
		'coffee:compile'
		'compass:dist'
		'watch'
	]