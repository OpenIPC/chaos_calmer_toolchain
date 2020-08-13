FROM ubuntu:20.04
ADD OpenWrt_SDK_hi35xx_16ev100_gcc_4_8_linaro_uClibc_0_9_33_2_eabi_Linux.bz2 /tmp

FROM ubuntu:20.04
RUN apt update && \
	DEBIAN_FRONTEND=noninteractive apt install -y cmake git python3 \
	ninja-build wget pkg-config

COPY --from=0 /tmp/OpenWrt-SDK-hi35xx-16ev100_gcc-4.8-linaro_uClibc-0.9.33.2_eabi.Linux-x86_64/staging_dir/toolchain-arm_arm926ej-s_gcc-4.8-linaro_uClibc-0.9.33.2_eabi /opt/toolchain-arm_arm926ej-s_gcc-4.8-linaro_uClibc-0.9.33.2_eabi
ADD arm-openwrt-linux.cmake /opt
ENV PATH /opt/toolchain-arm_arm926ej-s_gcc-4.8-linaro_uClibc-0.9.33.2_eabi/bin:$PATH
ENV STAGING_DIR /opt/toolchain-arm_arm926ej-s_gcc-4.8-linaro_uClibc-0.9.33.2_eabi
