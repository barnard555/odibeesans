TTFDIR="./ttf"
rm -r $TTFDIR/*.ttf
 
fontmake -g ./sources/Odibee-Sans-v2.glyphs -o ttf -i --output-dir $TTFDIR -a
for f in $TTFDIR/*.ttf
do
	gftools fix-dsig --autofix $f
	gftools fix-hinting $f
	mv $f.fix $f
done

# # Clean up
rm -r instance_ufo
rm -r master_ufo
