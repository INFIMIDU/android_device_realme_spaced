# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
     persist.bluetooth.bluetooth_audio_hal.disabled=true

# Blurs
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1
    ro.sf.blurs_are_expensive=1 \
    persist.sys.sf.disable_blurs=1

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.realme.lockstate=0

# GBoard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.kb_pad_port_b=1 \
    ro.com.google.ime.corner_key_r=35

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

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
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# Zygote
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# ZRAM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24

# Dex2oat
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7

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