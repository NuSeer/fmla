# FMLA Documentation System - VPS Deployment Guide

## Files to Deploy
1. `index.html` - Landing page
2. `FMLA-Legal-Documentation-System.html` - Main application

## Quick Deployment Options

### Option 1: Manual Upload via FTP/SFTP (Easiest)
1. Connect to your VPS using FileZilla, WinSCP, or Cyberduck
2. Navigate to your web root directory (usually `/var/www/html` or `/usr/share/nginx/html`)
3. Upload both files:
   - `index.html`
   - `FMLA-Legal-Documentation-System.html`
4. Set file permissions: `chmod 644 *.html`
5. Access via your domain: `https://yourdomain.com`

### Option 2: SCP Command (From Your Computer)
```bash
# Replace with your VPS details
scp index.html FMLA-Legal-Documentation-System.html user@your-vps-ip:/var/www/html/

# Or if using a specific port
scp -P 2222 index.html FMLA-Legal-Documentation-System.html user@your-vps-ip:/var/www/html/
```

### Option 3: Direct on VPS (SSH into your VPS first)
```bash
# SSH into your VPS
ssh user@your-vps-ip

# Navigate to web root
cd /var/www/html

# Create the files (copy content from outputs folder)
nano index.html
# Paste content from index.html, save with Ctrl+X, Y, Enter

nano FMLA-Legal-Documentation-System.html
# Paste content from FMLA-Legal-Documentation-System.html, save with Ctrl+X, Y, Enter

# Set proper permissions
sudo chmod 644 *.html
sudo chown www-data:www-data *.html  # For Apache
# OR
sudo chown nginx:nginx *.html        # For Nginx

# Restart web server
sudo systemctl restart apache2  # For Apache
# OR
sudo systemctl restart nginx    # For Nginx
```

### Option 4: Using wget (If files are hosted temporarily)
```bash
# SSH into your VPS
ssh user@your-vps-ip

# Navigate to web root
cd /var/www/html

# Download files (if hosted on another server temporarily)
wget https://temporary-host.com/index.html
wget https://temporary-host.com/FMLA-Legal-Documentation-System.html

# Set permissions
sudo chmod 644 *.html
sudo chown www-data:www-data *.html  # Apache
```

## VPS Web Server Setup (If Not Already Configured)

### For Apache
```bash
# Install Apache
sudo apt update
sudo apt install apache2

# Enable Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Allow HTTP/HTTPS through firewall
sudo ufw allow 'Apache Full'

# Web root: /var/www/html
```

### For Nginx
```bash
# Install Nginx
sudo apt update
sudo apt install nginx

# Enable Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Allow HTTP/HTTPS through firewall
sudo ufw allow 'Nginx Full'

# Web root: /usr/share/nginx/html or /var/www/html
```

## SSL Certificate Setup (HTTPS - Recommended)

### Using Let's Encrypt (Free)
```bash
# Install Certbot
sudo apt install certbot python3-certbot-apache  # For Apache
# OR
sudo apt install certbot python3-certbot-nginx   # For Nginx

# Get certificate (Apache)
sudo certbot --apache -d yourdomain.com -d www.yourdomain.com

# Get certificate (Nginx)
sudo certbot --nginx -d yourdomain.com -d www.yourdomain.com

# Auto-renewal (test)
sudo certbot renew --dry-run
```

## DNS Configuration

Point your domain to your VPS IP:
```
Type: A Record
Name: @ (or yourdomain.com)
Value: YOUR_VPS_IP_ADDRESS
TTL: 3600

Type: A Record
Name: www
Value: YOUR_VPS_IP_ADDRESS
TTL: 3600
```

## Security Recommendations

1. **Password Protection (Optional but Recommended)**
   ```bash
   # Create password file (Apache)
   sudo htpasswd -c /etc/apache2/.htpasswd joyforeman
   
   # Add to Apache config
   sudo nano /etc/apache2/sites-available/000-default.conf
   
   # Add inside <Directory /var/www/html>:
   AuthType Basic
   AuthName "Restricted Access"
   AuthUserFile /etc/apache2/.htpasswd
   Require valid-user
   
   # Restart Apache
   sudo systemctl restart apache2
   ```

2. **Firewall Setup**
   ```bash
   # Enable UFW
   sudo ufw enable
   
   # Allow SSH
   sudo ufw allow 22/tcp
   
   # Allow HTTP/HTTPS
   sudo ufw allow 80/tcp
   sudo ufw allow 443/tcp
   
   # Check status
   sudo ufw status
   ```

3. **Fail2Ban (Protect Against Brute Force)**
   ```bash
   sudo apt install fail2ban
   sudo systemctl enable fail2ban
   sudo systemctl start fail2ban
   ```

## Verification Steps

1. **Check files are in place**
   ```bash
   ls -la /var/www/html/
   ```

2. **Test web server**
   ```bash
   curl http://localhost
   ```

3. **Access from browser**
   - Open: `http://your-vps-ip`
   - Or: `https://yourdomain.com` (if DNS configured)

4. **Check error logs if issues**
   ```bash
   # Apache
   sudo tail -f /var/log/apache2/error.log
   
   # Nginx
   sudo tail -f /var/log/nginx/error.log
   ```

## Troubleshooting

### Issue: Permission Denied
```bash
sudo chmod 755 /var/www/html
sudo chmod 644 /var/www/html/*.html
sudo chown -R www-data:www-data /var/www/html  # Apache
sudo chown -R nginx:nginx /var/www/html        # Nginx
```

### Issue: Can't Access from Browser
```bash
# Check if web server is running
sudo systemctl status apache2  # or nginx

# Check firewall
sudo ufw status

# Check if port 80/443 is listening
sudo netstat -tlnp | grep :80
sudo netstat -tlnp | grep :443
```

### Issue: 404 Not Found
```bash
# Verify files exist
ls -la /var/www/html/

# Check Apache/Nginx configuration
sudo apache2ctl -t  # Apache
sudo nginx -t       # Nginx
```

## Alternative: Using GitHub Pages (Free Hosting)

If you don't want to use a VPS:

1. Create GitHub repository: `fmla-documentation`
2. Upload both HTML files
3. Go to Settings → Pages
4. Select branch: main
5. Access at: `https://yourusername.github.io/fmla-documentation/`

## Need Help?

Common VPS Providers:
- DigitalOcean ($5/month)
- Linode ($5/month)
- Vultr ($2.50/month)
- AWS Lightsail ($3.50/month)

Most include one-click WordPress/LAMP stack installers that work perfectly for static HTML files.
