Description
Someone's commits seems to be preventing the program from working. Who is it?
You can download the challenge files here:

mktemp -d
wget https://artifacts.picoctf.net/c_titan/158/challenge.zip

unzip challenge.zip

git log > commits.txt

grep  picoCTF{ commits.txt

picoCTF{@sk_th3_1nt3rn_2c6bf174}
