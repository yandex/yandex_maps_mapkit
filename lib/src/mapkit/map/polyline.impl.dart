part of 'polyline.dart';

@bindings_annotations.WeakInterface('mapkit.map.PolylineMapObject')
@bindings_annotations.ContainerData(
    toNative: 'PolylineMapObjectImpl.getNativePtr',
    toPlatform:
        '(val) => PolylineMapObjectImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PolylineMapObject')
class PolylineMapObjectImpl extends mapkit_map_map_object.MapObjectImpl
    implements PolylineMapObject, ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(_PolylineMapObject_free.cast());

  /// @nodoc
  PolylineMapObjectImpl.fromExternalPtr(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr);

  /// @nodoc
  @internal
  PolylineMapObjectImpl.fromNativePtrImpl(ffi.Pointer<ffi.Void> ptr)
      : super.fromExternalPtr(ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PolylineMapObjectImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PolylineMapObject? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PolylineMapObjectImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _PolylineMapObject_check(ptr);
  }

  @internal

  /// @nodoc
  static PolylineMapObject? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PolylineMapObjectImpl.fromNativePtr(ptr);
  }

  @core.override
  mapkit_geometry_geometry.Polyline get geometry {
    return mapkit_geometry_geometry.PolylineImpl.fromNativePtr(
        _PolylineMapObject_get_geometry(ptr));
  }

  @core.override
  set geometry(mapkit_geometry_geometry.Polyline val) {
    _PolylineMapObject_set_geometry(
        ptr, mapkit_geometry_geometry.PolylineImpl.getNativePtr(val));
  }

  @core.override
  core.double get strokeWidth {
    return _PolylineMapObject_get_strokeWidth(ptr);
  }

  @core.override
  set strokeWidth(core.double val) {
    _PolylineMapObject_set_strokeWidth(ptr, val);
  }

  @core.override
  core.double get gradientLength {
    return _PolylineMapObject_get_gradientLength(ptr);
  }

  @core.override
  set gradientLength(core.double val) {
    _PolylineMapObject_set_gradientLength(ptr, val);
  }

  @core.override
  ui.Color get outlineColor {
    return to_platform
        .toPlatformColor(_PolylineMapObject_get_outlineColor(ptr));
  }

  @core.override
  set outlineColor(ui.Color val) {
    _PolylineMapObject_set_outlineColor(ptr, to_native.toNativeColor(val));
  }

  @core.override
  core.double get outlineWidth {
    return _PolylineMapObject_get_outlineWidth(ptr);
  }

  @core.override
  set outlineWidth(core.double val) {
    _PolylineMapObject_set_outlineWidth(ptr, val);
  }

  @core.override
  core.bool get innerOutlineEnabled {
    return _PolylineMapObject_get_innerOutlineEnabled(ptr);
  }

  @core.override
  set innerOutlineEnabled(core.bool val) {
    _PolylineMapObject_set_innerOutlineEnabled(ptr, val);
  }

  @core.override
  core.double get turnRadius {
    return _PolylineMapObject_get_turnRadius(ptr);
  }

  @core.override
  set turnRadius(core.double val) {
    _PolylineMapObject_set_turnRadius(ptr, val);
  }

  @core.override
  core.double get arcApproximationStep {
    return _PolylineMapObject_get_arcApproximationStep(ptr);
  }

  @core.override
  set arcApproximationStep(core.double val) {
    _PolylineMapObject_set_arcApproximationStep(ptr, val);
  }

  @core.override
  core.double get dashLength {
    return _PolylineMapObject_get_dashLength(ptr);
  }

  @core.override
  set dashLength(core.double val) {
    _PolylineMapObject_set_dashLength(ptr, val);
  }

  @core.override
  core.double get gapLength {
    return _PolylineMapObject_get_gapLength(ptr);
  }

  @core.override
  set gapLength(core.double val) {
    _PolylineMapObject_set_gapLength(ptr, val);
  }

  @core.override
  core.double get dashOffset {
    return _PolylineMapObject_get_dashOffset(ptr);
  }

  @core.override
  set dashOffset(core.double val) {
    _PolylineMapObject_set_dashOffset(ptr, val);
  }

  void select(ui.Color selectionColor,
      mapkit_geometry_geometry.Subpolyline subpolyline) {
    _PolylineMapObject_select(ptr, to_native.toNativeColor(selectionColor),
        mapkit_geometry_geometry.SubpolylineImpl.toNative(subpolyline));
  }

  void hide(mapkit_geometry_geometry.Subpolyline subpolyline) {
    _PolylineMapObject_hide(
        ptr, mapkit_geometry_geometry.SubpolylineImpl.toNative(subpolyline));
  }

  void hideMultiple(
      core.List<mapkit_geometry_geometry.Subpolyline> subpolylines) {
    _PolylineMapObject_hideMultiple(
        ptr,
        mapkit_geometry_geometry.SubpolylineContainerExtension.toNativeVector(
            subpolylines));
  }

  void setStrokeColorsWithWeights({
    required core.List<core.int> colors,
    required core.List<core.double> weights,
  }) {
    _PolylineMapObject_setStrokeColorsWithWeights(
        ptr,
        to_native.toNativeVectorUint32(colors),
        to_native.toNativeVectorDouble(weights));
  }

  void setStrokeColors(core.List<core.int> colors) {
    _PolylineMapObject_setStrokeColors(
        ptr, to_native.toNativeVectorUint32(colors));
  }

  void setPaletteColor(
    ui.Color color, {
    required core.int colorIndex,
  }) {
    _PolylineMapObject_setPaletteColor(
      ptr,
      colorIndex,
      to_native.toNativeColor(color),
    );
  }

  ui.Color getPaletteColor(core.int colorIndex) {
    return to_platform
        .toPlatformColor(_PolylineMapObject_getPaletteColor(ptr, colorIndex));
  }

  void setStrokeColor(ui.Color color) {
    _PolylineMapObject_setStrokeColor(ptr, to_native.toNativeColor(color));
  }

  core.int getStrokeColor(core.int segmentIndex) {
    return _PolylineMapObject_getStrokeColor(ptr, segmentIndex);
  }

  mapkit_map_arrow.Arrow addArrow(
    mapkit_geometry_geometry.PolylinePosition position,
    ui.Color fillColor, {
    required core.double length,
  }) {
    return mapkit_map_arrow.ArrowImpl.fromNativePtr(_PolylineMapObject_addArrow(
      ptr,
      mapkit_geometry_geometry.PolylinePositionImpl.toNative(position),
      length,
      to_native.toNativeColor(fillColor),
    ));
  }

  core.List<mapkit_map_arrow.Arrow> arrows() {
    return mapkit_map_arrow.ArrowContainerExtension.toPlatformVector(
        _PolylineMapObject_arrows(ptr));
  }
}

