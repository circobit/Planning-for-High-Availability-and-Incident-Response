## Terraform screenshots

## Zone 1

Terraform Plan

![zone-1-plan](images/terraform/zone_1_plan.png)

Terraform Apply

![zone-1-apply](images/terraform/zone_1_apply.png)

Terraform Destroy

![zone-1-destroy](images/terraform/zone_1_destroy.png)

## Zone 2

Terraform Plan

![zone-2-plan](images/terraform/zone_2_plan.png)

Terraform Apply

![zone-2-apply](images/terraform/zone_2_apply.png)

Terraform Destroy

![zone-2-destroy](images/terraform/zone_2_destroy.png)

## Grafana screenshots

## EC2 Dashboard

The following screenshot shows the Grafana dashboard built

![ec2-dashboard](images/grafana/dashboard.png)

The following screenshot shows that there are metrics for *flask_http_request_total*. The reason why there are no graphics for two of the views shown above, is because the calculations that we require based on *flask_http_request_total* don't have enough data available. This is mentioned in the project requirements and expectations from Udacity. I'm attaching this as proof that the data scrapping was successful. 

![flask_http_request_total-metrics](images/grafana/flask_http_request_total.png)