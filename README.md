TWRP device tree for Lenovo Z6 Pro

The Lenovo Z6 Pro (codenamed _"zippo"_) is a high-end smartphone from Lenovo.
Lenovo Z6 Pro was announced and released in April 2019.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SM8150 Snapdragon 855
CPU     | Octa-core (1x2.84 GHz Kryo 485 Gold & 3x2.42 GHz Kryo 485 Gold & 4x1.78 GHz Kryo 485 Silver)
GPU     | Adreno 640
Memory  | 6GB / 8GB / 12GB RAM (LPDDR4X)
Shipped Android Version | 9.0 with ZUI 11.1
Storage | 128/256/512 GB UFS2.1
Battery | Non-removable Li-Po 4000 mAh
Display | 1080 x 2340 pixels, 19.5:9 ratio, 162.31 mm (6.39 in), Super AMOLED, HDR10 (~403 ppi density)
Height | 157.5 mm (6.2 in)
Width | 74.6 mm (2.94 in)
Diameter | 8.7 mm (0.34 in) 
Weight | 185 g (6.53 oz)
Build | Glass front, glass back, aluminum frame
SIM | Hybrid Dual SIM (Nano-SIM, dual stand-by, dual Volte)
Extras  | microSD Card, TOF Sensor
Rear Camera 1 (Samsung S5KGM1) | 48MP, f/1.8, Quad-Bayer 1/2" sensor size, 0.80 µm pixel size, dual-pixel PDAF, dual-LED (dual tone) flash
Rear Camera 2 (Omnivision OV8865) | 8MP, f/2.4, 1/3.2 sensor size, 1.40 µm pixel size, 2x optical zoom, telephoto camera
Rear Camera 3 (Omnivision OV16885) | 16MP, f/2.4, 1/3.06 sensor size, 1.40 µm pixel size, PDAF, 16mm (125º) wide-angle camera
Rear Camera 4 (Omnivision OV02c20) | 2MP, f/1.8, 1/3.06 sensor size, 2.9 µm pixel size, PDAF, 8-axis OIS, dedicated video camera
Front Camera (Samsung S5KGD1) | 32MP, f/2.0, 1/2.8 sensor size, 0.80µm pixel size, 1080p 30 fps video

## Device picture

![Lenovo Z6 Pro](https://i.imgur.com/nhisxd7.png)

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)
- USB OTG
- Vibration support

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b android-10
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/lenovo/zippo" name="TeamWin/android_device_lenovo_zippo" remote="github" revision="android-10" />
```

You need also of this commit in /build:

```
https://gerrit.omnirom.org/#/c/android_build/+/36483/
```


Finally execute these:

```
. build/envsetup.sh
lunch omni_zippo-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/zippo/recovery.img
```

## Other Sources

Kernel source: https://github.com/Lucchetto/android_kernel_lenovo_sm8150

## Thanks

Thanks to @Lucchetto for the kernel
