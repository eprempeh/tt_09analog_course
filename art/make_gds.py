# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2024 Uri Shaked

# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2024 Uri Shaked (modified)

import gdspy
from PIL import Image

# ===============================
# SETTINGS
# ===============================
INPUT_FILE = "zedulo_logo.png"
OUTPUT_FILE = "zedulo.gds"

TARGET_SIZE = 100       # resize image to 300x300 (reduce complexity)
THRESHOLD = 140          # black/white threshold
PIXEL_SIZE = 0.45        # um (safe for sky130 poly, >= 0.15um min width)
LAYER = 71               # poly
DATATYPE = 20            # drawing
# ===============================

# Load and resize image
img = Image.open(INPUT_FILE)
img = img.resize((TARGET_SIZE, TARGET_SIZE))

# Convert to grayscale
img = img.convert("L")

# Convert to strict black/white
img = img.point(lambda p: 255 if p > THRESHOLD else 0)

layout = gdspy.Cell("zedulo_logo")

# Merge horizontal pixels
for y in range(img.height):
    x = 0
    while x < img.width:
        if img.getpixel((x, y)) == 0:  # black pixel
            start_x = x

            # Find end of continuous black pixels
            while x < img.width and img.getpixel((x, y)) == 0:
                x += 1
            end_x = x

            flipped_y = img.height - y - 1

            layout.add(
                gdspy.Rectangle(
                    (start_x * PIXEL_SIZE, flipped_y * PIXEL_SIZE),
                    (end_x * PIXEL_SIZE, (flipped_y + 1) * PIXEL_SIZE),
                    layer=LAYER,
                    datatype=DATATYPE
                )
            )
        else:
            x += 1

# Save GDS
gdspy.write_gds(OUTPUT_FILE)
print("GDS created:", OUTPUT_FILE)

