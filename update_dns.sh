#!/bin/bash

# Get public IP
IP=$(curl -s http://ipv4.icanhazip.com)

# Load Cloudflare credentials
source cloudflare_credentials.txt

 
# start loop to update all subdomains
while read -r SUBDOMAIN; do
    RECORD_NAME="$SUBDOMAIN.$DOMAIN"
     # Ανακτήστε το RECORD_ID όπως προηγουμένως
    RECORD_ID=$(curl -s -X GET "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records?name=$RECORD_NAME" \
         -H "X-Auth-Email: $EMAIL" \
         -H "Authorization: Bearer $API_KEY" \
         -H "Content-Type: application/json" | jq -r '.result[0].id')
     
    # Ενημέρωση του DNS record
    RESPONSE=$(curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$RECORD_ID" \
         -H "X-Auth-Email: $EMAIL" \
         -H "Authorization: Bearer $API_KEY" \
         -H "Content-Type: application/json" \
         --data "{\"type\":\"$RECORD_TYPE\",\"name\":\"$RECORD_NAME\",\"content\":\"$IP\"}")

    echo "Response for $SUBDOMAIN: $RESPONSE"
done < subdomains.txt
