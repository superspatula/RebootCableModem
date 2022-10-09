retries=0
until [ $retries -ge 5 ]
do
    html=$(curl -s -u admin:password http://192.168.100.1/RouterStatus.asp)
    sessionid=$(xmllint --html --xpath "string(//input[@name='RetailSessionId']/@value)" 2>/dev/null - <<<"$html")
    if [ ! -z "$sessionid" ] && [ $sessionid != *"HTTP 401"* ]
    then
        echo "sessionid is $sessionid - execute reboot!"
        curl -s -u admin:password -d "RsAction=2&RetailSessionId=$sessionid" -X POST http://192.168.100.1/goform/RouterStatus
        break
    fi
    retries=$[$retries+1]
    echo "oops!  trying again!  retries = $retries"
    sleep 1
done
