# Jenkins_Automation
Setting up a basic Jenkins pipeline to automate the process of building and deploying an application.

Following steps taken to complete the task:

**--->** Launched a EC2 instance and installed packages (Docker, Jenkins, Git).

**--->** Created a **new repository** and added the Basic Code to deploy the application using **Jenkins**.

**--->** Using Port number **8080** with server public IP address accessed **jenkins** and completed full setup and **installed plug-ins** (Docker Pipeline, pipeline stage view, blue ocean) and in the server given the command **(chmod 777 ///var/run/docker.sock)** to **integrate Docker with Jenkins**.

<img width="608" height="217" alt="Jenkins_setup" src="https://github.com/user-attachments/assets/e16fff8c-74ce-4949-ae10-3120d7261344" />

**--->** Created a **web-hook trigger** for the repository and used in Jenkins pipeline that when ever any **new commits** are made automatically in **Jenkins job** build is triggered and all the pipeline steps will be built.

<img width="593" height="149" alt="Placed webhook in github" src="https://github.com/user-attachments/assets/e1f17374-b99d-401d-be8c-88230ade0b2f" />

<img width="522" height="235" alt="Web hook trigger" src="https://github.com/user-attachments/assets/90f3baec-9946-4a8a-9e26-54bd4bf8eed4" />

**--->** After all the steps build is successfull we can able to access the application, below is the final snapshots to verify that application is working fine.

<img width="763" height="234" alt="Final output" src="https://github.com/user-attachments/assets/beceb7c2-cee6-499b-8d7f-495d43a30f8b" />

<img width="369" height="89" alt="Output_2" src="https://github.com/user-attachments/assets/c81f2d1b-b3fc-4cbb-8e26-fe018d2dcf60" />






