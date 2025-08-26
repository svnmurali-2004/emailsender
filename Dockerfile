FROM n8nio/n8n:latest

# Basic Auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword

# n8n host and port
ENV N8N_HOST=yourapp.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# SMTP (for sending emails)
ENV N8N_EMAIL_SMTP_HOST=smtp.yourprovider.com
ENV N8N_EMAIL_SMTP_PORT=587
ENV N8N_EMAIL_SMTP_USER=your-email@example.com
ENV N8N_EMAIL_SMTP_PASS=yourpassword

EXPOSE 5678
CMD ["n8n", "start"]
