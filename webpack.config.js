module.exports = {
    entry: './entry.js',
    output: {
	path: 'bundle/',
	filename: 'bundle.js',
	publicPath: 'bundle/',
	},
    module: {
	loaders: [
	    { test: /\.(tag)$/, loader: 'tag' },
            { test: /\.(woff|ttf|svg|eot|jpg)$/, loader: "file" },
            { test: /\.css$/, loader: "style!css" },
            { test: /\.coffee$/, loader: "coffee-loader" },
	    ]
	}
}
