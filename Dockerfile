# Étape 1 : partir de l'image officielle n8n
FROM n8nio/n8n:latest

# Étape 2 : activer l'installation des community packages
ENV N8N_COMMUNITY_PACKAGES_ENABLED=true
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

# Étape 3 : installer le package ElevenLabs
RUN npm install --omit=dev --no-audit --no-fund @elevenlabs/n8n-nodes-elevenlabs
