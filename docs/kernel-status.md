# PiulOS Kernel Status

Target device: Samsung Galaxy J2 Core SM-J260F
Kernel architecture target: ARM64
SoC: Exynos 7570
CPU: Cortex-A53

Existing PiulOS ELF:
- Runs on QEMU virt only
- Uses QEMU PL011 UART
- Is not a device-ready Linux/Android kernel

Required:
- Verify device-specific kernel source and branch
- Verify kernel configuration and device tree
- Build and validate a device-specific kernel
- Integrate it with the Android 9 device configuration

No flashable ROM has been produced.
