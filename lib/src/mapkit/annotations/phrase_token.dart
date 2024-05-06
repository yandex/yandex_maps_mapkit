import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'phrase_token.containers.dart';
part 'phrase_token.impl.dart';

enum SpeakerPhraseToken {
  /// Cardinal numbers
  One,
  Two,
  Three,
  Four,
  Five,
  Six,
  Seven,
  Eight,
  Nine,
  Ten,
  Eleven,
  Twelve,
  Thirteen,
  Fourteen,
  Fifteen,
  Sixteen,
  Seventeen,
  Eighteen,
  Nineteen,
  Twenty,
  Thirty,
  Forty,
  Fifty,
  Sixty,
  Seventy,
  Eighty,
  Ninety,
  OneHundred,
  TwoHundred,
  ThreeHundred,
  FourHundred,
  FiveHundred,
  SixHundred,
  SevenHundred,
  EightHundred,
  NineHundred,
  OneHundredExactly,

  /// Arabic numbers in genitive case
  ArOneGenitive,
  ArTwoGenitive,
  ArThreeGenitive,
  ArFourGenitive,
  ArFiveGenitive,
  ArSixGenitive,
  ArSevenGenitive,
  ArEightGenitive,
  ArNineGenitive,
  ArTenGenitive,
  ArElevenGenitive,
  ArTwelveGenitive,
  ArThirteenGenitive,
  ArFourteenGenitive,
  ArFifteenGenitive,
  ArSixteenGenitive,
  ArSeventeenGenitive,
  ArEighteenGenitive,
  ArNineteenGenitive,
  ArTwentyGenitive,
  ArThirtyGenitive,
  ArFortyGenitive,
  ArFiftyGenitive,
  ArSixtyGenitive,
  ArSeventyGenitive,
  ArEightyGenitive,
  ArNinetyGenitive,
  ArOneHundredGenitive,
  ArTwoHundredGenitive,
  ArThreeHundredGenitive,
  ArFourHundredGenitive,
  ArFiveHundredGenitive,
  ArSixHundredGenitive,
  ArSevenHundredGenitive,
  ArEightHundredGenitive,
  ArNineHundredGenitive,

  /// Spanish twenties
  EsTwentyOne,
  EsTwentyTwo,
  EsTwentyThree,
  EsTwentyFour,
  EsTwentyFive,
  EsTwentySix,
  EsTwentySeven,
  EsTwentyEight,
  EsTwentyNine,

  /// Armenian special two-digit numbers
  HyTwentyTwo,
  HyTwentyThree,
  HyThirtyTwo,
  HyThirtyThree,
  HyFortyTwo,
  HyFortyThree,
  HyFiftyTwo,
  HyFiftyThree,
  HySixtyTwo,
  HySixtyThree,
  HySeventyTwo,
  HySeventyThree,
  HyEightyTwo,
  HyEightyThree,
  HyNinetyTwo,
  HyNinetyThree,

  /// Ordinal numbers
  First,
  Second,
  Third,
  Fourth,
  Fifth,
  Sixth,
  Seventh,
  Eighth,
  Ninth,
  Tenth,
  Eleventh,
  Twelfth,

  /// Distance unit
  Kilometer,
  Kilometers,
  Kilometers_2_4,
  Meter,
  Meters,
  Meters_2_4,

  /// Arabic distance unit
  ArKilometerSingularNominative,
  ArKilometerSingularGenitive,
  ArKilometerSingularAccusative,
  ArKilometerDualNominative,
  ArKilometerDualGenitive,
  ArKilometerPluralGenitive,
  ArMeterSingularNominative,
  ArMeterSingularGenitive,
  ArMeterSingularAccusative,
  ArMeterDualNominative,
  ArMeterDualGenitive,
  ArMeterPluralGenitive,

  /// Linking words
  Then,

  /// Prepositions
  Over,

  /// Conjunctions
  And,

  /// Auxiliary words
  Ahead,
  Attention,

