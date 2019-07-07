Buffer
===

The goal is to use `UInt8Array` as a buffer backend that completely follows the Node.JS API.

For now, however, this just aliases `Array` as `Buffer` which works for many use cases.

Current Implementation
---

    var Buffer;
    (function () {
      "use strict";

      function createBuffer() {
        return Array;
      }

      if ('undefined' === typeof Buffer) {
        Buffer = createBuffer();
      }

      module.exports = Buffer;
    }());
