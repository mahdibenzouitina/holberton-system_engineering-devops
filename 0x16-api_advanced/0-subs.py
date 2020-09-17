#!/usr/bin/python3
"""function that queries the Reddit API returns the number of subscribers"""
import json
import requests


def number_of_subscribers(subreddit):
    """return numb of subscrib"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    u_agent = 'Mozilla/5.0 (Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0'
    req = requests.get(url, headers={'User-Agent': u_agent}).json()
    try:
        return (req["data"]["subscribers"])
    except KeyError:
        return 0
