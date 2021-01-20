# Magic Globals
Similar to Magic Constants in PHP.  Useful for debugging.

[![npm version](https://badge.fury.io/js/magic-globals.svg)](http://badge.fury.io/js/magic-globals)
[![gluten](https://img.shields.io/badge/gluten-free-green.svg?style=flat)](http://i.imgur.com/Kua978a.jpg)


## Usage
```js
// require this module without assigning export
require('magic-globals')

// you may now use additional global objects,
// in addition to built-ins: __filename and __dirname
console.log(__filename) // /home/node/myapp/server/server.js
console.log(__file) // server
console.log(__line) // 6
console.log(__fili) // /home/node/myapp/server/server.js:6
console.log(__ext) // js
console.log(__base) // /home/node/myapp
console.log(__func) // someFunction or (anonymous) 
console.log(__dirname) // /home/node/myapp/server
```

## Credits
These sources have helped to create this module by sharing their code:
* http://stackoverflow.com/questions/13591785/does-node-js-have-anything-like-file-and-line-like-the-c-preprocessor 
* http://stackoverflow.com/questions/11386492/accessing-line-number-in-v8-javascript-chrome-node-js 
* https://gist.github.com/lordvlad/ec81834ddff73aaa1ab0

## Alternatives
These are alternative projects which can yield achieve a similar result:
* https://www.npmjs.com/package/nor-debug
* https://www.npmjs.com/package/pitestglobals
* https://www.npmjs.com/package/magicmethods

## License

([The MIT License](http://opensource.org/licenses/MIT))
Copyright (c) 2015 Gavin Engel <<gavin@engel.com>>

