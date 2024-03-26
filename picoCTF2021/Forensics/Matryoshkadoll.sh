Matryoshka dolls are a set of wooden dolls of decreasing size placed one inside another. What's the final one? Image: this
https://mercury.picoctf.net/static/f6cc2560a70b1ea811c151accba5390f/dolls.jpg

wget https://mercury.picoctf.net/static/f6cc2560a70b1ea811c151accba5390f/dolls.jpg


string 
binwalk
foremost
exitfool
steghide
(Estudar isso para resolver o ctf)

/tmp/tmp.UlmDnlHhxt/_dolls.jpg.extracted/base_images/_2_c.jpg.extracted/base_images/_3_c.jpg.extracted/base_images/_4_c.jpg.extracted$


binwalk -M dolls.jpg
  681  binwalk -e base_images/2_c.jpg
  682  ls
  683  binwalk -e dolls.jpg
  684  ls
  685  cd _dolls.jpg.extracted/
  686  ls
  687  cd base_images/
  688  ls
  689  cat 2_c.jpg
  690  binwalk -e 2_c.jpg
  691  ls
  692  cd _2_c.jpg.extracted
  693  ls
  694  cd base_images/
  695  ls
  696  binwalk -e 3_c.jpg
  697  ls
  698  cd _3_c.jpg.extracted/
  699  ls
  700  cd base_images/
  701  ls
  702  binwalk -e 4_c.jpg
  703  ls
  704  cd _4_c.jpg.extracted
  705  ls
  706  cat flag.txt

  
picoCTF{ac0072c423ee13bfc0b166af72e25b61}
