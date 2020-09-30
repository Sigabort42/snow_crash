Après beaucoup de temps à me poser des questions sur comment je pourrais avoir le flag sachant que j'ai essayer beaucoup de choses sans sucées, je décide de m'attaquer dans le crack de getflag.

```bash
gdb getflag
```

On se rend compte que le processus verifie si il est en mode débug avec `ptrace@plt` et le message:

"You should not reverse this"

On peux by pass ptrace en controllant le retour de la fonction qui renvoie -1 en mode debug et 0 en mode normal

On set $eax a 0 pour by pass ptrace

`p $eax=0`

ensuite on place un BP sur getuid et on procede de la meme maniere en controllant le retour de getuid

`p $eax=3014`

3014 a ete récuperé avc un `id flag14`

Ensuite on peux recuperer le flag

Congratulation. Type getflag to get the key and send it to me the owner of this livecd :)