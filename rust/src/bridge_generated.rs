#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.71.1.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_create_key_pair_impl(port_: MessagePort, seed: impl Wire2Api<Option<String>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "create_key_pair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_seed = seed.wire2api();
            move |task_callback| create_key_pair(api_seed)
        },
    )
}
fn wire_set_network_to_mainnet_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_network_to_mainnet",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(set_network_to_mainnet()),
    )
}
fn wire_set_network_to_testnet_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_network_to_testnet",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(set_network_to_testnet()),
    )
}
fn wire_set_network_to_dev_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_network_to_dev",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(set_network_to_dev()),
    )
}
fn wire_get_address__method__XelisKeyPair_impl(
    port_: MessagePort,
    that: impl Wire2Api<XelisKeyPair> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_address__method__XelisKeyPair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| XelisKeyPair::get_address(&api_that)
        },
    )
}
fn wire_get_seed__method__XelisKeyPair_impl(
    port_: MessagePort,
    that: impl Wire2Api<XelisKeyPair> + UnwindSafe,
    language_index: impl Wire2Api<usize> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_seed__method__XelisKeyPair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_language_index = language_index.wire2api();
            move |task_callback| XelisKeyPair::get_seed(&api_that, api_language_index)
        },
    )
}
fn wire_sign__method__XelisKeyPair_impl(
    port_: MessagePort,
    that: impl Wire2Api<XelisKeyPair> + UnwindSafe,
    data: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "sign__method__XelisKeyPair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_data = data.wire2api();
            move |task_callback| Ok(XelisKeyPair::sign(&api_that, api_data))
        },
    )
}
fn wire_verify_signature__method__XelisKeyPair_impl(
    port_: MessagePort,
    that: impl Wire2Api<XelisKeyPair> + UnwindSafe,
    hash: impl Wire2Api<String> + UnwindSafe,
    signature: impl Wire2Api<RustOpaque<Signature>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "verify_signature__method__XelisKeyPair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_hash = hash.wire2api();
            let api_signature = signature.wire2api();
            move |task_callback| {
                Ok(XelisKeyPair::verify_signature(
                    &api_that,
                    api_hash,
                    api_signature,
                ))
            }
        },
    )
}
fn wire_get_estimated_fees__method__XelisKeyPair_impl(
    port_: MessagePort,
    that: impl Wire2Api<XelisKeyPair> + UnwindSafe,
    address: impl Wire2Api<String> + UnwindSafe,
    amount: impl Wire2Api<u64> + UnwindSafe,
    asset: impl Wire2Api<String> + UnwindSafe,
    nonce: impl Wire2Api<u64> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_estimated_fees__method__XelisKeyPair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_address = address.wire2api();
            let api_amount = amount.wire2api();
            let api_asset = asset.wire2api();
            let api_nonce = nonce.wire2api();
            move |task_callback| {
                XelisKeyPair::get_estimated_fees(
                    &api_that,
                    api_address,
                    api_amount,
                    api_asset,
                    api_nonce,
                )
            }
        },
    )
}
fn wire_create_tx__method__XelisKeyPair_impl(
    port_: MessagePort,
    that: impl Wire2Api<XelisKeyPair> + UnwindSafe,
    address: impl Wire2Api<String> + UnwindSafe,
    amount: impl Wire2Api<u64> + UnwindSafe,
    asset: impl Wire2Api<String> + UnwindSafe,
    balance: impl Wire2Api<u64> + UnwindSafe,
    nonce: impl Wire2Api<u64> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "create_tx__method__XelisKeyPair",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_address = address.wire2api();
            let api_amount = amount.wire2api();
            let api_asset = asset.wire2api();
            let api_balance = balance.wire2api();
            let api_nonce = nonce.wire2api();
            move |task_callback| {
                XelisKeyPair::create_tx(
                    &api_that,
                    api_address,
                    api_amount,
                    api_asset,
                    api_balance,
                    api_nonce,
                )
            }
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<usize> for usize {
    fn wire2api(self) -> usize {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for XelisKeyPair {
    fn into_dart(self) -> support::DartAbi {
        vec![self.key_pair.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for XelisKeyPair {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;
