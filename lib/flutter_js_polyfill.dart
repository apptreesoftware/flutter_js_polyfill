library flutter_js_polyfill;

import "dart:js" as dartjs;

Function/*=F*/ allowInterop/*<F extends Function>*/(Function/*=F*/ f) {
  return dartjs.allowInterop(f);
}

class JsObject extends dartjs.JsObject {
  factory JsObject(dartjs.JsFunction constructor, [List arguments]) =>
      new dartjs.JsObject(constructor, arguments);
  factory JsObject.jsify(object) => dartjs.JsObject.jsify(object);
}
