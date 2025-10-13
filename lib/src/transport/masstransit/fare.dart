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
import 'package:yandex_maps_mapkit/src/mapkit/money.dart' as mapkit_money;

part 'fare.containers.dart';
part 'fare.impl.dart';

final class MasstransitPaymentMedia {
  /// string which identifies the current media, can be used to select
  /// icons im maps application.
  final core.String id;

  /// Localized name of the media, which is used for payment.
  ///
  final core.String? name;

  /// Type of media, which is used for payment.
  final MasstransitPaymentMediaMediaType type;

  const MasstransitPaymentMedia(
    this.type, {
    required this.id,
    this.name,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        id,
        name,
        type,
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitPaymentMedia other) {
    if (core.identical(this, other)) {
      return true;
    }
    return id == other.id && name == other.name && type == other.type;
  }

  @core.override
  core.String toString() {
    return "MasstransitPaymentMedia(id: $id, name: $name, type: $type, )";
  }
}

enum MasstransitPaymentMediaMediaType {
  Unknown,
  Cash,
  PaperTicket,
  TransitCard,

  /// Bank cards, pay services in mobile phones - apple-pay, google-pay
  /// etc.
  ContactlessPaymentDevice,
  MobileApplication,
  ;
}

final class MasstransitPayment {
  /// Contains information about the payment media.
  ///
  final MasstransitPaymentMedia? paymentMedia;

  /// Cost of travel in the vehicle.
  final mapkit_money.TaxiMoney price;

  const MasstransitPayment(
    this.price, {
    this.paymentMedia,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([
        paymentMedia,
        price,
      ]);

  @core.override
  core.bool operator ==(covariant MasstransitPayment other) {
    if (core.identical(this, other)) {
      return true;
    }
    return paymentMedia == other.paymentMedia && price == other.price;
  }

  @core.override
  core.String toString() {
    return "MasstransitPayment(paymentMedia: $paymentMedia, price: $price, )";
  }
}

final class MasstransitSectionPaymentOption {
  final MasstransitPayment? payment;

  const MasstransitSectionPaymentOption({
    this.payment,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([payment]);

  @core.override
  core.bool operator ==(covariant MasstransitSectionPaymentOption other) {
    if (core.identical(this, other)) {
      return true;
    }
    return payment == other.payment;
  }

  @core.override
  core.String toString() {
    return "MasstransitSectionPaymentOption(payment: $payment)";
  }
}

abstract final class MasstransitRoutePaymentOption implements ffi.Finalizable {
  factory MasstransitRoutePaymentOption(core.List<MasstransitPayment> payment,
          core.List<mapkit_money.TaxiMoney> totalPrice) =>
      MasstransitRoutePaymentOptionImpl(payment, totalPrice);

  MasstransitRoutePaymentOption._();

  core.List<MasstransitPayment> get payment;
  core.List<mapkit_money.TaxiMoney> get totalPrice;

  @core.override
  core.int get hashCode => core.Object.hashAll([payment, totalPrice]);

  @core.override
  core.bool operator ==(covariant MasstransitRoutePaymentOption other) {
    if (core.identical(this, other)) {
      return true;
    }
    return payment == other.payment && totalPrice == other.totalPrice;
  }

  @core.override
  core.String toString() {
    return "MasstransitRoutePaymentOption(payment: $payment, totalPrice: $totalPrice)";
  }
}
