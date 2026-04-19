import os
from PIL import Image

# Setup paths
directory = r"C:\Ghoomar final 3\elements used in the website\assets\thali\gallery\food\individual"

# Compression settings
basewidth = 800  # Resize width to 800px (perfect for galleries)
quality = 75     # JPEG Quality

print(f"Scanning directory: {directory}")

for filename in os.listdir(directory):
    if filename.lower().endswith(('.png', '.jpg', '.jpeg')):
        file_path = os.path.join(directory, filename)
        
        try:
            img = Image.open(file_path)
            
            # Check if already small
            if os.path.getsize(file_path) < 500 * 1024:
                print(f"Skipping {filename}: Already compressed.")
                continue

            # Convert to RGB (in case of PNG/RGBA)
            img = img.convert('RGB')
            
            # Calculate new height to maintain aspect ratio
            wpercent = (basewidth / float(img.size[0]))
            if wpercent < 1.0: # Only downsize, never upscale
                hsize = int((float(img.size[1]) * float(wpercent)))
                img = img.resize((basewidth, hsize), Image.Resampling.LANCZOS)
            
            # Save directly over the file
            img.save(file_path, "JPEG", optimize=True, quality=quality)
            
            new_size = os.path.getsize(file_path) / 1024
            print(f"Compressed {filename} to {new_size:.1f} KB")
            
        except Exception as e:
            print(f"Error compressing {filename}: {e}")

print("\nCompression complete! Your web page will load much faster now.")
