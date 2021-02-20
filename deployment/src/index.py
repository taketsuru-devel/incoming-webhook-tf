#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import urllib.request

def lambda_handler(event, context):
    # event.queryStringParameters
    # event.body
    message = json.dumps(event)
    send_data = {
        "text": message,
    }
    send_text = json.dumps(send_data)
    request = urllib.request.Request(
        'slack webhook URL',
        data = send_text.encode('utf-8'), 
        method = "POST"
    )
    with urllib.request.urlopen(request) as response:
        response_body = response.read().decode('utf-8')


if __name__ == "__main__":
    with open('./test.json', 'r') as f:
        lambda_handler(json.load(f), None)
