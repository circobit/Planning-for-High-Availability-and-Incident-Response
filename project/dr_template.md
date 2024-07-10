# Infrastructure

## AWS Zones

- us-east-2
    - Subnets: ["us-east-2a", "us-east-2b", "us-east-2c"]
- us-west-2: 
    - Subnets: ["us-west-1b", "us-west-1c"]

## Servers and Clusters
### Table 1.1 Summary

| Asset                | Purpose                                                              | Size                                                                   | Qty                                                             | DR                                                                                                           |
|----------------------|----------------------------------------------------------------------|------------------------------------------------------------------------|-----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Asset name           | Brief description                                                    | AWS size eg. t3.micro (if applicable, not all assets will have a size) | Number of nodes/replicas or just how many of a particular asset | Identify if this asset is deployed to DR, replicated, created in multiple locations or just stored elsewhere |
| EC2 instance         | Web servers                                                          | t3.micro                                                               | 6                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |
| ALB                  | Application load balancer to balance traffic between the Web Servers |                                                                        | 2                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |
| EKS Cluster          | EKS Cluster for pods orchestration and monitoring of applications    | t3.medium                                                              | 2                                                               |                                                                                                              |
| VPC                  | Network                                                              |                                                                        | 2                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |
| Subnets              | Network                                                              |                                                                        | 5                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |
| s3 bucket            | Buckets to store Terraform states                                    |                                                                        | 2                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |
| RDS Cluster          | RDS Clusters                                                         |                                                                        | 2                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |
| RDS Cluster Instance | Primary instance and replication instance                            | db.t2.small                                                            | 2                                                               | Created in multiple zones (us-east-2 and us-west-1)                                                          |


## DR Plan
### Pre-Steps:

Verify that the infrastructure at the Disaster Recovery (DR) infrastructure is properly configured and operational.

## Steps:

Update the DNS settings to direct traffic to the load balancer in the DR region.

Ensure that the database is replicated and prepare for database failover. With database replication configured in advance, we can switch to the DR database instance during a failover. The application should use a generic CNAME DNS record, enabling it to seamlessly connect to the DR database instance.