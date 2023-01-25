# Deploy-python-flask-webapp-to-App-Service-using-Azure-Pipelines

# Project Task and Steps:
1- Create a Azure App Service ( Linux Web App ) >>> I chose creating by TERRASPACE 
  - <a href="https://github.com/hkaanturgut/Deploy-python-flask-webapp-to-App-Service-using-Azure-Pipelines/tree/main/webapp-terraspace" target="_blank">My Terraspace Code</a> 
   
   ![Screenshot 2023-01-24 at 10 47 30 PM](https://user-images.githubusercontent.com/113396342/214479682-a82177a3-83ae-4999-becf-e003d471ad5c.png)
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
#
6- When your new pipeline appears, take a look at the YAML to see what it does. When you're ready, select Save and run.

![Screenshot 2023-01-24 at 11 07 58 PM](https://user-images.githubusercontent.com/113396342/214481758-7d268650-7c83-4d7d-94cf-20bc09c28ba0.png)
#
