# API Service

| Category     | SLI | SLO                                                                                                         |
|--------------|-----|-------------------------------------------------------------------------------------------------------------|
| Availability |     | 99%                                                                                                         |
| Latency      |     | 90% of requests below 100ms                                                                                 |
| Error Budget |     | Error budget is defined at 20%. This means that 20% of the requests can fail and still be within the budget |
| Throughput   |     | 5 RPS indicates the application is functioning                                                              |

# API Service

| Category     | SLI                                                       | SLO                                         |
|--------------|-----------------------------------------------------------|---------------------------------------------|
| Availability | Application is up 99% of the time for the last 7 days.    | 99%                                         |

| Category     | SLI                                                       | SLO                                                                   |
|--------------|-----------------------------------------------------------|-----------------------------------------------------------------------|
| Latency      | Application responds within 100ms in at least 90% of requests over the last 7 days. | 90% of requests below 100ms                 |

| Category     | SLI                                                       | SLO                                                                                                         |
|--------------|-----------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| Error Budget | Error budget at 20% usage over the last 7 days.           | Error budget is defined at 20%. This means that 20% of the requests can fail and still be within the budget |

| Category     | SLI                                                       | SLO                                                  |
|--------------|-----------------------------------------------------------|------------------------------------------------------|
| Throughput   | Application is handling at least 5 RPS over the last 5 minutes. | 5 RPS indicates the application is functioning |




# Proposed SLIs

Availability: Application is up 99% of the time for the last 7 days.
Latency: Application responds within 100ms in at least 90% of requests over the last 7 days.
Error Budget: Error budget at 20% usage over the last 7 days.
Throughput: Application is handling at least 5 RPS over the last 5 minutes.