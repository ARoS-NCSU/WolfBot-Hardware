#!/bin/sh

echo "Remember to have all layers active in the SVG document!"
echo "(or you'll end up with blank pages)"
echo

for i in 1 2; do
    echo "Processing layer #${i} ..."
    inkscape --export-area-page -j --export-id=layer${i} --export-pdf=wiring_chart_${i}.pdf  wiring_charts.svg
done

echo
echo Done!
