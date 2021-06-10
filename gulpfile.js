'use strict', gulp = require('gulp');

var handlebars = require('gulp-handlebars'),
    wrap = require('gulp-wrap'),
    declare = require('gulp-declare'),
    sourcemaps = require('gulp-sourcemaps'),
    concat = require('gulp-concat'),
    del = require('del'),
    rev = require('gulp-rev'),
    uglify = require('gulp-uglify'),
    minifycss = require('gulp-minify-css'),
    revCollector = require('gulp-rev-collector'),
    disPath = "dist",
    gulpSequence = require('gulp-sequence'),
    replace = require('gulp-replace'),
    rename = require('gulp-rename'),
    watch = require('gulp-watch'),
    stripDebug = require('gulp-strip-debug'),
    vinylPaths = require('vinyl-paths'),
    less = require('gulp-less'),
    babel = require('gulp-babel');

//todo json保存src结构方便调用
const lessFile = ['static/component/**/*.less'];


gulp.task('default', (cb) => {
    gulpSequence('less', cb);
});
gulp.task('all', ['default', 'move_static'], () => {});


//less编译
gulp.task('less', () => {
    gulp.src(lessFile, {
            base: 'static'
        })
        .pipe(less())
        .pipe(gulp.dest('static'));
});

gulp.task('w', ['less'], function() {
    gulp.watch(lessFile, ['less']);
});

//js转码
gulp.task('es', () => {
    return gulp.src('static/component/**/*.js')
        .pipe(babel({
            presets: ['es2015']
        }))
        .pipe(gulp.dest('dist/component'));
});


//删除文件 test

gulp.task('clean_all', (cb) => {
    return del([
        'dist/**/*',
    ], cb);
});

gulp.task('clean', (cb) => {
    return del(['dist/static/component/**/js/*.js', 'dist/static/component/**/js/*.map', 'dist/static/component/**/css/*.css', 'dist/static/component/**/css/*.map', ],
        cb);
    //return cb;
});
