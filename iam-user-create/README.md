# IAM User Creation Example

#### This the following instructions will create an IAM user with programmatic and console access via CloudFormation.  It will store the programmatic credentials in SSM Parameter store utilizing secure string.  

#### Note, this template uses secrets manager to save programmatic credentials.  There is a small monthly usage charge for Secrets Manager.  You can use these credentials by retrieving the values from secrets manager.
<br/>

1. Login to AWS (This guide assumes you know how to login to your account)
   * Also make sure to download the iam-create-user.yml template
<br/>


2. Once logged into the Console, enter cloudformation in the search bar and select cloudformation:
![image](https://github.com/user-attachments/assets/2b2749d4-8a93-4984-8afa-04cb4b5ee11b)
<br/>


3. Once in Cloudformation, click the create stack on the right side and click "With new resources (standard)"
![image](https://github.com/user-attachments/assets/e8265bef-a11b-4285-a476-9619c5b76d69)
<br/>


4. In the create stack screen, change specify template to upload a template file (click radio button), then click choose file.  Select the template you downloaded --> iam-create-user.yml.  Click the next button on the bottom right after selecting your template.
![image](https://github.com/user-attachments/assets/1166e6f5-6ce6-4e68-8660-75cc96aee643)
<br/>  

5. In Specify Stack Details, provide a stack name (this can be anything you want, I used iam-create-user for the demo).
   * Also, make sure to enter in the IAM Username and User Console Password (in my template, this must be 12 characters long)
   * Click next on the bottom right
![image](https://github.com/user-attachments/assets/511caf8b-8a17-4c0e-ba62-befd56f3b5b7)
<br/>

6. On the next screen, scroll all the way down. Under Capabilities, click the check box - "I acknowledge that AWS CloudFormation might create IAM resources with custom names."
   * hit next at the bottom right
![image](https://github.com/user-attachments/assets/6332a55a-5e79-4296-975d-88fa8dde6750)
<br/>

8. On the final page, scroll all the way down and click submit.  This will create your console resources for which you will now be able to log into the console.
<br/>

9. Once the CloudFormation template finishes creation, go to the outputs tab and select the output "ConsoleLoginUrl."  You will be able to go here and login using your newly created credentials.
![image](https://github.com/user-attachments/assets/68dffb63-8ccd-4f7d-b9a2-bdda9b36843c)
<br/>

#### Last - don't forget to delete the template once you are 100% done. 
