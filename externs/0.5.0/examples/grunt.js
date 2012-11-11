/*global module:false*/
module.exports = function(grunt) {

	grunt.initConfig({
		meta: {
			version: '0.1.0',
			banner: '/*! EaselHx - v<%= meta.version %> - ' + '<%= grunt.template.today("yyyy-mm-dd") %>\n' + '* https://github.com/Fintan/easelhx/\n' + '* Copyright (c) <%= grunt.template.today("yyyy") %> ' + 'Licensed MIT */'
		},
		lint: {
			files: ['grunt.js']
		},
		concat: {
			bargraph: {
				src: ['../js/*.js', 'build/bargraph.js'],
				dest: 'dist/bargraph.js'
			},
			localtoglobal: {
				src: ['../js/*.js', 'build/localtoglobal.js'],
				dest: 'dist/localtoglobal.js'
			},
			globaltolocal3: {
				src: ['../js/*.js', 'resources/assets/SimpleBall.js',  'build/globaltolocal3.js'],
				dest: 'dist/globaltolocal3.js'
			},
			matrixtest: {
				src: ['../js/*.js', 'build/matrixtest.js'],
				dest: 'dist/matrixtest.js'
			},
			cacheasbitmap: {
				src: ['../js/*.js', 'build/cacheasbitmap.js'],
				dest: 'dist/cacheasbitmap.js'
			},
			simplespritesheet: {
				src: ['../js/*.js', 'build/simplespritesheet.js'],
				dest: 'dist/simplespritesheet.js'
			},
			draganddrop: {
				src: ['../js/*.js', 'build/draganddrop.js'],
				dest: 'dist/draganddrop.js'
			}
		},
		min: {
			bargraph: {
				src: ['<banner:meta.banner>', '<config:concat.bargraph.dest>'],
				dest: 'dist/bargraph.js'
			},
			localtoglobal: {
				src: ['<banner:meta.banner>', '<config:concat.localtoglobal.dest>'],
				dest: 'dist/localtoglobal.js'
			},
			globaltolocal3: {
				src: ['<banner:meta.banner>', '<config:concat.globaltolocal3.dest>'],
				dest: 'dist/globaltolocal3.js'
			},
			matrixtest: {
				src: ['<banner:meta.banner>', '<config:concat.matrixtest.dest>'],
				dest: 'dist/matrixtest.js'
			},
			cacheasbitmap: {
				src: ['<banner:meta.banner>', '<config:concat.cacheasbitmap.dest>'],
				dest: 'dist/cacheasbitmap.js'
			},
			simplespritesheet: {
				src: ['<banner:meta.banner>', '<config:concat.simplespritesheet.dest>'],
				dest: 'dist/simplespritesheet.js'
			},
			draganddrop: {
				src: ['<banner:meta.banner>', '<config:concat.draganddrop.dest>'],
				dest: 'dist/draganddrop.js'
			}
		},
		watch: {
			files: '<config:lint.files>',
			tasks: 'lint qunit'
		},
		jshint: {
			options: {
				curly: true,
				eqeqeq: true,
				immed: true,
				latedef: true,
				newcap: true,
				noarg: true,
				sub: true,
				undef: true,
				boss: true,
				eqnull: true,
				browser: true
			},
			globals: {
				console: false,
				jQuery: false,
				require: false,
				define: false
			}
		},
		uglify: {},
		clean: ["dist/*", "build/*"],
		copy: {
			dist: {
				files: {
					"dist/": "resources/**"
				}
			}
		},
		haxe: {
			easeljsdemos: {
				main:'',//gets replaced in output
				classpath: ['src', '../externs'],
				libs:['xirsys_stdjs'],
				misc:["--js-modern"],
				output: {
					bargraphdemo: {
						main: 'demos.easel.BarGraphTest',
						output: 'build/bargraph.js'
					},
					localtoglobal: {
						main: 'demos.easel.LocalToGlobalTest',
						output: 'build/localtoglobal.js'
					},
					matrixtest: {
						main: 'demos.easel.MatrixTest',
						output: 'build/matrixtest.js'
					},
					cacheasbitmap: {
						main: 'demos.easel.CacheAsBitmapTest',
						output: 'build/cacheasbitmap.js'
					},
					simplespritesheet: {
						main: 'demos.easel.SimpleSpriteSheetTest',
						output: 'build/simplespritesheet.js'
					},
					draganddrop: {
						main: 'demos.easel.DragAndDropTest',
						output: 'build/draganddrop.js'
					},
					globaltolocal3: {
						main: 'demos.easel.GlobalToLocal3Test',
						output: 'build/globaltolocal3.js'
					}
				}
			}
		}
	});

	grunt.loadNpmTasks('grunt-haxe');
	grunt.loadNpmTasks('grunt-contrib-clean');
	grunt.loadNpmTasks('grunt-contrib-copy');

	// Default task.
	grunt.registerTask('default', 'lint concat min');
	grunt.registerTask('hx', 'clean copy:dist haxe:easeljsdemos concat min');

};
