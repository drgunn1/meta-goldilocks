#!/usr/bin/env python3

import gi
import subprocess
import signal

gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class CommandApp(Gtk.Window):
    def __init__(self):
        super().__init__(title="Cyclops 2 AI Demo")
        self.set_border_width(10)
        self.set_default_size(300, 100)
        self.set_keep_above(True)

        self.process = None

        # Layout
        box = Gtk.Box(spacing=10)
        self.add(box)

        # Start Button
        self.start_button = Gtk.Button(label="Start AI Demo")
        self.start_button.connect("clicked", self.on_start_clicked)
        box.pack_start(self.start_button, True, True, 0)

        # Stop Button
        self.stop_button = Gtk.Button(label="Stop AI Demo")
        self.stop_button.connect("clicked", self.on_stop_clicked)
        box.pack_start(self.stop_button, True, True, 0)

    def on_start_clicked(self, button):
        if self.process is None or self.process.poll() is not None:
            print("Starting command...")
            self.process = subprocess.Popen([
                "/opt/gopoint-apps/scripts/machine_learning/nnstreamer/detection/example_detection_mobilenet_ssd_v2_tflite",
                "-c", "/dev/video3",
                "-b", "NPU",
                "-p", "/opt/mamabear/bin/ssdlite_mobilenet_v2_coco_quant_uint8_float32_no_postprocess.tflite",
                "-l", "/opt/mamabear/bin/coco_labels_list.txt",
                "-x", "/opt/mamabear/bin/box_priors.txt",
                "-d",
                "-g", "/opt/mamabear/bin",
                "-t", "red"
            ])
        else:
            print("Process is already running.")

    def on_stop_clicked(self, button):
        if self.process and self.process.poll() is None:
            print("Stopping command...")
            self.process.terminate()
            try:
                self.process.wait(timeout=5)
            except subprocess.TimeoutExpired:
                print("Force killing...")
                self.process.kill()
        else:
            print("No process to stop.")

    def do_destroy(self):
        self.on_stop_clicked(None)
        Gtk.main_quit()

if __name__ == "__main__":
    win = CommandApp()
    win.connect("destroy", Gtk.main_quit)
    win.show_all()
    Gtk.main()

