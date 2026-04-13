# 🌐 AWS Web Architecture with Terraform (HTTPS + ALB + Route53)

## 📌 Descripción

Este proyecto implementa una arquitectura web altamente disponible en AWS utilizando **Terraform**.

La solución incluye:

* Dominio personalizado con Route 53
* Certificado SSL/TLS con ACM
* Application Load Balancer (ALB) con HTTPS
* Redirección automática de HTTP → HTTPS
* Instancias EC2 en subredes privadas
* NAT Gateway para salida a Internet
* Arquitectura distribuida en múltiples zonas de disponibilidad

---

## 🏗️ Arquitectura

```
Internet
   ↓
Route 53 (DNS)
   ↓
ALB (HTTPS - 443)
   ↓
Target Group
   ↓
EC2 (Private Subnets)
```

---

## ⚙️ Tecnologías utilizadas

* Terraform
* AWS VPC
* AWS EC2
* AWS ALB (Application Load Balancer)
* AWS Route 53
* AWS ACM (Certificate Manager)
* NAT Gateway
* Amazon Linux + Nginx

---

## 🔐 Características principales

* ✔️ Alta disponibilidad (Multi-AZ)
* ✔️ Tráfico cifrado con HTTPS
* ✔️ Redirección automática HTTP → HTTPS
* ✔️ Backend en subredes privadas (más seguro)
* ✔️ Balanceo de carga entre múltiples instancias
* ✔️ Infraestructura como código (IaC)

---

## 🌍 Dominio

```bash
https://jimmyto09.site
```

---

## 🚀 Despliegue

### 1. Clonar el repositorio

```bash
git clone https://github.com/jimmyto-09/HTTPS_ALB_Route53
cd tu-repo
```

### 2. Inicializar Terraform

```bash
terraform init
```

### 3. Validar configuración

```bash
terraform validate
```

### 4. Planificar

```bash
terraform plan
```

### 5. Aplicar

```bash
terraform apply
```

---

## 📁 Estructura del proyecto

```
.
├── provider.tf
├── vpc.tf
├── sg.tf
├── ec2.tf
├── lb.tf
├── acm.tf
├── route53.tf
```

---

## 🔄 Flujo de tráfico

1. Usuario accede al dominio
2. Route 53 resuelve el DNS
3. ALB recibe tráfico
4. HTTP (80) → redirige a HTTPS (443)
5. ALB envía tráfico al Target Group
6. EC2 responde con contenido web

---

## 🧪 Pruebas

* `http://jimmyto09.site` → redirige a HTTPS
* `https://jimmyto09.site` → carga con certificado válido
* Balanceo entre instancias al refrescar

---

## 📸 Capturas (opcional)

*Agrega aquí screenshots de:*

* ALB
* EC2
* Route 53
* Navegador con HTTPS

---

## 📚 Aprendizajes

Este proyecto me permitió entender:

* Arquitectura VPC en AWS
* Diferencia entre subnets públicas y privadas
* Funcionamiento de NAT Gateway
* Configuración de ALB y Target Groups
* Uso de certificados SSL con ACM
* Gestión de DNS con Route 53
* Infraestructura como código con Terraform

---

## 🧠 Mejoras futuras

* Auto Scaling Group
* Launch Template
* CI/CD con GitHub Actions
* WAF (Web Application Firewall)
* CloudFront (CDN)

---

## 👨‍💻 Autor

Tu nombre

---
