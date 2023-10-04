#!/bin/bash

#########################
#Author : Subash Neupane
#Date: 2023-10-04

#This is a simple shell script project to track the different AWS cloud resources.

##################
 #ec2 instance
 #s3 buckets
 #Rds instances 
 #Iam users list
 # elastic load balancers 
 # vpc
 #lambda functions

 set -x   #used to enable debugging mode
 #output file path
output_file="~/Downloads/output_file.txt"

 #AWS ec2
 echo "print the list of EC2 instances" > "$output_file"
 aws ec2 describe-instances >> "$output_file"

#list aws s3 buckets
echo "print the list of s3 buckets" >> "$output_file"
aws s3 ls >> "$output_file"

#list aws rds instances
echo "print the list of rds instances" >> "$output_file"
aws rds describe-db-instances >> "$output_file"

#list aws IAM user list
echo "print the list of IAM users" >> "$output_file"
aws iam list-users >> "$output_file"

#list aws elastic load balancers
echo " print the list of elastic load balancers" >> "$output_file"
aws elb describe-load-balancers >> "$output_file"

#list aws vpc
echo "print all the aws vpcs" >> "$output_file"
aws ec2 describe-vpcs >> "$output_file"
 
#list aws lambda
echo "print all the aws lambda functions" >> "$output_file"
aws lambda list-functions >> "$output_file"

#cronjob to run everyday at 6pm to generate the output file
# 0 18 * * * /path/to/your/script.sh  #set this job