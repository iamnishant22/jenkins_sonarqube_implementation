**Introduction**
In modern software development, Continuous Integration (CI) and Continuous Deployment (CD) pipelines are essential for automating the process of integrating code changes, running tests, and deploying applications. This project focuses on implementing a robust Jenkins CI/CD pipeline incorporating key tools like SonarQube for code quality analysis, Docker for containerization, and GitHub Webhooks for automated triggering, all deployed on AWS infrastructure.

The pipeline is set up across three EC2 instances on AWS, each dedicated to a specific component:

**Jenkins Instance:** This serves as the central CI/CD server, orchestrating the entire pipeline, from code retrieval to deployment.
**SonarQube Instance:** Used for static code analysis, ensuring code quality and security standards are maintained.
**Docker Instance:** Manages the creation and storage of Docker images, facilitating consistent environments across development, testing, and production.
**Key Concepts**********
**GitHub Integration:** Jenkins is connected to GitHub using Webhooks, enabling automated pipeline triggers on code changes.
**Jenkins Plugins:** Two essential plugins are installed on Jenkins:
 **SSH Plugin:** Allows executing remote shell commands on other servers, crucial for integrating different stages of the pipeline.
 **Sonar Scanner Plugin:** Enables SonarQube analysis within Jenkins pipelines, ensuring that code quality checks are an integral part of the CI process.
**Declarative Pipeline:** The pipeline is defined using Jenkins’ declarative pipeline syntax, which offers a structured and readable approach to pipeline configuration. GitHub is used as the source code management (SCM) tool, ensuring seamless code integration and version control.
**Build Stages:** In the build stages, remote shell scripts are employed to automate the creation of Docker images. These scripts are executed on the Docker instance, streamlining the process of building and preparing application containers for deployment.
This setup ensures a fully automated, scalable, and efficient CI/CD pipeline, enhancing productivity and reducing manual intervention in the software development lifecycle.
