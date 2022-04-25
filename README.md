# Mono monitoring agent

This is the mono monitoring agent.

Mono works with an event log, which is a file where each row is a time entry generated from some event. The special format that mono works with is a JSON object that looks like this:

    {"time": 1645426754557, "host": "bndlaptop", "service": "testservice","state": "ok", "description": "allOK", "tags": ["test"], "metric" : [{"name": "elapsedTimeMS", "value" : 12}], "ttl" : 10 }

Every time new rows are added to the event log Mono reads the line and performs some activity on it. In the end Mono could generate a new message via an emitter (such as e.g. RSS or Mail or a log row or a rest call). 

Mono-activities are configured in a script setup.yeti




