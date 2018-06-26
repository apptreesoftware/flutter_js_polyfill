library flutter_js_polyfill;

import "dart:js" as dartjs;

Function/*=F*/ allowInterop/*<F extends Function>*/(Function/*=F*/ f) {
  return dartjs.allowInterop(f);
}
