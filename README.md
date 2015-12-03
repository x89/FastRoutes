# FastRoutes
Standard VPN usage is to use your default connection for all connections but you'll be able to access the internal network of the VPN after you've connected to it.
It's frequent these days to use a VPN connection to completely masquerade your connection for various reasons.
The issue here is that there are times when you don't want to use the VPN, for example in low latency networking (your ping while gaming), when something is IP blocked from your VPN (US Netflix, UK iPlayer).

The way your routing table works is by following the route which is most specific, so if you have two rules
```
1.2.3.0/24 via 10.8.0.1
0.0.0.0/0 via 10.8.0.2
```

Then when you try to access `1.2.3.42` that'll be accessed through `10.8.0.1` even though it also matches in the second wider matching rule.

You can use tools such as `host`, `ping`, `ss` and `netstat` to find out where your connections are going.
