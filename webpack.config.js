var webpack = require('webpack');
var ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {
    //插件项
    //所有文件都见自动引用，需在页面中加入该文件
    //将目标entry输出为独立文件
    //传入数组相当于执行多次语句
    plugins: [
        new webpack.optimize.CommonsChunkPlugin('vendor', './dist/bundle.js'),
        //new ExtractTextPlugin("./dist/[name].css")
        // new webpack.optimize.CommonsChunkPlugin('index', 'index.bundle.js')
    ],
    //页面入口文件配置
    entry: {
        index: './d/index.js',
        vendor: ['./d/jquery.js']
    },
    //入口文件输出配置
    output: {
        path: 'd/',
        filename: 'dist/[name].js'
    },

    module: {
        //加载器配置
        loaders: [
            { test: /\.css$/, loader: 'style-loader!css-loader' },
            { test: /\.js$/, loader: 'jsx-loader?harmony!babel-loader' },
            //{ test: /\.scss$/, loader: 'style!css!sass?sourceMap'},
            //{ test: /\.(png|jpg)$/, loader: 'url-loader?limit=8192'}
        ]
    },
    //其它解决方案配置
    //引用其他文件，简化访问require引用文件名长度
    //可用于插件载入
    resolve: {
        //查找module的话从这里开始查找
        root: 'E:/github/flux-example/src', //绝对路径
        //自动扩展文件后缀名，意味着我们require模块可以省略不写后缀名
        extensions: ['', '.js', '.json', '.scss'],
        //模块别名定义，方便后续直接引用别名，无须多写长长的地址
        alias: {
            AppStore : 'js/stores/AppStores.js',//后续直接 require('AppStore') 即可
            ActionType : 'js/actions/ActionType.js',
            AppAction : 'js/actions/AppAction.js'
        }
    }

};
