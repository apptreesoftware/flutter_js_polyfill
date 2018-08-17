library flutter_js_polyfill;

import "dart:js" as dartjs;

F allowInterop<F extends Function>(F f) {
  return dartjs.allowInterop(f);
}
