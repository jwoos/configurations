var gulp = require('gulp');

var plumber = require('gulp-plumber');
var rename = require('gulp-rename');
var del = require('del');
var jade = require('gulp-jade');
var jaded = require('jade');
var sass = require('gulp-sass');
var sourceMap = require('gulp-sourcemaps');
var autoprefixer = require('gulp-autoprefixer');
var csslint = require('gulp-csslint');
var jshint = require('gulp-jshint');
var stylish = require('jshint-stylish');
var imagemin = require('gulp-imagemin');
var browserSync = require('browser-sync');
var wiredep = require('wiredep').stream;

gulp.task('clean:srv', function() {
	return del(['.tmp/**/*']);
});

gulp.task('clean:dist', function() {
	return del(['dist/**/*']);
});

gulp.task('jade:srv', function() {
	return gulp.src('src/*.jade')
		.pipe(plumber())
		.pipe(jade({
			pretty: '\t',
			jade: jaded
		}))
		.pipe(gulp.dest('.tmp/'));
});

gulp.task('jade:dist', function() {
	return gulp.src('src/*.jade')
		.pipe(plumber())
		.pipe(jade({
			jade: jaded
		}))
		.pipe(gulp.dest('dist/'));
});

gulp.task('html:srv', function() {
	return gulp.src('src/*.html')
		.pipe(plumber())
		.pipe(gulp.dest('.tmp/'));
});

gulp.task('html:dist', function() {
	return gulp.src('src/*.html')
		.pipe(plumber())
		.pipe(gulp.dest('dist/'));
});

gulp.task('sass:srv', function() {
	return gulp.src('src/styles/**/*.sass')
		.pipe(plumber())
		.pipe(sourceMap.init())
		.pipe(sass({
			indentedSyntax: true,
			indentType: 'tab',
			sourceComments: true
		}))
		.pipe(csslint())
		.pipe(csslint.reporter())
		.pipe(autoprefixer())
		.pipe(gulp.dest('.tmp/styles/'))
		.pipe(sourceMap.write('.tmp/styles/'))
		.pipe(browserSync.stream());
});

gulp.task('sass:dist', function() {
	return gulp.src('src/styles/**/*.sass')
		.pipe(plumber())
		.pipe(sass({
			indentedSyntax: true,
			indentType: 'tab',
			outputStyle: 'compressed'
		}))
		.pipe(autoprefixer())
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(gulp.dest('dist/styles/'));
});

gulp.task('js:srv', function() {
	return gulp.src('src/scripts/**/*.js')
		.pipe(plumber())
		.pipe(jshint({
			esversion: 6
		}))
		.pipe(jshint.reporter(stylish))
		.pipe(gulp.dest('.tmp/scripts/'));
});

gulp.task('js:dist', function() {
	return gulp.src('src/scripts/**/*.js')
		.pipe(plumber())
		.pipe(jshint({
			esversion: 6
		}))
		.pipe(jshint.reporter(stylish))
		.pipe(uglify())
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(gulp.dest('dist/scripts/'));
});

gulp.task('images:srv', function() {
	return gulp.src('src/assets/images/**/*')
		.pipe(plumber())
		.pipe(gulp.dest('.tmp/assets/images/'));
});

gulp.task('images:dist', function() {
	return gulp.src('src/assets/images/**/*')
		.pipe(plumber())
		.pipe(imagemin())
		.pipe(gulp.dest('dist/assets/images/'))
});

gulp.task('fonts:srv', function() {
	return gulp.src('src/assets/fonts/**/*')
		.pipe(plumber())
		.pipe(gulp.dest('.tmp/assets/fonts/'));
});

gulp.task('fonts:dist', function() {
	return gulp.src('src/assets/fonts/**/*')
		.pipe(plumber())
		.pipe(gulp.dest('dist/assets/fonts/'));
});

gulp.task('wiredep:srv', function () {
	return gulp.src('./src/*.html')
		.pipe(wiredep())
		.pipe(gulp.dest('.tmp/'));
});

gulp.task('wiredep:dist', function () {
	return gulp.src('./src/*.html')
		.pipe(wiredep())
		.pipe(gulp.dest('dist/'));
});

//gulp.task('default', ['clean:srv', 'jade:srv', 'sass:srv', 'js:srv', 'images:srv', 'fonts:srv'], function() {
gulp.task('default', ['clean:srv', 'wiredep:srv', 'sass:srv', 'js:srv', 'images:srv', 'fonts:srv'], function() {
	browserSync.init({
		server: '.',
		notify: false
	});

	gulp.watch('src/*.jade', ['jade:srv', browserSync.reload]);
	gulp.watch('src/*.html', ['wiredep:srv', browserSync.reload]);
	gulp.watch('src/styles/**/*.sass', ['sass:srv']);
	gulp.watch('src/scripts/**/*.js', ['js:srv', browserSync.reload]);
	gulp.watch('src/assets/images/**/*', ['images:srv', browserSync.reload]);
	gulp.watch('src/assets/fonts/**/*', ['fonts:srv', browserSync.reload]);
});

//gulp.task('dist', ['clean:dist', 'jade:dist', 'sass:dist', 'js:dist', 'images:dist', 'fonts:dist']);
gulp.task('dist', ['clean:dist', 'wiredep:dist', 'sass:dist', 'js:dist', 'images:dist', 'fonts:dist']);

// TODO fix gulp-jade
// TODO add wiredep