final _PolylineMapObject_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PolylineMapObject_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_geometry')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PolylineMapObject_set_geometry = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_geometry')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_strokeWidth = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_strokeWidth')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_strokeWidth = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_strokeWidth')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_gradientLength = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_gradientLength')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_gradientLength = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_gradientLength')
        .asFunction();

final native_types.NativeColor Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_outlineColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeColor Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_outlineColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _PolylineMapObject_set_outlineColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_outlineColor')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_outlineWidth = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_outlineWidth')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_outlineWidth = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_outlineWidth')
        .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _PolylineMapObject_get_innerOutlineEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_get_innerOutlineEnabled')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _PolylineMapObject_set_innerOutlineEnabled = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_set_innerOutlineEnabled')
    .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_turnRadius = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_turnRadius')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_turnRadius = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_turnRadius')
        .asFunction();

final core.double Function(
    ffi
        .Pointer<ffi.Void>) _PolylineMapObject_get_arcApproximationStep = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_get_arcApproximationStep')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .double) _PolylineMapObject_set_arcApproximationStep = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_set_arcApproximationStep')
    .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_dashLength = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_dashLength')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_dashLength = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_dashLength')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_gapLength = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_gapLength')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_gapLength = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_gapLength')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_get_dashOffset = lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_get_dashOffset')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _PolylineMapObject_set_dashOffset = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_dashOffset')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor,
        mapkit_geometry_geometry.SubpolylineNative) _PolylineMapObject_select =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        native_types.NativeColor,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_select')
        .asFunction();
final void Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.SubpolylineNative)
    _PolylineMapObject_hide = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_hide')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PolylineMapObject_hideMultiple = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_hideMultiple')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _PolylineMapObject_setStrokeColorsWithWeights = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_map_PolylineMapObject_setStrokeColorsWithWeights')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PolylineMapObject_setStrokeColors = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_setStrokeColors')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int, native_types.NativeColor)
    _PolylineMapObject_setPaletteColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32,
                        native_types.NativeColor)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_setPaletteColor')
        .asFunction();
final native_types.NativeColor Function(ffi.Pointer<ffi.Void>, core.int)
    _PolylineMapObject_getPaletteColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeColor Function(
                        ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_getPaletteColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _PolylineMapObject_setStrokeColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_setStrokeColor')
        .asFunction();
final core.int Function(ffi.Pointer<ffi.Void>, core.int)
    _PolylineMapObject_getStrokeColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Uint32 Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_getStrokeColor')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>,
        mapkit_geometry_geometry.PolylinePositionNative,
        core.double,
        native_types.NativeColor) _PolylineMapObject_addArrow =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.PolylinePositionNative,
                        ffi.Float,
                        native_types.NativeColor)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_addArrow')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _PolylineMapObject_arrows = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_arrows')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _PolylineMapObject_set =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_mapkit_map_PolylineMapObject_set_')
        .asFunction(isLeaf: true);
