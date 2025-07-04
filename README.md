- Projeto Terraform – Infraestrutura como Código

Este repositório contém um projeto de estudo utilizando **Terraform** para provisionamento de infraestrutura na AWS. O objetivo é demonstrar experiência prática com IaC (Infrastructure as Code) e servir como portfólio para meu perfil no LinkedIn.

- Objetivo

- Aprender e praticar conceitos de infraestrutura como código
- Demonstrar habilidades em automação de recursos na nuvem AWS
- Servir como referência para oportunidades profissionais na área de Cloud/DevOps

- Recursos Provisionados

O projeto cria a seguinte infraestrutura na AWS:
- VPC
- Subnet
- Security Group
- Instância EC2
- Bucket S3
- Usuário IAM

Cada recurso está modularizado em pastas separadas dentro do diretório `modules/`.

- Estrutura do Projeto
Projeto Terraform/
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── s3/
│   ├── iam/
│   └── security_group/

- Como usar

1. Pré-requisitos:
   - Conta AWS
   - [Terraform instalado](https://www.terraform.io/downloads.html)

2. Configuração:
   - Configure suas credenciais AWS (via `aws configure` ou variáveis de ambiente)

3. Execução:
   bash
   terraform init
   terraform plan
   terraform apply
   

4. Destruir recursos:
   bash
   terraform destroy
   

- Observações
- Este projeto é apenas para fins de estudo e demonstração.
- Não utilize em ambientes de produção sem as devidas adaptações e validações de segurança.

- Contato
- guuhpina@gmail.com
- https://www.linkedin.com/in/gustavopina-devops/

|******************************************************************************************************|
| - ALERTA!!                                                                                           |
|  Projeto criado para fins de aprendizado e exposição de experiência prática em Terraform e AWS Cloud.| 
|******************************************************************************************************|

__________________________________________________________________________________________________________________________________________

- Terraform Project – Infrastructure as Code

This repository contains a study project using **Terraform** to provision infrastructure on AWS. The goal is to demonstrate hands-on experience with IaC (Infrastructure as Code) and serve as a portfolio showcase on my LinkedIn profile.

- Objective

- Learn and practice Infrastructure as Code concepts  
- Demonstrate skills in automating resources on AWS Cloud  
- Serve as a reference for professional opportunities in the Cloud/DevOps field  

- Provisioned Resources

This project creates the following AWS infrastructure:
- VPC  
- Subnet  
- Security Group  
- EC2 Instance  
- S3 Bucket  
- IAM User  

Each resource is modularized into separate folders inside the `modules/` directory.

- Project Structure
Terraform Project/
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── s3/
│   ├── iam/
│   └── security_group/

- How to Use

1. Prerequisites:
   - AWS Account  
   - Terraform installed: https://www.terraform.io/downloads.html

2. Configuration:
   - Configure your AWS credentials (via `aws configure` or environment variables)

3. Execution:
   terraform init
   terraform plan
   terraform apply

4. Destroy Resources:
   terraform destroy

- Notes

- This project is intended for study and demonstration purposes only.  
- Do not use it in production environments without proper adjustments and security validations.

- Contact

- guuhpina@gmail.com  
- https://www.linkedin.com/in/gustavopina-devops/

******************************************************************************************************
WARNING!!
Project created for learning purposes and to showcase hands-on experience with Terraform and AWS Cloud.
******************************************************************************************************


