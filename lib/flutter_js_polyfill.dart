library flutter_js_polyfill;

import "dart:js" as dartjs;

Function/*=F*/ allowInterop/*<F extends Function>*/(Function/*=F*/ f) {
  return dartjs.allowInterop(f);
}

class JsObject implements dartjs.JsObject {
  // The wrapped dart:js JsObject.
  final dartjs.JsObject _jsObject;

  JsObject._(this._jsObject);

  factory JsObject(dartjs.JsFunction constructor, [List arguments]) {
    return new JsObject._(new dartjs.JsObject(constructor, arguments));
  }

  factory JsObject.fromBrowserObject(object) {
    return new JsObject._(new dartjs.JsObject.fromBrowserObject(object));
  }

  factory JsObject.jsify(object) {
    return new JsObject._(new dartjs.JsObject.jsify(object));
  }

  dynamic operator [](property) {
    return _jsObject[property];
  }

  operator []=(property, value) {
    _jsObject[property] = value;
  }

  int get hashCode => _jsObject.hashCode;

  bool operator ==(other) => _jsObject == other;

  bool hasProperty(property) {
    return _jsObject.hasProperty(property);
  }

  void deleteProperty(property) {
    _jsObject.deleteProperty(property);
  }

  bool instanceof(dartjs.JsFunction type) {
    return _jsObject.instanceof(type);
  }

  String toString() {
    return _jsObject.toString();
  }

  dynamic callMethod(method, [List args]) {
    return _jsObject.callMethod(method, args);
  }
}
