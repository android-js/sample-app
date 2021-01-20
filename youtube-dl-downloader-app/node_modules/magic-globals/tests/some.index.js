/**
 * @example node ./tests/index.js
 */ 

require('../magic-globals');
o = console.log


o('*** NOT INSIDE A FUNCTION ***')
o('__file: ' + __file) 
o('__line: ' + __line)
o('__fili: ' + __fili)
o('__ext: ' + __ext) 
o('__base: ' + __base)
o('__filename: ' + __filename)
o('__dirname: ' + __dirname)
o('__func: ' + __func)
o('__stack: ' + __stack)

function someFunction() {
    o('\n*** INSIDE A FUNCTION ***')
    o('__file: ' + __file) 
    o('__line: ' + __line)
    o('__fili: ' + __fili)  
    o('__ext: ' + __ext) 
    o('__base: ' + __base)
    o('__filename: ' + __filename)
    o('__dirname: ' + __dirname)
    o('__func: ' + __func)
    o('__stack: ' + __stack)
}
someFunction();

o('\n*** EXPLORING __stack ***')
for (var i = 0; i < __stack.length; i++) {
    o('__stack[' + i + ']: ' + __stack[i])
}


o('\n*** CHILD COMMANDS ***')
// default __fili useful for copypaste to edit in Sublime.  To make things a smidge easier in vim, you can set the __fili delimiter
o('__fili for sublime text users:')
o(__fili)
GLOBAL.__filid = ' +'
o('__fili for vim users:')
o(__fili)
