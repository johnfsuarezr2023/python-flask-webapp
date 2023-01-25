# Deploy-python-flask-webapp-to-App-Service-using-Azure-Pipelines

Prerequisites :
- An Azure account with an active subscription. <a href="https://azure.microsoft.com/en-us/free/?WT.mc_id=A261C142F" target="_blank">Create an account for free.</a> 
- An Azure DevOps organization. <a href="https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/pipelines-sign-up?view=azure-devops" target="_blank">Create an account for free.</a> 
- An ability to run pipelines on Microsoft-hosted agents. You can either purchase a parallel job or you can request a free tier.
- A working Azure App Service app with code hosted on GitHub or Azure Repos.
# Project Task and Steps:
1- Create a Azure App Service ( Linux Web App ) >>> I chose creating by TERRASPACE 
  - <a href="https://github.com/hkaanturgut/Deploy-python-flask-webapp-to-App-Service-using-Azure-Pipelines/tree/main/webapp-terraspace" target="_blank">My Terraspace Code</a> 
   
   ![Screenshot 2023-01-24 at 10 47 30 PM](https://user-images.githubusercontent.com/113396342/214484042-48d2c90c-13c3-4bf0-9550-47a59a78cf04.png)

#
2- Create a Python app in Azure App Service >>> <a href="https://learn.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=flask%2Cwindows%2Cazure-cli%2Cvscode-deploy%2Cdeploy-instructions-azportal%2Cterminal-bash%2Cdeploy-instructions-zip-azcli" target="_blank">Documentation</a> 
  - <a href="https://github.com/hkaanturgut/Deploy-python-flask-webapp-to-App-Service-using-Azure-Pipelines/tree/main/python-flask-webapp" target="_blank">My Python App Code</a> 

    ![image](https://user-images.githubusercontent.com/113396342/214479949-5397f1c1-23ee-4d54-89ea-14383098b79d.png)
#
3- Create your pipeline from Azure DevOps
  - Sign in to your Azure DevOps organization and navigate to your project.

  - Go to Pipelines, and then select New Pipeline.
  
  ![Screenshot 2023-01-24 at 11 05 29 PM](https://user-images.githubusercontent.com/113396342/214480544-3310af64-6975-4587-9247-61b2203cdd98.png)
  #
4- Walk through the steps of the wizard by first selecting GitHub as the location of your source code.

![Screenshot 2023-01-24 at 11 05 50 PM](https://user-images.githubusercontent.com/113396342/214480761-0f471632-1ad7-4042-aad8-6a8753a3ae5e.png)

      - You might be redirected to GitHub to sign in. If so, enter your GitHub credentials.
      
   - When the list of repositories appears, select your repository.   
   
   ![Screenshot 2023-01-24 at 11 06 05 PM](https://user-images.githubusercontent.com/113396342/214481034-63f557c5-a5b2-45bc-87be-ad739b2e0923.png)
#
5- When the Configure tab appears, select Python to Linux Web App on Azure as my application is Python.

![Screenshot 2023-01-24 at 11 06 26 PM](https://user-images.githubusercontent.com/113396342/214481342-a96b6858-d427-4a8b-b4a8-1f140b50baec.png)
   
   - Then the web app needs to be choosen.
   
  ![Screenshot 2023-01-24 at 11 06 57 PM](https://user-images.githubusercontent.com/113396342/214482507-6dfe81d2-364c-4aef-b460-ff4dc2ff9479.png)

#
6- When your new pipeline appears, take a look at the YAML to see what it does. When you're ready, select Save and run.

![Screenshot 2023-01-24 at 11 07 58 PM](https://user-images.githubusercontent.com/113396342/214481758-7d268650-7c83-4d7d-94cf-20bc09c28ba0.png)
#

- Build Job is done 

![Screenshot 2023-01-24 at 10 48 01 PM](https://user-images.githubusercontent.com/113396342/214482871-d9cd6e24-74fa-48a6-afd2-c07dddb2eb4b.png)
#
 
- Deployment Job is done

![Screenshot 2023-01-24 at 10 49 45 PM](https://user-images.githubusercontent.com/113396342/214482964-c5352167-1666-4a8d-a140-d38afd49cdcb.png)
#

We can see the details about our stages here

![Screenshot 2023-01-24 at 10 48 36 PM](https://user-images.githubusercontent.com/113396342/214483097-ee024cfd-892d-4f83-bb5b-521bcb2a7fcb.png)
#

We can see our JOBS here

![Screenshot 2023-01-24 at 10 49 32 PM](https://user-images.githubusercontent.com/113396342/214483160-7c1c0421-eeac-4159-a890-69f496460c70.png)
#

We can see our environment here

![Screenshot 2023-01-24 at 10 51 33 PM](https://user-images.githubusercontent.com/113396342/214483220-fbaa21f3-c8f7-450b-866c-ddff5ce6c56f.png)
#

And finally , we can see our deployment to App Service from the Azure portal

![Screenshot 2023-01-24 at 10 50 10 PM](https://user-images.githubusercontent.com/113396342/214483358-6e0ca253-ae5d-4b86-a45b-c59627b4f7e7.png)
