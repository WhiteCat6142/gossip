#!/bin/bash

cargo build --features=lang-cjk,video-ffmpeg --release && \
    RUST_BACKTRACE=1 RUST_LOG="info,gossip_lib=debug" ./target/release/gossip "$@" \
        | tee gossip.log.txt
