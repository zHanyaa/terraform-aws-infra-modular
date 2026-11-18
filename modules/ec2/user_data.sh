#!/bin/bash
set -euo pipefail

dnf install -y nginx
cat > /usr/share/nginx/html/index.html <<'HTML'
<h1>terraform-aws-infra-modular</h1>
<p>Instancia provisionada com Terraform.</p>
HTML
systemctl enable --now nginx
