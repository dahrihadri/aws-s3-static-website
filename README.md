# aws-s3-static-website
Step-by-step guide hiw I hosting a static website on Amazon S3, including setup instructions, code examples, and resource management tips. Perfect for beginners looking to explore AWS services and deploy their first website
# AWS S3 Static Website Hosting

This project demonstrates how to I host a static website on Amazon S3. i'll create an S3 bucket, upload my website files, and configure the bucket to serve my site publicly on the internet.

![Project Screenshot](assets/screenshots/step4-website-success.png)

## Introducing Amazon S3!

### What it does & how it’s useful

- Amazon S3 is a scalable object storage service for storing and retrieving any amount of data from anywhere.
Developers and teams use Amazon S3 because of its durability, scalability, and cost-effectiveness. It supports various data formats and integrates seamlessly with other AWS services.

### How I’m using it in today’s project

- Im using Amazon S3 in this project to host a static website

### This project took me... 

- This project took me approximately 15mins to complete. Documentation took me around 15mins, ensuring clear and comprehensive guidelines for future reference and ease of use.

- **Difficulty**: Easy
- **Time**: 30 min
- **Cost**: $0 (within the AWS Free Tier)

## Table of Contents

- [Prerequisites](#prerequisites)
- [Steps](#steps)
  - [Step 1: Create an S3 Bucket](#step-1-create-an-s3-bucket)
  - [Step 2: Upload Website Content](#step-2-upload-website-content)
  - [Step 3: Configure Static Website Hosting](#step-3-configure-static-website-hosting)
  - [Step 4: Make Your Website Public](#step-4-make-your-website-public)
  - [Step 5: Delete Resources](#step-5-delete-resources)
- [License](#license)

## Prerequisites

- An [AWS account](https://aws.amazon.com/free/) (Free Tier eligible)
- Basic knowledge of HTML

## Steps

### Step 1 Create an S3 bucket

Creating an Amazon S3 bucket took me 5 mins...
- Some of the configuration steps include:
  - The bucket’s Region:I pick the region that is closest to my primary user base or where my other AWS resources are located to minimize latency and data transfer costs.
  - Access Control Lists: Enable
  - Bucket versioning: Enable
  - Public Access: Enable
 
S3 bucket names have to be globally unique, which means that each bucket name must be distinct across all AWS accounts and regions. No two buckets can have the same name anywhere in the world.

My created bucket!

![Create Bucket Screenshot](assets/screenshots/step1-create-bucket.png)


### Step 2: Upload Website Content

- Next, I uploaded my website’s files into my S3 bucket.
- There were two files to upload: index.html and Nextwork -Everyone should be in a job they love_files. index.html references and utilizes files from the website_files directory to render properly. For example Images and other resources in website_files are used to enrich content on the webpage.

Object successfully uploaded

![Create Bucket Screenshot](assets/screenshots/step2-upload-files.png)

### Step 3: Configure Static Website Hosting

- Website hosting means a service that allows organisations or individuals to post a web page on the internet.
- To enable website hosting, I clicked on the properties tab on my s3 bucket and then scrolled down to “static website hosting” then clicked “Enabled”
- Once static website is enabled, S3 produces a bucket endpoint URL http://nextwork-website-project-dahrihadri.s3-website-us-west-2.amazonaws.com/

Setting up static website hosting...

![Create Bucket Screenshot](assets/screenshots/step3-configure-static-hosting.png)

### Step 4: Make Your Website Public

#### An error!

- When I visited the bucket endpoint URL, an error message appeared.
- The reason for this error was due to the actual HTML/image files that I've uploaded are still private. It's kind of like having a bucket on display, so everyone can see the bucket - but the contents are covered up, preventing anyone from seeing what's inside.
- To solve this error, I need to set the permission of the objects to public by enabled the object ACLs.

The error!

![Create Bucket Screenshot](assets/screenshots/step4-website-error.png)

Voila! My website was up and running after resolving those errors

![Create Bucket Screenshot](assets/screenshots/step4-website-success.png)

### Step 5: Delete Resources

Make sure you delete all your resources to avoid getting charged. This is a super important task for every single project you set up.
