import 'dart:ffi' as ffi;
import 'package:yandex_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_mapkit/src/directions/driving/action.dart'
    as directions_driving_action;
import 'package:yandex_maps_mapkit/src/directions/driving/landmark.dart'
    as directions_driving_landmark;

part 'annotation.containers.dart';
part 'annotation.impl.dart';

/// The length of the U-turn.

final class DrivingUturnMetadata {
  /// The length of the turn.
  final core.double length;

  const DrivingUturnMetadata({
    required this.length,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([length]);

  @core.override
  core.bool operator ==(covariant DrivingUturnMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return length == other.length;
  }

  @core.override
  core.String toString() {
    return "DrivingUturnMetadata(length: $length)";
  }
}

/// The number of the exit for leaving the roundabout.

final class DrivingLeaveRoundaboutMetadata {
  /// The exit number.
  final core.int exitNumber;

  const DrivingLeaveRoundaboutMetadata({
    required this.exitNumber,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([exitNumber]);

  @core.override
  core.bool operator ==(covariant DrivingLeaveRoundaboutMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return exitNumber == other.exitNumber;
  }

  @core.override
  core.String toString() {
    return "DrivingLeaveRoundaboutMetadata(exitNumber: $exitNumber)";
  }
}

final class DrivingTurnMetadata {
  /// The turn number.
  final core.int turnNumber;

  const DrivingTurnMetadata({
    required this.turnNumber,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([turnNumber]);

  @core.override
  core.bool operator ==(covariant DrivingTurnMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return turnNumber == other.turnNumber;
  }

  @core.override
  core.String toString() {
    return "DrivingTurnMetadata(turnNumber: $turnNumber)";
  }
}

final class DrivingExitMetadata {
  /// The number in the sequence of consecutive exits.
  ///
  final core.int? sequentialNumber;

  /// Determines whether it is necessary to annotate the exit number in the
  /// imm stage.
  ///
  final core.int? numerationProximityMask;

  const DrivingExitMetadata({
    this.sequentialNumber,
    this.numerationProximityMask,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([sequentialNumber, numerationProximityMask]);

  @core.override
  core.bool operator ==(covariant DrivingExitMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return sequentialNumber == other.sequentialNumber &&
        numerationProximityMask == other.numerationProximityMask;
  }

  @core.override
  core.String toString() {
    return "DrivingExitMetadata(sequentialNumber: $sequentialNumber, numerationProximityMask: $numerationProximityMask)";
  }
}

final class DrivingActionMetadata {
  const DrivingActionMetadata.fromUturnMetadata(
      DrivingUturnMetadata uturnMetadata)
      : _value = uturnMetadata;

  const DrivingActionMetadata.fromLeaveRoundaboutMetadata(
      DrivingLeaveRoundaboutMetadata leaveRoundaboutMetadata)
      : _value = leaveRoundaboutMetadata;

  const DrivingActionMetadata.fromTurnMetadata(DrivingTurnMetadata turnMetadata)
      : _value = turnMetadata;

  const DrivingActionMetadata.fromExitMetadata(DrivingExitMetadata exitMetadata)
      : _value = exitMetadata;

  DrivingUturnMetadata? asUturnMetadata() {
    if (_value is DrivingUturnMetadata) {
      return _value;
    }
    return null;
  }

  DrivingLeaveRoundaboutMetadata? asLeaveRoundaboutMetadata() {
    if (_value is DrivingLeaveRoundaboutMetadata) {
      return _value;
    }
    return null;
  }

  DrivingTurnMetadata? asTurnMetadata() {
    if (_value is DrivingTurnMetadata) {
      return _value;
    }
    return null;
  }

  DrivingExitMetadata? asExitMetadata() {
    if (_value is DrivingExitMetadata) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(DrivingUturnMetadata value) onUturnMetadata,
    required void Function(DrivingLeaveRoundaboutMetadata value)
        onLeaveRoundaboutMetadata,
    required void Function(DrivingTurnMetadata value) onTurnMetadata,
    required void Function(DrivingExitMetadata value) onExitMetadata,
  }) {
    if (_value is DrivingUturnMetadata) {
      return onUturnMetadata(_value as DrivingUturnMetadata);
    }
    if (_value is DrivingLeaveRoundaboutMetadata) {
      return onLeaveRoundaboutMetadata(
          _value as DrivingLeaveRoundaboutMetadata);
    }
    if (_value is DrivingTurnMetadata) {
      return onTurnMetadata(_value as DrivingTurnMetadata);
    }
    if (_value is DrivingExitMetadata) {
      return onExitMetadata(_value as DrivingExitMetadata);
    }
    assert(false);
  }

  final core.dynamic _value;
}

/// The identifier of the annotation scheme.
enum DrivingAnnotationSchemeID {
  /// Small annotation.
  Small,

  /// Medium annotation.
  Medium,

  /// Large annotation.
  Large,

  /// Highway annotation.
  Highway,
  ;
}

/// The description of the object.
abstract final class DrivingToponymPhrase implements ffi.Finalizable {
  factory DrivingToponymPhrase(core.String text, core.int? actionProximity) =>
      DrivingToponymPhraseImpl(text, actionProximity);

  DrivingToponymPhrase._();

  /// The string containing the description.
  core.String get text;

  /// Positions at which text should be pronounced.
  ///
  core.int? get actionProximity;

  @core.override
  core.int get hashCode => core.Object.hashAll([text, actionProximity]);

  @core.override
  core.bool operator ==(covariant DrivingToponymPhrase other) {
    if (core.identical(this, other)) {
      return true;
    }
    return text == other.text && actionProximity == other.actionProximity;
  }

  @core.override
  core.String toString() {
    return "DrivingToponymPhrase(text: $text, actionProximity: $actionProximity)";
  }
}

/// The annotation that is displayed on the map.
abstract final class DrivingAnnotation implements ffi.Finalizable {
  factory DrivingAnnotation(
          directions_driving_action.DrivingAction? action,
          core.String? toponym,
          core.String descriptionText,
          DrivingActionMetadata? actionMetadata,
          core.List<directions_driving_landmark.DrivingLandmark> landmarks,
          core.List<DrivingToponymPhrase> toponymPhrase) =>
      DrivingAnnotationImpl(action, toponym, descriptionText, actionMetadata,
          landmarks, toponymPhrase);

  DrivingAnnotation._();

  /// Driver action.
  ///
  directions_driving_action.DrivingAction? get action;

  /// The toponym of the location.
  ///
  core.String? get toponym;

  /// Description text to display.
  core.String get descriptionText;

  /// Action metadata.
  ///
  DrivingActionMetadata? get actionMetadata;

  /// Significant landmarks.
  core.List<directions_driving_landmark.DrivingLandmark> get landmarks;

  /// Toponym phrases with positions for pronunciation.
  core.List<DrivingToponymPhrase> get toponymPhrase;

  @core.override
  core.int get hashCode => core.Object.hashAll([
        action,
        toponym,
        descriptionText,
        actionMetadata,
        landmarks,
        toponymPhrase
      ]);

  @core.override
  core.bool operator ==(covariant DrivingAnnotation other) {
    if (core.identical(this, other)) {
      return true;
    }
    return action == other.action &&
        toponym == other.toponym &&
        descriptionText == other.descriptionText &&
        actionMetadata == other.actionMetadata &&
        landmarks == other.landmarks &&
        toponymPhrase == other.toponymPhrase;
  }

  @core.override
  core.String toString() {
    return "DrivingAnnotation(action: $action, toponym: $toponym, descriptionText: $descriptionText, actionMetadata: $actionMetadata, landmarks: $landmarks, toponymPhrase: $toponymPhrase)";
  }
}
