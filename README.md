# **Pinterest Clone - Kubernetes and Docker Deployment**

## **Project Overview**

This repository demonstrates the deployment of a Pinterest Clone application using **Minikube**, **Docker**, and **Kubernetes**. The project includes steps to build a Docker image, push it to Docker Hub, and deploy the application on a Kubernetes cluster managed locally with Minikube.

The goal is to provide a practical example of containerized application management and deployment, leveraging Kubernetes for scaling and resource management.

---

## **Features**

- **Docker Containerization**: The application is packaged into a portable Docker image for easy deployment.
- **Kubernetes Deployment**: The application is deployed on a local Minikube cluster for testing and scaling.
- **Minikube Dashboard Integration**: Real-time monitoring of pods and services through Minikube's web dashboard.
- **Image Management**: Seamless integration with Docker Hub for image storage and sharing.

---

## **Technologies Used**

- **Docker**: To containerize the Pinterest Clone application.
- **Kubernetes**: For deployment and management of the containerized app.
- **Minikube**: To create and manage the local Kubernetes cluster.
- **YAML**: For Kubernetes deployment configuration.
- **GitHub**: To host and version-control the project.

---

## **Getting Started**

### **Prerequisites**
- Install **Minikube**: [Minikube Installation Guide](https://minikube.sigs.k8s.io/docs/start/)
- Install **Docker**: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- Install **kubectl**: [kubectl Installation Guide](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### **Setup Instructions**

1. **Clone the Repository**
   ```bash
   git clone https://github.com/arrchita/PinterestClone.git
   cd PinterestClone
   ```

2. **Start Minikube**
   ```bash
   minikube start
   ```
    ![image](https://github.com/user-attachments/assets/a6ef2e86-1a48-48fc-a68a-bd41edcd384f)



3. **Build the Docker Image**
   ```bash
   docker build -t pinterest-clone .
   ```
   ![image](https://github.com/user-attachments/assets/9c7874f8-a87a-418c-89c4-8d165a55a6ca)



4. **Run the Docker Container**
   ```bash
   docker run -d -p 8000:8000 pinterest-clone
   ```

5. **Push the Image to Docker Hub**
   - Log in to Docker Hub:
     ```bash
     docker login
     ```
   - Tag the Image:
     ```bash
     docker tag pinterest-clone <your-dockerhub-username>/pinterest-clone
     ```
   - Push to Docker Hub:
     ```bash
     docker push <your-dockerhub-username>/pinterest-clone
     ```
    ![image](https://github.com/user-attachments/assets/695b91da-3b44-4b2b-a558-f56a6f6d875a)



6. **Deploy on Kubernetes**
   - Update the deployment YAML file with your Docker Hub image:
     ```yaml
     image: <your-dockerhub-username>/pinterest-clone
     ```
     ![image](https://github.com/user-attachments/assets/3ffb6f11-ca18-4bfd-b41f-3eb055b5b6c1)


   - Apply the YAML configuration:
     ```bash
     kubectl apply -f deployment.yaml
     ```

7. **Verify Deployment**
   - Check Pods:
     ```bash
     kubectl get pods
     ```
   - Access Minikube Dashboard:
     ```bash
     minikube dashboard
     ```
     ![image](https://github.com/user-attachments/assets/9aff1fd3-5eed-45ef-b0a9-fdbceec3f136)


---

## **Folder Structure**

```
PinterestClone/
├── src/                 # Source code for the Pinterest Clone app
├── Dockerfile           # Dockerfile for building the application image
├── deployment.yaml      # Kubernetes deployment configuration
└── README.md            # Project documentation
```

---

## **Project Workflow**

1. **Build the Docker Image**: Package the application into a Docker container.
2. **Push to Docker Hub**: Upload the image for sharing and reuse.
3. **Deploy on Minikube**: Use YAML configuration to deploy and manage the application on Kubernetes.
4. **Monitor Deployment**: Verify the status of pods and monitor resource utilization through Minikube's dashboard.

---

## **Accessing the Application**

- **Locally**: Visit `http://localhost:8000` after running the container.
![image](https://github.com/user-attachments/assets/e356ae0c-b920-43f3-b09f-7470c5bcbefb)

- **On Minikube**: Use the Minikube IP and the exposed service port to access the application.