  /// Manoeuvres
  Straight,
  WalkStraight,
  EnterRoundabout,
  RouteWillFinish,
  RouteFinished,
  PedestrianRouteFinished,
  HardTurnLeft,
  HardTurnRight,
  TakeLeft,
  TakeRight,
  TurnBack,
  TurnLeft,
  TurnRight,
  BoardFerry,
  Exit,

  /// Landmarks
  AfterBridge,
  AfterTunnel,
  AtTrafficLights,
  BeforeBridge,
  BeforeTrafficLights,
  BeforeTunnel,
  IntoCourtyard,
  IntoTunnel,
  ToBridge,
  ToFrontageRoad,

  /// Rows
  AtLeft,
  AtRight,
  AtMiddle,
  AndRight,
  AndMiddle,
  LaneLocative,

  /// Speed limits & camera
  SpeedCamera,
  SpeedLimitCamera,
  LaneCamera,
  Speed30,
  Speed40,
  Speed50,
  Speed60,
  Speed70,
  Speed80,
  Speed90,
  Speed100,
  Speed110,
  Speed120,
  Speed130,

  /// Additional camera types
  Camera,
  RoadMarkingCamera,
  CrossRoadCamera,
  ForbiddenStopCamera,
  MobileCamera,

  /// Events
  Accident,
  Reconstruction,
  Danger,
  OvertakingDanger,
  PedestrianDanger,
  CrossroadDanger,
  RouteUpdated,
  RouteUpdatedToTollRoad,
  GoneOffRoute,
  SpeedLimitExceeded,
  ReturnedOnRoute,
  WayPointPassed,
  PedestrianWaypointPassed,
  FasterRouteAvailable,
  ParkingRouteAvailable,
  TollRoadAhead,
  SchoolAhead,

  /// Speed bumps
  SpeedBumpAhead,
  SeveralSpeedBumpsAhead,

  /// Railway crossings
  RailwayCrossingAhead,

  /// Pedestrian landmarks
  Crosswalk,

  /// Underpass entrance
  IntoUnderpass,

  /// Underpass exit
  OutOfUnderpass,

  /// Overpass entrance
  IntoOverpass,

  /// Overpass exit
  OutOfOverpass,

  /// Lanes annotations
  TakeLeftLane,
  TakeMiddleLane,
  TakeRightLane,
  TakeSecondLeftLane,
  TakeSecondRightLane,
  TakeThirdLeftLane,
  TakeThirdRightLane,
  TakeLeftLanes,
  TakeMiddleLanes,
  TakeRightLanes,

  /// Walking the stairs
  StairsUp,
  StairsDown,

  /// Stairs of unknown direction
  Stairs,

  /// Dismount from vehicle
  Dismount,

  /// special phrases for turning on special road type (for bicycle)
  OntoPedestrianRoad,
  OntoBicycleRoad,
  OntoAutoRoad,

  /// Tokens for masstransit navigation
  GetOffAtTheStop,
  YourStopIsComingSoon,
  TravelToTheStop,
  TakeTheBus,
  TakeTheMinibus,
  TakeTheRailway,
  TakeTheSuburban,
  TakeTheTram,
  TakeTheTrolleybus,
  TakeTheUnderground,
  TakeTheWaterTransport,
  TakeTheTransport,

  /// Language-specific In numbers ending in 1 (except 1 and ..11): 21,
  /// ..., 91, 101, 121, etc.
  AndOne,

  /// 'take' in 'take exit/roundabout' with feminine or masculine article
  /// (fr: prenez la/le, it: prendi la)
  ExitTurn_Fem,
  ExitTurn_Masc,

  /// 'left/right' without 'turn' (fr: à gauche, it: a destra)
  GetLeft,
  GetRight,

  /// 'roundabout' without an article, like in 'roundabout in 100 meters'
  /// or after ExitTurn_Fem/Masc
  Roundabout,

  /// Plural for LaneLocative
  LanesLocative,

  /// Short for 'exit, turn' (it: esci)
  DoExit,

  /// Special form of AfterTunnel for languages, where different form
  /// should be used with distance
  Tunnel,

  /// Special form of AfterBridge for languages, where different form
  /// should be used with distance
  Bridge,
  ;
}
