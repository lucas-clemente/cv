var pickFiles = require('broccoli-funnel');
var mergeTrees = require('broccoli-merge-trees');
var compileSass = require('broccoli-sass');

var publicFiles = 'public';

var cssFiles = compileSass(
  [
    'styles',
    'bower_components/bootstrap-sass/assets/stylesheets',
    'bower_components/font-awesome/scss'
  ],
  'app.scss',
  'app.css',
  {'outputStyle': 'compressed'}
);

var fontFiles = pickFiles('bower_components/font-awesome/fonts', {
  srcDir: '/',
  destDir: '/fonts'
});

var trees = [cssFiles, publicFiles, fontFiles];

module.exports = mergeTrees(trees);
