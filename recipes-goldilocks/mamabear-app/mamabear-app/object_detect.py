import subprocess
import time


# Run the shell script
subprocess.run(["timeout", "60", "/opt/mamabear/bin/object_detection.sh"])


