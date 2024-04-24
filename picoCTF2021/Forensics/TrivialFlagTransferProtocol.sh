Figure out how they moved the flag.


Os bytes que representam a largura e a altura de uma imagem BMP estão localizados na parte do cabeçalho de informações da imagem, que começa com 28 00 00 00 no byte 14.

Os bytes a seguir representam a largura (5D 02 00 00) e a altura (C6 01 00 00) da imagem.

Vamos converter esses valores de hexadecimal para decimal para entender as dimensões:

A largura está representada pelos bytes 5D 02 00 00, que em decimal é 605.
A altura está representada pelos bytes C6 01 00 00, que em decimal é 454.

Portanto, a imagem bitmap tem uma largura de 605 pixels e uma altura de 454 pixels.


5D 02 00 00 C6 01 00 00

5D 02 00 00 largura = 605 pixels

C6 01 00 00 altura = 454 pixels




Vamos calcular a largura e a altura com base nos bytes fornecidos:

Para "C0 0F 00 00":

C0 em hexadecimal é 192 em decimal.
0F em hexadecimal é 15 em decimal.
00 e 00 em hexadecimal são 0 em decimal.
Portanto, a largura é calculada como 15 * 256 + 192 = 3840 pixels.

Para "D0 0B 00 00":

D0 em hexadecimal é 208 em decimal.
0B em hexadecimal é 11 em decimal.
00 e 00 em hexadecimal são 0 em decimal.
Portanto, a altura é calculada como 11 * 256 + 208 = 2832 pixels.

Image Size                      : 4032x3024 exiftool


 cat instructions.txt | tr a-zA-Z n-za-mN-ZA-M
TFTPDOESNTENCRYPTOURTRAFFICSOWEMUSTDISGUISEOURFLAGTRANSFER.FIGUREOUTAWAYTOHIDETHEFLAGANDIWILLCHECKBACKFORTHEPLAN

"TFTP doesn't encrypt our traffic so we must disguise our flag transfer. Figure out a way to hide the flag and I will check back for the plan."

cat plan  | tr a-zA-Z n-za-mN-ZA-M
IUSEDTHEPROGRAMANDHIDITWITH-DUEDILIGENCE.CHECKOUTTHEPHOTOS

"I USED THE PROGRAM AND HID IT WITH - DUE DILIGENCE. CHECK OUT THE PHOTOS."



sudo apt-get install ./program.deb


 steghide extract -sf picture2.bmp -p "DUEDILIGENCE"
steghide: could not extract any data with that passphrase!

 steghide extract -sf picture3.bmp -p "DUEDILIGENCE"
wrote extracted data to "flag.txt".

cat flag.txt
picoCTF{h1dd3n_1n_pLa1n_51GHT_18375919}
