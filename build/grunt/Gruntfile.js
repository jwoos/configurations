module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		
		// clean: {},
		// compress: {},
		
		/*
		concat: {
			options: {
				sourceMap: true
			},
			developmentjs: {
				options: {
					separator: ';'
				},
				files: [
					{src: ['src/js/*.js'], dest: '.tmp/js/script.js'}
				]
			},
			productionjs: {
				options: {
					separator: ';'
				},
				files: [
					{src: ['src/js/*.js'], dest: 'dist/js/script.js'}
				]
			}
		},
		*/

		connect: {
			options: {
				port: 2000,
				protocol: 'http',
				hostname: '0.0.0.0'
			},
			development: {
				options: {
					base: '.tmp/'
				}
			},
			production: {
				options: {
					base: 'dist/'
				}
			}
		},

		copy: {
			options: {
				mode: true,
				timestamp: false
			},
			development: {
				files: [
					{expand: true, src: ['src/assets/**/*.!{jpg, png, gif}'], dest: '.tmp/'}
				]
			},
			production: {
				files: [
					{expand: true, src: ['src/assets/**/*.!{jpg, png, gif}'], dest: 'dest/'}
				]
			},
		},

		cssmin: {
			options: {
				report: 'min',
				sourceMap: false
			},
			production: {
				files: [
					{expand: true, src: ['.tmp/css/*.'], dest: 'dest/css/style.min.css'}
				]
			}
		},

		htmlmin: {
			options: {
				removeComments: true,
				removeAttributeQuotes: true,
				removeRedundantAttirbutes: true,
				useShortDoctype: true,
				removeEmptryAttributes: true,
				removeScriptTypeAttributes: true,
				removeStyleLinkTypeAttributes: true,
				removeOptionalTags: true,
				caseSensitive: true
			},
			development: {
				files: [
					{src: ['src/*.html'], dest: '.tmp/'}
				]
			},
			production: {
				files: [
					{src: ['src/*.html'], dest: 'dist/'}
				]
			}
		},

		imagemin: {
			options: {
				optimizationLevel: 3,
				progressive: true,
				interalced: true,
				use: null
			},
			development: {
				files: [
					{expand: true, cwd: 'src/', src: ['assets/**/*.{png, jpg, gif}'], dest: '.tmp/'}
				]
			},
			production: {
				files: [
					{expand: true, cwd: 'src/', src: ['assets/**/*.{png, jpg, gif}'], dest: 'dist/'}
				]
			}
		},

		jshint: {
			options: {
				globals: null,
				jshintrc: null,
				// list of non .js files to check
				extensions: '',
				// list of files and directories to ignore
				ignores: null,
				force: false,
				// modify output
				reporter: require('jshint-stylish'),
				// filepath to output the results of the reporter, writes to filepath instead of stdout
				reporterOutput: null
			},
			development: {
				src: ['src/js/*.js']
			}
		},

		sass: {
			options: {
				sourcemap: 'auto',
				trace: true,
				precision: 5
			},

			development: {
				options: {
					style: 'nested'
				},
				files: [
					{src: ['src/sass/*.sass'], dest: '.tmp/css/'}
				]
			}
		},

		uglify: {},

		watch: {}
	});

	// grunt.loadNpmTasks('grunt-contrib-clean');
	// grunt.loadNpmTasks('grunt-contrib-compress');
	// grunt.loadNpmTasks('grunt-contrib-concat');
	grunt.loadNpmTasks('grunt-contrib-connect');
	grunt.loadNpmTasks('grunt-contrib-copy');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-htmlmin');
	grunt.loadNpmTasks('grunt-contrib-imagemin');
	grunt.loadNpmTasks('grunt-contrib-jshint');
	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-watch');
};
