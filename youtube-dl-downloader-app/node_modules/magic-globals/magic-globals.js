/**
 * MAGIC GLOBALS
 * https://github.com/gavinengel/magic-globals
 */

/** begin setting magic properties into global (required for other functions) */
Object.defineProperty(global, '__stack', {
  get: function(){
    var orig = Error.prepareStackTrace;
    Error.prepareStackTrace = function(_, stack){ return stack; };
    var err = new Error;
    Error.captureStackTrace(err, arguments.callee);
    var stack = err.stack;
    Error.prepareStackTrace = orig;
    return stack;
  }
});

/** returns line number when placing this in your code: __line */
Object.defineProperty(global, '__line', {
  get: function(){
    return __stack[1].getLineNumber();
  }
});

/** return filename (without directory path or file extension) when placing this in your code: __file */
Object.defineProperty(global, '__file', {
  get: function(){
    var file_pieces = __stack[1].getFileName().split(/[\\\/]/).slice(-1)[0].split('.');
    return file_pieces.slice(0, file_pieces.length - 1).join('.');
  }
});

/** return file extension (without preceding period) when placing this in your code: __ext */
Object.defineProperty(global, '__ext', {
  get: function(){
    return __stack[1].getFileName().split('.').slice(-1)[0];
  }
});

/**
 * return current function
 * @source https://gist.github.com/lordvlad/ec81834ddff73aaa1ab0
 */
Object.defineProperty(global, '__func', {
    get: function(){
        return arguments.callee.caller && arguments.callee.caller.name || '(anonymous)';
    }
});

/** return base path of project */ 
Object.defineProperty(global, '__base', {
  get: function(){
    return process.cwd(); 
  }
});

/** returns filename, a colon, and line number when placing this in your code: __fili */
Object.defineProperty(global, '__fili', {
  get: function(){
    filid = ':'
    if ( typeof GLOBAL.__filid !== 'undefined' && GLOBAL.__filid )
    {
      filid = GLOBAL.__filid;
    }

    return __stack[1].getFileName() + filid + __stack[1].getLineNumber();
  }
});

