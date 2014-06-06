. $PWD/config
while true
do
curl -s 'http://pogoda.tut.by' > tempHttp
grep -m 1 '<span class="temp-i">' tempHttp > result
echo $(sed 's/[^\-\+0-9]//g' result)°C
sleep $sleep
done
