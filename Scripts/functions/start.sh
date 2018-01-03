while true
do
java -Xms512M -Xmx4G -jar server.jar
echo "Restarting in 5 seconds."
sleep 5
echo "Restarting!"
done
