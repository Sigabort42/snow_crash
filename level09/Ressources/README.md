J'execute ./level09 avec le paramtres token.

`ls -l` qui dis que je peux lire le token

`cat token` m'affiche le token et il a l'air crypté

je re-execute ./level09 avec le parametres token puis le re-execute avec le parametres aaaaa et je vois qu'il y a un cryptage cesar dynamqiue

Je fait un script python
```python
import sys

flag = ""
for i, c in enumerate(sys.argv[1]):
	flag += chr(ord(c) - i)

print(flag)
```
J'affiche le flag qui me permet de me connecter en tant que flag10

"f3iji1ju5yuevaus41q1afiuq"
