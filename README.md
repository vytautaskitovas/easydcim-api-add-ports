# easydcim-api-add-ports
Simple bash script to create ports in EasyDCIM using their API


# Create ports in EasyDCIM using their API

This is a simple script to quickly create port for server in EasyDCIM using their API:
https://www.easydcim.com/api/#api-Port-Create

## How to Use

Edit values per requirements. Add API key and run this script locally, use these commands:
```
wget https://raw.githubusercontent.com/vytautaskitovas/easydcim-api-add-ports/master/easydcimcreateports.sh && chmod +x easydcimcreateports.sh
./easydcimcreateports.sh
```

**Please follow these rules when you want to add ports:**
- Write or paste all new ranges in a list format(e.g. 333) and press ctrl+d;
- The script will execute and return status for each port;
