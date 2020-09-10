echo "what's your IP address ?"
read address  

result=$(curl --slient http://ip-api.com/batch?fields=status,message,country,countryCode,region,regionName,city,zip,lat,lon,timezone,isp,org,as,query \
--data '[{"query":  "'$address'" , "fields": "city,country,query" },  "8.8.8.8",
  "24.48.0.1" ]'
  
   
) 

echo "your location is : "
echo $result | jq '.[0].city , .[0].country '
	
exit