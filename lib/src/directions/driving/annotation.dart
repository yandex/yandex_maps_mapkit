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

/// Information about an action.

final class DrivingActionMetadata {
  /// The length of the U-turn.
  ///
  final DrivingUturnMetadata? uturnMetadata;

  /// The number of the exit for leaving the roundabout.
  ///
  final DrivingLeaveRoundaboutMetadata? leaveRoundaboutMetadada;

  const DrivingActionMetadata({
    this.uturnMetadata,
    this.leaveRoundaboutMetadada,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([uturnMetadata, leaveRoundaboutMetadada]);

  @core.override
  core.bool operator ==(covariant DrivingActionMetadata other) {
    if (core.identical(this, other)) {
      return true;
    }
    return uturnMetadata == other.uturnMetadata &&
        leaveRoundaboutMetadada == other.leaveRoundaboutMetadada;
  }

  @core.override
  core.String toString() {
    return "DrivingActionMetadata(uturnMetadata: $uturnMetadata, leaveRoundaboutMetadada: $leaveRoundaboutMetadada)";
  }
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
  factory DrivingToponymPhrase(core.String text) =>
      DrivingToponymPhraseImpl(text);

  /// The string containing the description.
  core.String get text;

  @core.override
  core.int get hashCode => core.Object.hashAll([text]);

  @core.override
  core.bool operator ==(covariant DrivingToponymPhrase other) {
    if (core.identical(this, other)) {
      return true;
    }
    return text == other.text;
  }

  @core.override
  core.String toString() {
    return "DrivingToponymPhrase(text: $text)";
  }
}

/// The annotation that is displayed on the map.
abstract final class DrivingAnnotation implements ffi.Finalizable {
  factory DrivingAnnotation(
          directions_driving_action.DrivingAction? action,
          core.String? toponym,
          core.String descriptionText,
          DrivingActionMetadata actionMetadata,
          core.List<directions_driving_landmark.DrivingLandmark> landmarks,
          DrivingToponymPhrase? toponymPhrase) =>
      DrivingAnnotationImpl(action, toponym, descriptionText, actionMetadata,
          landmarks, toponymPhrase);

  /// Driver action.
  ///
  directions_driving_action.DrivingAction? get action;

  /// The toponym of the location.
  ///
  core.String? get toponym;

  /// Description text to display.
  core.String get descriptionText;

  /// Action metadata.
  DrivingActionMetadata get actionMetadata;

  /// Significant landmarks.
  core.List<directions_driving_landmark.DrivingLandmark> get landmarks;

  /// The description of the object.
  ///
  DrivingToponymPhrase? get toponymPhrase;

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
