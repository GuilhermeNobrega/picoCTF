My team has been working very hard on new features for our flag printing program! I wonder how they'll work together?
You can download the challenge files here:

wget https://artifacts.picoctf.net/c_titan/178/challenge.zip
unzip challenge.zip

git branch
feature/part-1
  feature/part-2
  feature/part-3
* main
temos três branchs além da main
(use q to exit)

Temos três partes que temos que achar. Localizei o arquivo em:

/logs/refs/heads/feature$ 
OU
logs$ cat HEAD 
(Para essa caso aparece:
0000000000000000000000000000000000000000 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    commit (initial): init flag printer
2258a0f267d57e8b6025e2a020b77fac7a553c92 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    checkout: moving from main to feature/part-1
2258a0f267d57e8b6025e2a020b77fac7a553c92 8eea0627726fc363246015cb4c7e927e70286e87 picoCTF <ops@picoctf.com> 1710202074 +0000    commit: add part 1
8eea0627726fc363246015cb4c7e927e70286e87 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    checkout: moving from feature/part-1 to main
2258a0f267d57e8b6025e2a020b77fac7a553c92 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    checkout: moving from main to feature/part-2
2258a0f267d57e8b6025e2a020b77fac7a553c92 05db9e274ff691e0f9fb492403b570629eb80aa9 picoCTF <ops@picoctf.com> 1710202074 +0000    commit: add part 2
05db9e274ff691e0f9fb492403b570629eb80aa9 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    checkout: moving from feature/part-2 to main
2258a0f267d57e8b6025e2a020b77fac7a553c92 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    checkout: moving from main to feature/part-3
2258a0f267d57e8b6025e2a020b77fac7a553c92 655c7bfebe9c221369ab00ac7374d0d4bd4d62a9 picoCTF <ops@picoctf.com> 1710202074 +0000    commit: add part 3
655c7bfebe9c221369ab00ac7374d0d4bd4d62a9 2258a0f267d57e8b6025e2a020b77fac7a553c92 picoCTF <ops@picoctf.com> 1710202074 +0000    checkout: moving from feature/part-3 to main

só ler as partes 1,2,3 e juntar a senha:
+print("picoCTF{t3@mw0rk_", end='')
+print("m@k3s_th3_dr3@m_", end='')
+print("w0rk_6c06cec1}"
picoCTF{t3@mw0rk_m@k3s_th3_dr3@m_w0rk_6c06cec1}
