Server Outage Incident report
![incident manage](https://github.com/Robson-Ali/alx-system_engineering-devops/assets/99282807/db4267ec-3d44-4b53-9c9b-e92165b64ae8)

On January 31, 2023, we experienced a server outage on all our server infrastructure, which resulted in our clients inability to use our services. We sincerely apologize for the financial loss our clients have incurred during this period.

Issue Summary


On January 31, 2023 (12 a.m. GMT + 3), we experienced a server outage (downtime) on all of our server infrastructure, which lasted for 37 minutes. As a result of this, our clients experienced a HTTP 500 error, which had a 100% impact on their business as they were unable to access our services. The root cause was not properly testing out all implemented upgrades before pushing them to production servers.

Timeline (all time in GMT + 3)


Time (GMT + 3)	Actions
11:45 AM	Upgrades implementation begins
12:00AM	Server Outage begins
12:00AM	Pagers alerted on-call team
12:10AM	On-call team acknowledgement
12:15AM	Rollback initiation begins
12:20AM	Successful rollback
12:20AM	Server restart initiated
12:22AM	100% of traffic back online

Root cause


At 11:45am (GMT + 3) server upgrade was initiated across all our production servers without first releasing on our test environments and performing all necessary unit testing. Part of the upgrade been shipped to production server required an authentication from a 3rd party software, this new implementation is not supported on the current version present on our servers which resulted in the downtime experienced. We were able to resolve this quickly by first performing a rollback the severs previous state thereafter upgrading the current version on our servers.

Preventive measures


Pushing all intended changes 1st to our test environments before shipping to life server.
Increase the performance metrics threshold to alert on-call engineers on the event of possible server crash
