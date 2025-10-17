
---

## Antes de empezar (pre-requisitos)
1. Cuenta Azure con permisos para crear recursos.
2. `az cli` instalado y `az login`.
3. `terraform` instalado (>=1.0).
4. `ansible` instalado (si vas a usar la VM).
5. Llave SSH (`~/.ssh/id_rsa` y `~/.ssh/id_rsa.pub`).
6. GitHub repo para el código y acceso a Secrets.

---

## Variables esenciales a tener listas
- `AZURE_SUBSCRIPTION_ID`
- `LOCATION` (ej. eastus)
- `RESOURCE_GROUP` (ej. rg-node-mysql)
- `ADMIN_USERNAME` (ej. azureuser)
- `SSH_PUBLIC_KEY` (contenido de `~/.ssh/id_rsa.pub`)
- `MYIP` (tu IP pública con `/32`)
- `APP_NAME` (único a nivel global)
- Para PaaS: `MYSQL_ADMIN_PASSWORD` (no en repo)

---

## Paso a paso: Provisionar infra (Terraform)
1. Ir a carpeta terraform:
```bash
cd infra/terraform
terraform init
