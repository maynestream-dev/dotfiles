export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo

[[ -d $CARGO_HOME/bin ]] && path=("$CARGO_HOME/bin" $path)
if command -v rustc > /dev/null; then export RUST_BACKTRACE=1; fi

source $CARGO_HOME/env