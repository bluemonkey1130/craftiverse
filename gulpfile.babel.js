'use strict';

import gulp from 'gulp';
import sass from 'gulp-sass';
import plumber from 'gulp-plumber';
import prefix from 'gulp-autoprefixer';
import rename from 'gulp-rename';
import concat from 'gulp-concat';
import uglify from 'gulp-uglify';
import notify from 'gulp-notify';

import autoprefixer from 'gulp-autoprefixer';
import sourcemaps from 'gulp-sourcemaps';

var onError = function (err) {
    notify.onError({
        title: "Gulp",
        subtitle: "Failure!",
        message: "Error: <%= error.message %>",
        sound: "Basso"
    })(err);
    this.emit('end');
};

var sassOptions = {
    outputStyle: 'expanded'
};
var prefixerOptions = {
    browsers: ['last 2 versions']
};


const dirs = {
    src: 'web/assets',
    dest: 'web/assets'
};

const sassPaths = {
    src: `${dirs.src}/scss/style.scss`,
    dest: `${dirs.dest}`
};


gulp.task('sass', function () {
    return gulp.src(sassPaths.src)
        .pipe(plumber({errorHandler: onError}))
        .pipe(sourcemaps.init())
        .pipe(sass(sassOptions)) // Converts Sass to CSS with gulp-sass
        .pipe(prefix(prefixerOptions))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(sassPaths.dest));
});


const jsPaths = {
    src: `${dirs.src}/js/**/*.js`,
    dest: `${dirs.dest}`
};


// PROCESS JAVASCRIPT
gulp.task('js', function () {
    return gulp.src(jsPaths.src)
        .pipe(plumber({errorHandler: onError}))
        .pipe(concat('bundle.js'))
        .pipe(uglify())
        // .pipe(rename({suffix: '.min'}))
        .pipe(gulp.dest(jsPaths.dest));
});





