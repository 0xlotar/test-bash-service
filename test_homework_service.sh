info=/tmp/myservice-systemd-cat-pipe-info
mkfifo "$info"
trap "exec 3>&-; rm $info" EXIT
systemd-cat -p info < "$info" &
exec 3>"$info"

DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "Test(homework) Service started at ${DATE}" | systemd-cat -p info

while :
do
echo "${DATE} i dont wanna looop" | systemd-cat -t;
sleep 1;
done