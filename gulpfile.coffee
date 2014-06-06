gulp = require "gulp"
coffee = require "gulp-coffee"

gulp.task("coffee", ->
  gulp.src "src/coffee/**/*.coffee"
    .pipe coffee()
    .pipe gulp.dest "dst/js"
)

gulp.task("clean", ->
  gulp.src "dst"
    .pipe clean()
)

gulp.task("copy", ->
  gulp.src "src/images/**"
    .pipe gulp.dest "dst/images"
)

gulp.task("watch", ->
  gulp.watch("src/coffee/**", ->
    gulp.run "coffee"
  )
)

gulp.task( "default", ->
  gulp.run [
    "clean"
    "coffee"
    "copy"
    "watch"
  ]
)