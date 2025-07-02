#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '3.0')
gi.require_version('Gst', '1.0')

from gi.repository import Gtk, Gst, GObject

# Initialize GStreamer
Gst.init(None)

class GStreamerApp(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Cyclops 2 HD Video")
        self.set_border_width(20)
        self.set_default_size(300, 100)
        self.set_keep_above(True)

        # Layout
        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(vbox)

        # Buttons
        self.start_button = Gtk.Button(label="Start Video")
        self.stop_button = Gtk.Button(label="Stop Video")
        vbox.pack_start(self.start_button, True, True, 0)
        vbox.pack_start(self.stop_button, True, True, 0)

        # Connect signals
        self.start_button.connect("clicked", self.on_start_clicked)
        self.stop_button.connect("clicked", self.on_stop_clicked)

        # Create the pipeline
        self.pipeline = None

    def on_start_clicked(self, widget):
        if self.pipeline:
            print("Pipeline already running.")
            return

        # Example pipeline: Display /dev/video3 to screen
        pipeline_description = (
            "v4l2src device=/dev/video3 ! videoconvert ! autovideosink sync=false"
        )

        try:
            self.pipeline = Gst.parse_launch(pipeline_description)
            self.pipeline.set_state(Gst.State.PLAYING)
            print("Pipeline started.")
        except Exception as e:
            print(f"Error starting pipeline: {e}")
            self.pipeline = None

    def on_stop_clicked(self, widget):
        if self.pipeline:
            self.pipeline.set_state(Gst.State.NULL)
            self.pipeline = None
            print("Pipeline stopped.")
        else:
            print("Pipeline not running.")

    def on_destroy(self, widget):
        self.on_stop_clicked(None)
        Gtk.main_quit()

# Run the app
if __name__ == "__main__":
    win = GStreamerApp()
    win.connect("destroy", win.on_destroy)
    win.show_all()
    Gtk.main()

