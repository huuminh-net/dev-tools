#Critical file permission checks
400 /etc/shadow
600 /etc/security
644 /etc/ssh/sshd_config
400 /etc/gshadow 
400 /etc/shadow

# Check SSH password expiration time
chage --maxdays 90 root

# Check minimum interval between SSH password changes
chage --mindays 7 root

#

sed -i 's/#ClientAliveInterval 900/ClientAliveInterval 0/' /etc/ssh/sshd_config