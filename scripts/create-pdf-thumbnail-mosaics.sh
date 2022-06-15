#!/usr/bin/env bash

set -eu
set -o pipefail

pdf_filepath="/data/own/Artefakte/papers-Erstautor/GLIRA 2022 - ISPRS JOURNAL - PHOTOGRAMMETRIC 3D MOBILE MAPPING OF RAIL TRACKS.pdf"
mosaic_filepath="../assets/images/2021-12-02-new-track-mapping-paper-img1.png"
./pdf-to-thumbnail-mosaic.sh "${pdf_filepath}" "${mosaic_filepath}"

pdf_filepath="/data/own/Artefakte/papers-Erstautor/GLIRA 2022 - RADARCONF2022 - 3D MOBILE MAPPING OF THE ENVIRONMENT USING IMAGING RADAR SENSORS.pdf"
mosaic_filepath="../assets/images/2022-03-28-new-radar-3d-mapping-paper-img4.png"
./pdf-to-thumbnail-mosaic.sh "${pdf_filepath}" "${mosaic_filepath}"

pdf_filepath="/data/own/Artefakte/papers-Erstautor/GLIRA 2022 - AUSTRIAN ROBOTICS WORKSHOP - CONTINUOUS TARGET-FREE EXTRINSIC CALIBRATION OF A MULTI-SENSOR SYSTEM FROM A SEQUENCE OF STATIC VIEWPOINTS.pdf"
mosaic_filepath="../assets/images/2022-06-15-new-extrinsic-calibration-paper-img1.png"
./pdf-to-thumbnail-mosaic.sh "${pdf_filepath}" "${mosaic_filepath}"