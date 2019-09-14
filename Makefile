source-dir = src
source-images-dir = $(source-dir)/images
source-file = $(source-dir)/index.mdx

output-dir = public
output-images-dir = $(output-dir)/images

copy-images-to-output-dir = cp -avf $(source-images-dir) $(output-images-dir)
	
start:
	$(copy-images-to-output-dir)
	mdx-deck $(source-file)

build:
	mdx-deck build $(source-file) --out-dir $(output-dir)
	$(copy-images-to-output-dir)