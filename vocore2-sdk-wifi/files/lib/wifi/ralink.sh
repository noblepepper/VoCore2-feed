#!/bin/sh
append DRIVERS "ralink"

devidx=0

write_ralink() {
	local dir=$1
	local devtype=$2
	local dev=$3
	local mode=$4
	local channel=$5
	local sta=apcli0

	[ -d /sys/module/$dir ] || return
	[ -d "/sys/class/net/$dev" ] || return

	cat <<EOF
config wifi-device	radio0
	option type     ralink
	option variant	$devtype
	option country	TW
	option hwmode	$mode
	option htmode	HT40
	option channel  auto

config wifi-iface ap
	option device   radio0
	option mode	ap
	option network  lan
	option ifname   $dev
	option ssid	VoCore2
	option key	'12345678'
	option encryption psk2

config wifi-iface sta
	option device   radio0
	option mode	sta
	option network  wwan
	option ifname   $sta
	option ssid	UplinkAp
	option key	SecretKey
	option encryption psk2
	option disabled	1
EOF
}

detect_ralink() {
	[ -z "$(uci get wireless.@wifi-device[-1].type 2> /dev/null)" ] || return 0

	cpu=$(awk 'BEGIN{FS="[ \t]+: MediaTek[ \t]"} /system type/ {print $2}' /proc/cpuinfo | cut -d" " -f1)
	case $cpu in
	MT7688)
		write_ralink mt_wifi mt7628 ra0 11g 7
		;;
	MT7628AN)
		write_ralink mt_wifi mt7628 ra0 11g 7
		;;
	esac

	return 0
}
