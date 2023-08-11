#Critical file permission checks
chmod 400 /etc/shadow
chmod 600 /etc/security
chmod 644 /etc/ssh/sshd_config
chmod 400 /etc/gshadow 
chmod 400 /etc/shadow

# Check SSH password expiration time
chage --maxdays 90 root

# Check minimum interval between SSH password changes
chage --mindays 7 root
