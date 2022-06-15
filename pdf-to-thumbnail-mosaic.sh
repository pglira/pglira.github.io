#!/usr/bin/env bash

set -eux
set -o pipefail

pdf_filepath=$1
mosaic_filepath=$2

pdf_filename_without_dir=$(basename -- "${pdf_filepath}")
pdf_filename_without_extension="${pdf_filename_without_dir%.*}"

thumbnails_tmp_dirpath=/tmp/pdf-to-thumbnail-mosaic
thumbnails_filepath=${thumbnails_tmp_dirpath}/${pdf_filename_without_extension}.png

if [ -d "${thumbnails_tmp_dirpath}" ]; then
  rm -rf "${thumbnails_tmp_dirpath}"
fi
mkdir -p "${thumbnails_tmp_dirpath}"

pdftoppm -png "${pdf_filepath}" "${thumbnails_filepath}"

montage -geometry "15%x15%+5+5>" "${thumbnails_tmp_dirpath}/*.png" -frame 4 -tile 4x -background none -shadow "${mosaic_filepath}"
convert -trim +repage "${mosaic_filepath}" "${mosaic_filepath}"