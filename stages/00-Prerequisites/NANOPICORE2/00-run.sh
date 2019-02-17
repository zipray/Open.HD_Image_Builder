log "Checking prerequisites"

pushd "${STAGE_DIR}"

if [ ! -d ~/nanopitools ]; then
    log "Extract NanoPi Tools"
    mkdir -p "~/nanopitools"
    tar xf "gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu.tar.xz" -C "~/nanopitools"

    log "Install the NanoPi Tools"
    echo PATH=\$PATH:~/nanopitools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin >> ~/.bashrc
    source ~/.bashrc
fi

popd

