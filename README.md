# Hosting a WordPress Website on AWS

This repository contains the resources and scripts used to deploy a WordPress website on Amazon Web Services (AWS). The project leverages various AWS services to ensure high availability, scalability, and security for the WordPress application.

## Architecture Overview

The WordPress website is hosted on EC2 instances within a highly available and secure architecture that includes:

- A Virtual Private Cloud (VPC) with public and private subnets across two Availability Zones (AZs) for fault tolerance and high availability.
- An Internet Gateway to allow communication between instances in the VPC and the internet.
- Security Groups acting as a virtual firewall to control inbound and outbound traffic.
- Public Subnets used for the NAT Gateway and Application Load Balancer, facilitating external access and load balancing.
- Private Subnets for web servers to enhance security.
- EC2 Instance Connect Endpoint for secure SSH access.
- An Application Load Balancer with a target group to distribute incoming web traffic across multiple EC2 instances.
- An Auto Scaling Group to automatically adjust the number of EC2 instances based on traffic, ensuring scalability and resilience.
- Amazon RDS for a managed relational database service.
- Amazon EFS for a scalable, elastic file storage system.
- AWS Certificate Manager for managing SSL/TLS certificates.
- AWS Simple Notification Service (SNS) for notifications related to the Auto Scaling Group activities.
- Amazon Route 53 for domain name registration and DNS management.

