// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.71.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

abstract class Rust {
  Future<XelisKeyPair> createKeyPair({String? seed, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateKeyPairConstMeta;

  Future<void> setNetworkToMainnet({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetNetworkToMainnetConstMeta;

  Future<void> setNetworkToTestnet({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetNetworkToTestnetConstMeta;

  Future<void> setNetworkToDev({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetNetworkToDevConstMeta;

  Future<String> getAddressMethodXelisKeyPair(
      {required XelisKeyPair that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetAddressMethodXelisKeyPairConstMeta;

  Future<String> getSeedMethodXelisKeyPair(
      {required XelisKeyPair that, required int languageIndex, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetSeedMethodXelisKeyPairConstMeta;

  Future<Signature> signMethodXelisKeyPair(
      {required XelisKeyPair that, required String data, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSignMethodXelisKeyPairConstMeta;

  Future<bool> verifySignatureMethodXelisKeyPair(
      {required XelisKeyPair that,
      required String hash,
      required Signature signature,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kVerifySignatureMethodXelisKeyPairConstMeta;

  Future<int> getEstimatedFeesMethodXelisKeyPair(
      {required XelisKeyPair that,
      required String address,
      required int amount,
      required String asset,
      required int nonce,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kGetEstimatedFeesMethodXelisKeyPairConstMeta;

  Future<String> createTxMethodXelisKeyPair(
      {required XelisKeyPair that,
      required String address,
      required int amount,
      required String asset,
      required int balance,
      required int nonce,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateTxMethodXelisKeyPairConstMeta;

  DropFnType get dropOpaqueKeyPair;
  ShareFnType get shareOpaqueKeyPair;
  OpaqueTypeFinalizer get KeyPairFinalizer;

  DropFnType get dropOpaqueSignature;
  ShareFnType get shareOpaqueSignature;
  OpaqueTypeFinalizer get SignatureFinalizer;
}

@sealed
class KeyPair extends FrbOpaque {
  final Rust bridge;
  KeyPair.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueKeyPair;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueKeyPair;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.KeyPairFinalizer;
}

@sealed
class Signature extends FrbOpaque {
  final Rust bridge;
  Signature.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueSignature;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueSignature;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.SignatureFinalizer;
}

class XelisKeyPair {
  final Rust bridge;
  final KeyPair keyPair;

  const XelisKeyPair({
    required this.bridge,
    required this.keyPair,
  });

  Future<String> getAddress({dynamic hint}) =>
      bridge.getAddressMethodXelisKeyPair(
        that: this,
      );

  Future<String> getSeed({required int languageIndex, dynamic hint}) =>
      bridge.getSeedMethodXelisKeyPair(
        that: this,
        languageIndex: languageIndex,
      );

  Future<Signature> sign({required String data, dynamic hint}) =>
      bridge.signMethodXelisKeyPair(
        that: this,
        data: data,
      );

  Future<bool> verifySignature(
          {required String hash, required Signature signature, dynamic hint}) =>
      bridge.verifySignatureMethodXelisKeyPair(
        that: this,
        hash: hash,
        signature: signature,
      );

  Future<int> getEstimatedFees(
          {required String address,
          required int amount,
          required String asset,
          required int nonce,
          dynamic hint}) =>
      bridge.getEstimatedFeesMethodXelisKeyPair(
        that: this,
        address: address,
        amount: amount,
        asset: asset,
        nonce: nonce,
      );

  Future<String> createTx(
          {required String address,
          required int amount,
          required String asset,
          required int balance,
          required int nonce,
          dynamic hint}) =>
      bridge.createTxMethodXelisKeyPair(
        that: this,
        address: address,
        amount: amount,
        asset: asset,
        balance: balance,
        nonce: nonce,
      );
}
