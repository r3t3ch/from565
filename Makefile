rletopng : 5652rgb logo.raw
	   convert -depth 8 -size 800x1280 rgb:logo.raw logo.png

pngtorle : to565 initlogo.raw
	   ./to565 -rle < initlogo.raw > initlogo.rle

to565 :
	  gcc -o to565 to565.c

initlogo.raw :
	    convert -depth 8 initlogo.png rgb:initlogo.raw

5652rgb :
	  gcc -O2 -Wall -Wno-unused-parameter -o 5652rgb from565.c

logo.raw :
	  ./5652rgb -rle < logo.rle > logo.raw

clean :
	rm -rf initlogo.png logo.raw 5652rgb initlogo.raw initlogo.rleW
