const mix = require('laravel-mix');
const glob = require('glob');
const path = require('path');
const ReplaceInFileWebpackPlugin = require('replace-in-file-webpack-plugin');
const rimraf = require('rimraf');


// 3rd party plugins css/js
mix.sass('resources/assets/plugins/plugins.scss', 'public/assets/css/plugins.bundle.css')
    .then(() => {
        // remove unused preprocessed fonts folder
        rimraf(path.resolve('public/fonts'), () => {});
        rimraf(path.resolve('public/images'), () => {});
    })
    .sourceMaps(!mix.inProduction())
    // .setResourceRoot('./')
    .options({processCssUrls: false})
    .js(['resources/assets/plugins/plugins.js'], 'public/assets/js/plugins.bundle.js');

// Metronic css/js
mix.sass('resources/assets/theme/sass/theme.scss', 'public/assets/css/theme.bundle.css', {
        sassOptions: {includePaths: ['node_modules']},
    })
    .sass('resources/assets/theme/sass/theme.skins.scss', 'public/assets/css/theme.skins.bundle.css', {
        sassOptions: {includePaths: ['node_modules']},
    })
    .sourceMaps(!mix.inProduction())
    .options({processCssUrls: false})
    .js('resources/assets/theme/js/theme.js', 'public/assets/js/theme.bundle.js');

mix.webpackConfig({
    plugins: [
        new ReplaceInFileWebpackPlugin([
            {
                // rewrite font paths
                dir: path.resolve('public/assets/css'),
                test: /\.css$/,
                rules: [
                    {
                        // fontawesome
                        search: /url\((\.\.\/)?webfonts\/(fa-.*?)"?\)/g,
                        replace: 'url(./fonts/@fortawesome/$2)',
                    },
                ],
            },
        ]),
    ],
});

// BASE
mix.styles([ 
        'resources/assets/src/css/base.css',
    ], 'public/assets/css/base.bundle.css')
    .js('resources/assets/src/js/base.js', 'public/assets/js/base.bundle.js');

// MODULE
mix.styles([
        'resources/assets/src/css/modules.css',
    ], 'public/assets/css/modules.bundle.css')
    .js('resources/assets/src/js/modules.js', 'public/assets/js/modules.bundle.js');
