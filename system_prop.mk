# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
     persist.bluetooth.bluetooth_audio_hal.disabled=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.renderengine.backend=skiaglthreaded

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.realme.lockstate=0

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Log
PRODUCT_PROPERTY_OVERRIDES += \
    persist.log.tag.GED=S \
    persist.log.tag.hwcomposer=S \
    persist.log.tag.libnfc_nci=S \
    persist.log.tag.libPowerHal=S \
    persist.log.tag.mTEE=S \
    persist.log.tag.mtkpower@impl=S

# Iorap
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native_boot.iorap_readahead_enable=true

# OMX
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    debug.stagefright.ccodec=0

# Performance
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# Privapp permissions whitelisting
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Surfaceflinger
TARGET_USE_AOSP_SURFACEFLINGER
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# Zygote
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

    # LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.psi_complete_stall_ms=150 \
    ro.lmk.swap_free_low_percentage=20 \
    ro.lmk.kill_timeout_ms=100

    # Bionic
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bionic.cpu_variant=cortex-a78 \
    ro.bionic.2nd_cpu_variant=cortex-a78

# Dalvik
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.isa.arm.variant=cortex-a78 \
    dalvik.vm.isa.arm64.variant=cortex-a78

# Always use GPU for screen compositing
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_hwc_overlays=1
