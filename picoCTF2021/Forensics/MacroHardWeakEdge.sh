I've hidden a flag in this file. Can you find it? 

wget https://mercury.picoctf.net/static/52da699e0f203321c7c90ab56ea912d8/Forensics%20is%20fun.pptm

 binwalk Forensics\ is\ fun.pptm
88548         0x159E4         Zip archive data, at least v2.0 to extract, compressed size: 81, uncompressed size: 99, name: ppt/slideMasters/hidden
100071        0x186E7         End of Zip archive, footer length: 22

[~/ctfs/_Forensics is fun.pptm.extracted/ppt/slideMasters]
└─$ cat hidden
Z m x h Z z o g c G l j b 0 N U R n t E M W R f d V 9 r b j B 3 X 3 B w d H N f c l 9 6 M X A 1 f Q

echo "ZmxhZzogcGljb0NURntEMWRfdV9rb" | base64 -d
flag: picoCTF{D1d_u_kbase64: invalid input

Junta as frases:

echo "ZmxhZzogcGljb0NURntEMWRfdV9rbjB3X3BwdHNfcl96MXA1fQ" | base64 -d
flag: picoCTF{D1d_u_kn0w_ppts_r_z1p5}base64: invalid input
picoCTF{D1d_u_kn0w_ppts_r_z1p5}
