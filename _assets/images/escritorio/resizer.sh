for f in `find . -name "*.jpeg"`
do
    convert $f -resize 30% -gaussian-blur 0.05 -quality 85% -strip -rotate 180 $f.jpg
done
