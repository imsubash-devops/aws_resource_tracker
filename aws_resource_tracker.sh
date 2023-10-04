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
 
 #AWS ec2
 echo "print the list of ec2 instances"
 aws ec2 describe-instances

#list aws s3 buckets
echo "print the list of s3 buckets"
aws s3 ls

#list aws rds instances
echo "print the list of rds instances"
aws rds describe-db-instances

#list aws IAM user list
echo "print the list of IAM users"
aws iam list-users

#list aws elastic load balancers
echo " print the list of elastic load balancers"
aws elb describe-load-balancers

#list aws vpc
echo "print all the aws vpcs"
aws ec2 describe-vpcs
 
#list aws lambda
echo "print all the aws lambda functions"
aws lambda list-functions 