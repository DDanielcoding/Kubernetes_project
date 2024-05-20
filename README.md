# Kubernetes_project

This project demonstrates an easy and quick way how to deploy and run the classic "cowsay" program on a Kubernetes pod.

"Cowsay" is a configurable talking cow, originally written in Perl, that generates ASCII pictures of cow with a speech bubble.

![cowsay_bAQ](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/621591bd-f212-4aae-a651-d41a07efaaec)

# Setup and Deployment


1. Firstly, create the 'PersistentVolume.yaml' file as shown below:

![mypvk1](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/dcee0be6-da47-4ea2-89d2-96a76bcade75)



2. Next, create the 'PersistentVolumeClaim.yaml' file with the name 'mypvclaim1':

![mypvclaim1](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/3d26172e-4de9-4152-a86e-0c97be571bcf)



3. Deploy the Application
Create the deployment configuration 'cow-deploy.yaml':

![cow_deploy](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/25996fa8-0ddb-4df1-82c6-00b0c8da042c)

4. Expose the Deployment
Create the service configuration 'cow-service.yaml':

![cow-service](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/3faf12b9-9397-449e-92f1-ed2e05bd72e4)


I applied everything after creation with the following commands:

<code>kubectl apply -f PersistentVolume.yaml</code><br><br>

<code>kubectl apply -f PersistentVolumeClaim.yaml</code><br><br>

<code>kubectl apply -f cow-deploy.yaml</code><br><br>

<code>kubectl apply -f cow-service.yaml</code><br><br>

Between creation I also checked that everything as it supposed to be:

<code>kubectl get pv mypvk1</code><br><br>

<code>kubectl get pvc mypvclaim1</code><br><br>

<code>kubectl get pod</code><br><br>

<code>kubectl get svc</code><br><br>

As you can see on the screenshot below everything aligned perfectly! So there's only one thing left to do is execute the pod!

![commands](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/f116e45e-7fe5-4f30-9232-e9f7993a793c)


<code>kubectl exec -it cowsay-deployment1-6c74978d7c-rl877 sh</code><br><br>

<code>curl localhost:80</code><br><br>

![final](https://github.com/DDanielcoding/Kubernetes_project/assets/155651525/c6e97152-bc01-4522-94b7-c705f7711dc8)

