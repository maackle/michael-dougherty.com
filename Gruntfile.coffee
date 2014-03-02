module.exports = (grunt) ->

	port = 1337
	lrPort = 37281

	# Project configuration.
	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')

		config:
			app: 'app'
			dist: 'www'

		connect:
			server:
				options:
					port: port
					base: '<%= config.dist %>'
					livereload: lrPort

		watch:
			options: 
				livereload: lrPort
			coffee:
				files: ["<%= config.app %>/coffee/*.coffee"]
				tasks: ['coffee']
			compass:
				files: ["<%= config.app %>/sass/*.{sass,scss}"]
				tasks: ['compass']
			jade:
				files: ['<%= config.app %>/{,**}/*.jade']
				tasks: ['jade']

		coffee:
			options:
				join: true
			compile:
				files:
					"<%= config.dist %>/assets/scripts/main.js": [
						"<%= config.app %>/coffee/*.coffee",
					] # // compile and concat into single file

		compass:
			dist:
				options:
					require: 'susy'
					sassDir: "<%= config.app %>/sass/",
					cssDir: "<%= config.dist %>/assets/styles/",
					environment: 'production'

		jade: {
            dist: {
                options: {
                    pretty: true
                },
                files: [{
                    expand: true,
                    cwd: '<%= config.app %>',
                    dest: "<%= config.dist %>",
                    src: '*.jade',
                    ext: '.html'
                }]
            }
        },

	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.loadNpmTasks('grunt-contrib-compass')
	grunt.loadNpmTasks('grunt-contrib-jade')
	grunt.loadNpmTasks('grunt-contrib-connect')
	grunt.loadNpmTasks('grunt-notify')

	#// Default task(s).
	grunt.registerTask 'default', [
		'build'
		'connect'
		'watch'
	]

	grunt.registerTask 'build', [
		'jade:dist'
		'coffee:compile'
		'compass:dist'
	]