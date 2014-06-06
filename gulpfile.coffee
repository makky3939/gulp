gulp = require "gulp"
coffee = require "gulp-coffee"
clean = require "gulp-clean"

gulp.task "coffee", ->
  gulp.src "src/coffee/*.coffee"
    .pipe coffee()
    .pipe gulp.dest "dst/js"

gulp.task "clean", ->
  gulp.src "dst"
    .pipe clean()

gulp.task "watch", ->
  gulp.watch "src/coffee/**", ["coffee"]

# Default task
gulp.task "default", ["clean", "coffee", "watch"]