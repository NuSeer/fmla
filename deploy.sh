#!/bin/bash

# FMLA Documentation System - VPS Deployment Script
# This script helps you quickly deploy to your VPS

echo "========================================="
echo "FMLA Documentation System Deployment"
echo "========================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

# Check if files exist
echo "Checking files..."
if [ ! -f "index.html" ] || [ ! -f "FMLA-Legal-Documentation-System.html" ]; then
    print_error "Required files not found in current directory!"
    echo "Please ensure you're in the directory containing:"
    echo "  - index.html"
    echo "  - FMLA-Legal-Documentation-System.html"
    exit 1
fi
print_success "Files found"
echo ""

# Deployment method selection
echo "Select deployment method:"
echo "1) SCP Upload (recommended)"
echo "2) Show manual upload instructions"
echo "3) Generate upload commands only"
echo ""
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        echo ""
        echo "========================================="
        echo "SCP Upload Configuration"
        echo "========================================="
        echo ""
        
        # Get VPS details
        read -p "Enter VPS IP address or domain: " vps_host
        read -p "Enter SSH username (usually 'root' or 'ubuntu'): " vps_user
        read -p "Enter SSH port (press Enter for default 22): " vps_port
        vps_port=${vps_port:-22}
        read -p "Enter web root path (press Enter for /var/www/html): " web_root
        web_root=${web_root:-/var/www/html}
        
        echo ""
        print_warning "Ready to upload files to $vps_user@$vps_host:$web_root"
        read -p "Continue? (y/n): " confirm
        
        if [ "$confirm" != "y" ]; then
            print_error "Deployment cancelled"
            exit 0
        fi
        
        echo ""
        echo "Uploading files..."
        
        # Upload files
        if scp -P $vps_port index.html FMLA-Legal-Documentation-System.html $vps_user@$vps_host:$web_root/; then
            print_success "Files uploaded successfully!"
            
            echo ""
            echo "Setting permissions..."
            ssh -p $vps_port $vps_user@$vps_host "cd $web_root && chmod 644 index.html FMLA-Legal-Documentation-System.html"
            print_success "Permissions set"
            
            echo ""
            echo "========================================="
            print_success "DEPLOYMENT SUCCESSFUL!"
            echo "========================================="
            echo ""
            echo "Access your site at:"
            echo "  http://$vps_host"
            echo ""
            echo "Next steps:"
            echo "1. Set up SSL certificate (HTTPS)"
            echo "2. Configure your domain DNS"
            echo "3. Test the application"
            echo ""
            
        else
            print_error "Upload failed!"
            echo ""
            echo "Common issues:"
            echo "- Wrong IP address or hostname"
            echo "- Wrong username"
            echo "- SSH key not configured"
            echo "- Firewall blocking connection"
            echo ""
            echo "Try manual upload or check DEPLOYMENT-GUIDE.md"
        fi
        ;;
        
    2)
        echo ""
        echo "========================================="
        echo "MANUAL UPLOAD INSTRUCTIONS"
        echo "========================================="
        echo ""
        echo "Using FTP/SFTP Client (FileZilla, WinSCP, Cyberduck):"
        echo ""
        echo "1. Open your FTP/SFTP client"
        echo "2. Connect to your VPS:"
        echo "   - Host: your-vps-ip"
        echo "   - Username: your-username"
        echo "   - Port: 22 (SFTP) or 21 (FTP)"
        echo "   - Protocol: SFTP"
        echo ""
        echo "3. Navigate to: /var/www/html (or your web root)"
        echo ""
        echo "4. Upload these files:"
        echo "   ✓ index.html"
        echo "   ✓ FMLA-Legal-Documentation-System.html"
        echo ""
        echo "5. Right-click files → Permissions → Set to 644"
        echo ""
        echo "6. Access your site at: http://your-vps-ip"
        echo ""
        echo "========================================="
        ;;
        
    3)
        echo ""
        echo "========================================="
        echo "UPLOAD COMMANDS"
        echo "========================================="
        echo ""
        echo "Copy and paste these commands (replace YOUR_* with your details):"
        echo ""
        echo "# Upload files via SCP"
        echo "scp index.html FMLA-Legal-Documentation-System.html YOUR_USER@YOUR_VPS_IP:/var/www/html/"
        echo ""
        echo "# Or if using custom SSH port:"
        echo "scp -P YOUR_PORT index.html FMLA-Legal-Documentation-System.html YOUR_USER@YOUR_VPS_IP:/var/www/html/"
        echo ""
        echo "# SSH into VPS to set permissions"
        echo "ssh YOUR_USER@YOUR_VPS_IP"
        echo "cd /var/www/html"
        echo "chmod 644 index.html FMLA-Legal-Documentation-System.html"
        echo "sudo chown www-data:www-data *.html  # For Apache"
        echo "sudo systemctl restart apache2       # For Apache"
        echo ""
        echo "========================================="
        ;;
        
    *)
        print_error "Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "For detailed instructions, see DEPLOYMENT-GUIDE.md"
echo ""
