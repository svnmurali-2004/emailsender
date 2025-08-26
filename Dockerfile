# Use official n8n image
FROM n8nio/n8n:latest

# Basic Auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword

# Bind to all interfaces & dynamic port
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=http   # Render provides HTTPS automatically

# SMTP configuration
ENV N8N_EMAIL_SMTP_HOST=smtp.yourprovider.com
ENV N8N_EMAIL_SMTP_PORT=587
ENV N8N_EMAIL_SMTP_USER=your-email@example.com
ENV N8N_EMAIL_SMTP_PASS=yourpassword

# Optional persistent storage
VOLUME /home/node/.n8n

# Expose the dynamic port
EXPOSE $PORT

# Start n8n
CMD ["/usr/local/bin/n8n", "start", "--tunnel"]
