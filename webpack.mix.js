const mix = require('laravel-mix');
const glob = require('glob');
const path = require('path');
const ReplaceInFileWebpackPlugin = require('replace-in-file-webpack-plugin');
const rimraf = require('rimraf');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

// Global jquery
// mix.autoload({
// 'jquery': ['$', 'jQuery'],
// Popper: ['popper.js', 'default'],
// });

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

// Custom 3rd party plugins
// (glob.sync('resources/assets/plugins/custom/**/*.js') || []).forEach(file => {
//     mix.js(file, `public/${file.replace('resources/', '').replace('.js', '.bundle.js')}`);
// });
// (glob.sync('resources/assets/plugins/custom/**/*.scss') || []).forEach(file => {
//     mix.sass(file, `public/${file.replace('resources/', '').replace('.scss', '.bundle.css')}`);
// });

// Metronic css pages (single page use)
// (glob.sync('resources/assets/theme/sass/pages/**/!(_)*.scss') || []).forEach(file => {
//     file = file.replace(/[\\\/]+/g, '/');
//     mix.sass(file, file.replace('resources/assets/theme/sass', 'public/assets/theme/css').replace(/\.scss$/, '.css'));
// });

// Metronic js pages (single page use)
// (glob.sync('resources/assets/theme/js/pages/**/*.js') || []).forEach(file => {
//     mix.js(file, `public/${file.replace('resources/assets/theme/', '')}`);
// });

// Metronic media
// mix.copyDirectory('resources/assets/theme/media', 'public/media');

// Metronic theme
// (glob.sync('resources/assets/theme/sass/skins/**/!(_)*.scss') || []).forEach(file => {
//     file = file.replace(/[\\\/]+/g, '/');
//     mix.sass(file, file.replace('resources/assets/theme/sass', 'public/assets/theme/css').replace(/\.scss$/, '.css')).sourceMaps(!mix.inProduction());
// });

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
                    // {
                    //     // flaticon
                    //     search: /url\(("?\.\/)?font\/(Flaticon\..*?)"?\)/g,
                    //     replace: 'url(./fonts/flaticon/$2)',
                    // },
                    // {
                    //     // flaticon2
                    //     search: /url\(("?\.\/)?font\/(Flaticon2\..*?)"?\)/g,
                    //     replace: 'url(./fonts/flaticon2/$2)',
                    // },
                    // {
                    //     // keenthemes fonts
                    //     search: /url\(("?\.\/)?(Ki\..*?)"?\)/g,
                    //     replace: 'url(./fonts/keenthemes-icons/$2)',
                    // },
                    // {
                    //     // lineawesome fonts
                    //     search: /url\(("?\.\.\/)?fonts\/(la-.*?)"?\)/g,
                    //     replace: 'url(./fonts/line-awesome/$2)',
                    // },
                    // {
                    //     // socicons
                    //     search: /url\(("?\.\.\/)?font\/(socicon\..*?)"?\)/g,
                    //     replace: 'url(./fonts/socicon/$2)',
                    // },
                    // {
                    //     // summernote
                    //     search: /url\(("?\.\.\/)?font\/(summernote\..*?)"?\)/g,
                    //     replace: 'url(./fonts/summernote/$2)',
                    // },
                ],
            },
        ]),
    ],
});

// // Webpack.mix does not copy fonts, manually copy
// (glob.sync('resources/metronic/plugins/**/*.+(woff|woff2|eot|ttf)') || []).forEach(file => {
//     var folder = file.match(/resources\/metronic\/plugins\/(.*?)\//)[1];
//     mix.copy(file, `public/plugins/global/fonts/${folder}/${path.basename(file)}`);
// });
// (glob.sync('node_modules/+(@fortawesome|socicon|line-awesome)/**/*.+(woff|woff2|eot|ttf)') || []).forEach(file => {
//     var folder = file.match(/node_modules\/(.*?)\//)[1];
//     mix.copy(file, `public/plugins/global/fonts/${folder}/${path.basename(file)}`);
// });

// // Optional: Import datatables.net
// mix.scripts([
//     'node_modules/datatables.net/js/jquery.dataTables.js',
//     'node_modules/datatables.net-bs4/js/dataTables.bootstrap4.js',
//     'node_modules/datatables.net-autofill/js/dataTables.autoFill.min.js',
//     'node_modules/datatables.net-autofill-bs4/js/autoFill.bootstrap4.min.js',
//     'node_modules/jszip/dist/jszip.min.js',
//     'node_modules/pdfmake/build/pdfmake.min.js',
//     'node_modules/pdfmake/build/vfs_fonts.js',
//     'node_modules/datatables.net-buttons/js/dataTables.buttons.min.js',
//     'node_modules/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js',
//     'node_modules/datatables.net-buttons/js/buttons.colVis.js',
//     'node_modules/datatables.net-buttons/js/buttons.flash.js',
//     'node_modules/datatables.net-buttons/js/buttons.html5.js',
//     'node_modules/datatables.net-buttons/js/buttons.print.js',
//     'node_modules/datatables.net-colreorder/js/dataTables.colReorder.min.js',
//     'node_modules/datatables.net-fixedcolumns/js/dataTables.fixedColumns.min.js',
//     'node_modules/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js',
//     'node_modules/datatables.net-keytable/js/dataTables.keyTable.min.js',
//     'node_modules/datatables.net-responsive/js/dataTables.responsive.min.js',
//     'node_modules/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js',
//     'node_modules/datatables.net-rowgroup/js/dataTables.rowGroup.min.js',
//     'node_modules/datatables.net-rowreorder/js/dataTables.rowReorder.min.js',
//     'node_modules/datatables.net-scroller/js/dataTables.scroller.min.js',
//     'node_modules/datatables.net-select/js/dataTables.select.min.js',
// ], 'public/plugins/custom/datatables/datatables.bundle.js');
// mix.styles([
//     'node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css',
//     'node_modules/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css',
//     'node_modules/datatables.net-autofill-bs4/css/autoFill.bootstrap4.min.css',
//     'node_modules/datatables.net-colreorder-bs4/css/colReorder.bootstrap4.min.css',
//     'node_modules/datatables.net-fixedcolumns-bs4/css/fixedColumns.bootstrap4.min.css',
//     'node_modules/datatables.net-fixedheader-bs4/css/fixedHeader.bootstrap4.min.css',
//     'node_modules/datatables.net-keytable-bs4/css/keyTable.bootstrap4.min.css',
//     'node_modules/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css',
//     'node_modules/datatables.net-rowgroup-bs4/css/rowGroup.bootstrap4.min.css',
//     'node_modules/datatables.net-rowreorder-bs4/css/rowReorder.bootstrap4.min.css',
//     'node_modules/datatables.net-scroller-bs4/css/scroller.bootstrap4.min.css',
//     'node_modules/datatables.net-select-bs4/css/select.bootstrap4.min.css',
// ], 'public/plugins/custom/datatables/datatables.bundle.css');

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
