#!/usr/bin/env python3
import gi
import subprocess
import threading
import os

gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, GLib

OUTPUT_FILE = "/etc/mamabear-ble.conf"
TARGET_NAME = "BabyBear"

class BabyBearFinder(Gtk.Window):
    def __init__(self):
        super().__init__(title="Baby Bear Bluetooth Finder")
        self.set_default_size(400, 200)

        # UI elements
        self.status_label = Gtk.Label(label="Click 'Scan' to search for Baby Bear\n Please ensure your BabyBear is turned on.")
        self.scan_button = Gtk.Button(label="Scan for Baby Bear")
        self.scan_button.connect("clicked", self.on_scan_clicked)

        # Layout
        box = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        box.set_margin_top(20)
        box.set_margin_bottom(20)
        box.set_margin_start(20)
        box.set_margin_end(20)

        box.pack_start(self.status_label, True, True, 0)
        box.pack_start(self.scan_button, False, False, 0)

        self.add(box)

    def on_scan_clicked(self, widget):
        self.status_label.set_text("Scanning for Baby Bear...")
        self.scan_button.set_sensitive(False)
        threading.Thread(target=self.run_scan, daemon=True).start()

    def run_scan(self):
        try:
            # Run bluetoothctl scan
            cmd = ["bluetoothctl", "--timeout", "10", "devices"]
            result = subprocess.run(cmd, capture_output=True, text=True)
            raw_output = result.stdout

            # Debug print to console
            print("=== Raw bluetoothctl output ===")
            print(raw_output)

            # Search for Baby Bear
            mac_address = None
            for line in raw_output.splitlines():
                if TARGET_NAME in line:
                    parts = line.split()
                    if len(parts) >= 3:
                        mac_address = parts[1]
                        break

            if mac_address:
                with open(OUTPUT_FILE, "w") as f:
                    f.write("MAMABEAR_BLE_MAC=")
                    f.write(mac_address)
                GLib.idle_add(self.status_label.set_text,
                              f"Found Baby Bear: {mac_address}\nSaved to {OUTPUT_FILE}\nPlease close this window.")
            else:
                GLib.idle_add(self.status_label.set_text, "Baby Bear not found.\nPlease try again.")

        except Exception as e:
            GLib.idle_add(self.status_label.set_text, f"Error: {e}")

        GLib.idle_add(self.scan_button.set_sensitive, True)


def main():
    win = BabyBearFinder()
    win.connect("destroy", Gtk.main_quit)
    win.show_all()
    Gtk.main()

if __name__ == "__main__":
    main()

