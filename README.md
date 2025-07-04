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
