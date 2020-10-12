import json
import requests
from core_app.models import *

def get_posts():
    access_token = "EAAPGdzwKfKYBAKvGZBbV9Vmt08XdE6WC2OGadZBfOdC8oCVrCSX5cS1tIK5VSZA2WnuCPZBpMmdAJjk6rMlZC8yI8ybSS2tUEOt4hfaU768od0jUMT7LJmotc59tW96eWFuD0fC3iTBBFkYsZAcGuw7WKnl2WLW2z3LXvEwWakvwZDZD"
    url = "https://graph.facebook.com/109396157226181/feed?fields=id,message,attachments,created_time&access_token=" + access_token
    payload = ""
    headers = {
        "Content-Type": "",
        "cache-control": "no-cache"
    }
    #response = requests.request("POST", url, data=payload, headers=headers)
    response = requests.request("GET", url)
    json_data = response.json()
    return json_data["data"]

def refresh_posts():
    data = get_posts()
    try:
        for post in data:
            if "id" in post:
                post_model = Post()
                post_model.id = post["id"]
            if "message" in post:
                post_model.message = post["message"]
            if "created_time" in post:
                post_model.created_time = post["created_time"]
            post_model.save() 
            if "attachments" in post:
                attachment_model = Attachment()
                for attachment in post["attachments"]["data"]:
                    if "description" in attachment:
                        attachment_model.description = attachment["description"]
                    if "type" in attachment:
                        attachment_model.attachment_type = attachment["type"]
                    if "url" in attachment:
                        attachment_model.url = attachment["url"]
                    attachment_model.post = post_model
                    attachment_model.save()
                    if "target" in attachment:
                        target = attachment["target"]
                        target_model = Target()
                        if "url" in target:
                            target_model.url = target["url"]
                            target_model.attachment = attachment_model
                            target_model.save()
                    if "media" in attachment:
                        media = attachment["media"]
                        if "image" in media:
                            image = media["image"]
                            image_model = Image()
                            image_model.height = str(image["height"])
                            image_model.width = str(image["width"])
                            image_model.src = image["src"]
                            image_model.attachment = attachment_model
                            image_model.save()
    except Exception e:
        print(e)
