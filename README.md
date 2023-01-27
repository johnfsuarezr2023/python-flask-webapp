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

#
# PART 2 : Releases in Azure Pipeline 
#

1- To create a release pipeline , go to Releases under the Pipeline tab , then create a new Release pipeline

![Screenshot 2023-01-27 at 1 46 51 PM](https://user-images.githubusercontent.com/113396342/215183747-655d3c26-8edd-4e4a-8b01-9ebde35ab8f4.png)
![Screenshot 2023-01-27 at 1 54 53 PM](https://user-images.githubusercontent.com/113396342/215184107-e1a94be5-9283-478c-95c1-18d6adf9a04a.png)
#

2- The easiest way to create a release pipeline is to use a template. If you are deploying a Node.js app, select the Deploy Node.js App to Azure App Service template. Otherwise, select the Azure App Service Deployment template. Then choose Apply.

![Screenshot 2023-01-27 at 2 52 45 PM](https://user-images.githubusercontent.com/113396342/215185422-b8168691-0575-4e00-8c7f-913bd31d320d.png)
#

3- If you created your new release pipeline from a build summary, check that the build pipeline and artifact is shown in the Artifacts section on the Pipeline tab. If you created a new release pipeline from the Releases tab, choose the + Add link and select your build artifact.

![Screenshot 2023-01-27 at 2 53 20 PM](https://user-images.githubusercontent.com/113396342/215185603-014886fd-3431-40e2-9052-41bc537e9af7.png)
#

4- Choose the Continuous deployment icon in the Artifacts section, check that the continuous deployment trigger is enabled, and add a filter to include the main branch.

![Screenshot 2023-01-27 at 2 53 34 PM](https://user-images.githubusercontent.com/113396342/215186067-a95c8e97-f08c-4097-95b1-6e3439cf4446.png)
#

5- Open the Tasks tab and, with Stage 1 selected, configure the task property variables as follows:

Azure Subscription: Select a connection from the list under Available Azure Service Connections or create a more restricted permissions connection to your Azure subscription. 

App Service Name: Select the name of the web app from your subscription.
Save the release pipeline.

![Screenshot 2023-01-27 at 1 53 50 PM](https://user-images.githubusercontent.com/113396342/215186421-2648e05c-a783-48d0-9b2c-26f47c797cfc.png)
#

# Create a release to deploy your app
#
- Choose + Release and select Create a release.

![Screenshot 2023-01-27 at 3 07 42 PM](https://user-images.githubusercontent.com/113396342/215187187-eaed2982-c767-4cc4-b83e-6ff397919949.png)
#

- In the Create a new release panel, check that the artifact version you want to use is selected and choose Create.

![Screenshot 2023-01-27 at 3 08 49 PM](https://user-images.githubusercontent.com/113396342/215187408-73db7e76-7c47-41a3-a21d-6bce9fb83318.png)
#
- In the pipeline view, choose the status link in the stages of the pipeline to see the logs and agent output.

![Screenshot 2023-01-27 at 1 53 34 PM](https://user-images.githubusercontent.com/113396342/215187701-82f66c3a-fa33-4b84-81cc-190fe2270814.png)
#
Finally , we can see our release summary.

![Screenshot 2023-01-27 at 2 09 43 PM](https://user-images.githubusercontent.com/113396342/215187884-eff22afa-72c0-47e0-a99f-557311c1f66b.png)

