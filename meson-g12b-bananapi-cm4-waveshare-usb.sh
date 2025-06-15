#!/bin/bash

function main {
    
    local -r tmp_dir=$(mktemp -d /tmp/meson-g12b-bananapi-cm4-waveshare-usb-XXXXXX)
    local -r dts_file=${tmp_dir}/meson-g12b-bananapi-cm4-waveshare-usb.dts
    
    cd "${tmp_dir}" || exit 1
    
    cat > "${dts_file}" <<EOF
/dts-v1/;
/plugin/;

/ {
	compatible = "bananapi,bpi-cm4io", "bananapi,bpi-cm4", "amlogic,a311d", "amlogic,g12b";

	fragment@0 {
		target = <&usb>;
		__overlay__ {
			dr_mode = "host";
		};
	};
};
EOF
 
    armbian-add-overlay "${dts_file}" && rm -Rf "${tmp_dir}" 
}

main "@"
