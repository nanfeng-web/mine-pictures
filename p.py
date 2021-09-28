import requests

response = requests.get("https://api.nmb.show/1985acg.php") 

file = open("paqu","wb")

file.write(response.content) 

file.close()
