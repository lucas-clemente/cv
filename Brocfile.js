var pickFiles = require('broccoli-funnel');
var mergeTrees = require('broccoli-merge-trees');
var compileSass = require('broccoli-sass');

var publicFiles = 'public';

var cssFiles = compileSass(['styles'], 'app.scss', 'app.css');

module.exports = mergeTrees([cssFiles, publicFiles]);
