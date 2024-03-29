We found this file. Recover the flag.

https://mercury.picoctf.net/static/06a5e4ab22ba52cd66a038d51a6cc07b/tunn3l_v1s10n

wget https://mercury.picoctf.net/static/06a5e4ab22ba52cd66a038d51a6cc07b/tunn3l_v1s10n

file tunn3l_v1s10n
exiftool tunn3l_v1s10n

ExifTool Version Number         : 12.76
File Name                       : tunn3l_v1s10n
Directory                       : .
File Size                       : 2.9 MB
File Modification Date/Time     : 2021:03:15 15:24:47-03:00
File Access Date/Time           : 2024:03:28 20:16:00-03:00
File Inode Change Date/Time     : 2024:03:28 20:12:51-03:00
File Permissions                : -rw-r--r--
File Type                       : BMP
File Type Extension             : bmp
MIME Type                       : image/bmp
BMP Version                     : Unknown (53434)
Image Width                     : 1134
Image Height                    : 306
Planes                          : 1
Bit Depth                       : 24
Compression                     : None
Image Length                    : 2893400
Pixels Per Meter X              : 5669
Pixels Per Meter Y              : 5669
Num Colors                      : Use BitDepth
Num Important Colors            : All
Red Mask                        : 0x27171a23
Green Mask                      : 0x20291b1e
Blue Mask                       : 0x1e212a1d
Alpha Mask                      : 0x311a1d26
Color Space                     : Unknown (,5%()
Rendering Intent                : Unknown (826103054)
Image Size                      : 1134x306
Megapixels                      : 0.347


mv tunn3l_v1s10n tunn3l_v1s10n.bmp

(no windows baixe o hxd)

tire o BA DO (troque por outro valor, pegue como base outra imagem bmp)
00 00 00 00 36 00 00 00 28 00

abra a imagem (tera uma flag falsa. Precisamos mudar a largura da imagem, mas n pode ser muito pois ele n aceitará)


Image Width : 1134  hex(1134)  0x46e
Image Height : 306  132  hex(306)  0x132

6E 04 00 00 32 01 00 (altura e largura)

Os bytes "6E 04 00 00" estão na ordem correta, então não há necessidade de inverter. Convertendo isso para decimal diretamente, obtemos:
6E 16 ​ =110 em decimal e 0 4 16 = 4 04 16 ​ =4 em decimal. Portanto, a largura da imagem é 4 × 256 + 110 = 1134 4×256+110=1134 pixels.

Altura da imagem: Os bytes "32 01 00 00" também estão na ordem correta. Convertendo isso diretamente para decimal, obtemos:
32 16 ​ =50 em decimal e 0 1 16 = 1 01 16 ​ =1 em decimal. Portanto, a altura da imagem é 1 × 256 + 50 = 306 1×256+50=306 pixels.

6E 04 00 00 33 03 00 (aumentei a largura)

picoCTF{qu1t3_a_v13w_2020}

https://www.youtube.com/watch?v=d63buMlAUHM&t=108s

Aprendi por aqui
