var gulp = require('gulp');
var sass = require('gulp-sass');
var notify = require('gulp-notify');
var autoprefixer = require('gulp-autoprefixer');

gulp.task('compileSass', function() {
	gulp.src('./app/assets/scss/*.scss')
	.pipe(sass()
	.on('error', function(err) {
		notify().write(err);
		this.emit('end');
	}))
	.pipe(autoprefixer({
		browsers: ['last 2 versions'],
		cascade: false
	}))
	.pipe(gulp.dest('./app/assets/css'))
	.pipe(notify('It worked!'));
});

gulp.task('watch', function() {
	gulp.watch('./app/assets/scss/**/*.scss', ['compileSass']);
});

gulp.task('build', ['compileSass']);
