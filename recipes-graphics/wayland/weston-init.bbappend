do_install:append() {
    # The 'kiosk' shell provides a full-screen app experience
    sed -i -e '/\[core\]/a shell=kiosk-shell.so' ${D}${sysconfdir}/xdg/weston/weston.ini
}
