#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="averyos"
iso_label="AVERYOS_$(date +%Y%m)"
iso_publisher="3top1a"
iso_application="AveryOS Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="dist"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
# Default
#airootfs_image_type="squashfs"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')

# Debug
#airootfs_image_type="squashfs"
#airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '1')

# Quick and good
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '19')

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:0400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
