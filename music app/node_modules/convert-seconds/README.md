# convert-seconds 

> Convert seconds to hours, minutes, seconds

[![Build Status](https://travis-ci.org/radiovisual/convert-seconds.svg)](https://travis-ci.org/radiovisual/convert-seconds)

## Install

```
$ npm install --save convert-seconds
```

## Usage

Pass in seconds (as a `number` or `string`), and get an object in return:

```js
var convert = require('convert-seconds');

convert(3661);
// => { hours: 1, minutes: 1, seconds: 1 }

convert(3661).hours;
// => 1

convert('3661').minutes;
// => 1

convert(3661).seconds;
// => 1
```

## License

MIT @ [Michael Wuergler](http://www.numetriclabs.com)


