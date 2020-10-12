import json
import requests

def refresh_posts():
    access_token = "EAAPGdzwKfKYBAKvGZBbV9Vmt08XdE6WC2OGadZBfOdC8oCVrCSX5cS1tIK5VSZA2WnuCPZBpMmdAJjk6rMlZC8yI8ybSS2tUEOt4hfaU768od0jUMT7LJmotc59tW96eWFuD0fC3iTBBFkYsZAcGuw7WKnl2WLW2z3LXvEwWakvwZDZD"
    url = "https://graph.facebook.com/109396157226181/feed?fields=message,attachments&access_token=" + access_token
    payload = ""
    headers = {
        "Content-Type": "",
        "cache-control": "no-cache"
    }

    #response = requests.request("POST", url, data=payload, headers=headers)
    response = requests.request("GET", url)
    json_data = response.json()
    data = json_data["data"]


    for post in data:
        if "id" in post:
            print("id: " + post["id"])
        if "message" in post:
            print("message: " + post["message"])
        if "attachments" in post:
            print("attachments: ")
            for attachment in post["attachments"]["data"]:
                print("attachment > data : ")
                if "target" in attachment:
                    target = attachment["target"]
                    print("target: ")
                    if "url" in target:
                        print("url: " + target["url"])
                if "description" in attachment:
                    print("description: " + attachment["description"])
                if "type" in attachment:
                     print("type: " + attachment["type"])
                if "url" in attachment:
                    print("url: " + attachment["url"])
                if "media" in attachment:
                    media = attachment["media"]
                    print("media: ")
                    if "image" in media:
                        image = media["image"]
                        print("image: ")
                        print("height: " + image["height"])
                        print("width: " + image["width"])
                        print("src: " + image["src"])

"""
bLoaded.promise.then(() => {
        var token = 'EAAPGdzwKfKYBAKvGZBbV9Vmt08XdE6WC2OGadZBfOdC8oCVrCSX5cS1tIK5VSZA2WnuCPZBpMmdAJjk6rMlZC8yI8ybSS2tUEOt4hfaU768od0jUMT7LJmotc59tW96eWFuD0fC3iTBBFkYsZAcGuw7WKnl2WLW2z3LXvEwWakvwZDZD';
    	FB.api(
    		'https://graph.facebook.com/109396157226181/feed?fields=message,attachments&access_token=' + token,
    		'GET',
    		{},
    		function(response) {
    		    console.log(response);
    			var output = "";
    			
    			for (let i = 0; i < response.data.length; i++) {
    			
    				output += `<li>`;
    				
    				if (response.data[i].message) {
    					output += `<p>Message: ${response.data[i].message}</p>`;
    				}
    				else {
    					output += "</br></br>";
    				}
    			
    				for(let j=0; j < response.data[i].attachments.data.length; j++) {
    				
    					if(response.data[i].attachments.data[j].description) {
    						if (response.data[i].message !== response.data[i].attachments.data[j].description) {
    							output += `<p>Description: ${response.data[i].attachments.data[j].description}</p>`;
    						}
    					}
    					
    					if(response.data[i].attachments.data[j].media.image) {
    						output += `<img src="${response.data[i].attachments.data[j].media.image.src}" style="width: ${response.data[i].attachments.data[j].media.image.width};height: ${response.data[i].attachments.data[j].media.image.height}" /></br></br>`;
    					}
    					
    				}
    				
    				output += `</li>`;
    			}
    			document.getElementById("test1").innerHTML = output;
    		}
    	);
    });

"""