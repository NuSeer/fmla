# FMLA Legal Documentation System

## 📋 Overview
Professional evidence tracking system for documenting FMLA violations, retaliation, and building legal cases for DOL complaints and attorney consultations.

## 📦 Package Contents

### Main Files
- **`index.html`** - Landing page with feature overview
- **`FMLA-Legal-Documentation-System.html`** - Complete documentation application
- **`DEPLOYMENT-GUIDE.md`** - Detailed deployment instructions
- **`deploy.sh`** - Automated deployment script
- **`README.md`** - This file

## 🚀 Quick Start

### Option 1: Use Locally (No Server Needed)
1. Open `index.html` in your web browser
2. Click "Launch Documentation System"
3. Start documenting your case
4. All data saves in your browser (localStorage)

### Option 2: Deploy to VPS
1. Run the deployment script:
   ```bash
   ./deploy.sh
   ```
2. Follow the prompts to upload to your VPS
3. Access via your domain or VPS IP

### Option 3: Manual Upload
1. Use FTP/SFTP client (FileZilla, WinSCP)
2. Upload both HTML files to `/var/www/html`
3. Access via browser

## ✨ Features

### 📊 Core Tracking Modules
- **FMLA Leave Tracker** - Document every leave instance with full details
- **Violations Log** - Track retaliation incidents with legal categorization
- **Corrective Actions** - Record write-ups and disciplinary actions
- **Communications Log** - Document all emails, Teams messages, conversations
- **Complete Timeline** - Auto-generated chronological view

### 🔍 Automatic Data Extraction
- Upload documents (PDF, Word, images)
- System extracts dates, times, and names automatically
- Saves hours of manual data entry

### 📄 Professional Reports
Generate 5 types of legal reports:
1. **DOL Complaint Package** - Ready for Department of Labor submission
2. **Attorney Case Summary** - Comprehensive briefing for legal consultation
3. **Retaliation Pattern Analysis** - Statistical evidence of discrimination
4. **Complete Evidence Binder** - All documentation organized
5. **Chronological Statement** - Plain-language narrative

### ⚖️ Legal References
- Complete FMLA law citations (29 USC § 2615, 29 CFR § 825.220)
- Your rights explained in plain language
- Contact information for DOL and attorney resources
- Statute of limitations warnings

### 📈 Case Strength Assessment
- Real-time evaluation of documentation completeness
- Progress indicator showing evidence strength
- Guidance on next steps

### 💾 Data Management
- Export all data as JSON
- Import/restore capability
- Secure local storage (browser-based)
- No server uploads - complete privacy

## 🛡️ Privacy & Security

### Data Storage
- **100% Local** - All data stored in your browser's localStorage
- **No Server Transmission** - Nothing uploaded to any server
- **Complete Control** - You own and control all your data
- **Export Anytime** - Download backup copies as needed

### Recommended Security Practices
1. **Regular Backups**
   - Export data weekly
   - Save to multiple locations (USB, cloud, email)
   
2. **Browser Security**
   - Use private/incognito mode if on shared computer
   - Clear browser data will erase stored documentation
   
3. **VPS Deployment Security** (if applicable)
   - Use HTTPS/SSL certificates
   - Consider password protection (.htaccess)
   - Keep server updated

## 📞 Getting Help

### Department of Labor
- **Phone:** 1-866-4-USWAGE (1-866-487-9243)
- **File Online:** https://www.dol.gov/agencies/whd/fmla/complaint
- **Free Investigation:** DOL investigates at no cost to you

### Find FMLA Attorney
- **National Employment Lawyers Association:** https://exchange.nela.org/findalawyer
- **Free Consultations:** Most employment attorneys offer free initial consultations
- **Contingency Basis:** Many work on contingency (no fee unless you win)

### Your Legal Rights
Under FMLA (29 USC § 2615):
- Employers CANNOT retaliate for using FMLA leave
- Employers CANNOT use FMLA as negative factor in employment actions
- You have 2-3 years to file complaint (don't wait!)
- Filing a complaint is PROTECTED - no retaliation allowed

## 🎯 How to Use for Legal Action

### Step 1: Document Everything (NOW)
1. Log every FMLA leave instance
2. Document all violations/retaliation
3. Upload evidence (screenshots, emails, documents)
4. Record all communications

### Step 2: Generate Reports
1. Go to "Generate Reports" tab
2. Create DOL Complaint Package
3. Create Attorney Case Summary
4. Export all data as backup

### Step 3: Take Action
1. **File DOL Complaint** - Submit online or by phone
2. **Contact 3 Attorneys** - Schedule free consultations
3. **Continue Documenting** - Keep adding new incidents
4. **Back Up Everything** - Multiple secure locations

### Step 4: Maintain Documentation
- Update after every FMLA leave
- Log any new retaliation immediately
- Upload new evidence as it occurs
- Export backup monthly

## 🔧 Technical Requirements

### Browser Compatibility
- ✅ Chrome/Edge (recommended)
- ✅ Firefox
- ✅ Safari
- ✅ Opera
- ⚠️ Internet Explorer (not recommended)

### Minimum Requirements
- Modern web browser
- JavaScript enabled
- 10MB available localStorage
- Screen resolution: 1024x768 or higher

### Mobile Support
- ✅ Fully responsive design
- ✅ Works on phones and tablets
- ✅ Touch-friendly interface

## 📱 Deployment Options

### 1. Local Use (Easiest)
Simply open the HTML files in your browser. No server needed.

**Pros:**
- Instant access
- No setup required
- Complete privacy

**Cons:**
- Data tied to one device/browser
- Must manually back up
- Can't access from multiple devices

### 2. VPS Hosting (Recommended for Multi-Device Access)
Deploy to a Virtual Private Server for access anywhere.

**Pros:**
- Access from any device
- Professional URL
- Can share with attorney
- Automatic backups possible

**Cons:**
- Requires VPS ($3-5/month)
- Basic server knowledge helpful
- Need to configure SSL for security

**Popular VPS Providers:**
- DigitalOcean ($5/month)
- Linode ($5/month)
- Vultr ($2.50/month)
- AWS Lightsail ($3.50/month)

### 3. GitHub Pages (Free Alternative)
Host on GitHub for free access anywhere.

**Pros:**
- Completely free
- Professional URL
- Easy updates via Git
- Built-in version control

**Cons:**
- Public repository (data still local)
- Requires GitHub account
- Basic Git knowledge helpful

## 🆘 Troubleshooting

### Data Not Saving
- Check if cookies/localStorage enabled
- Try different browser
- Check available storage space
- Export and re-import data

### Can't Upload Files
- Check file size (max 5MB recommended)
- Ensure file format supported
- Try different browser
- Check browser console for errors

### Reports Not Generating
- Ensure data is entered in forms
- Check browser console for errors
- Try refreshing page
- Export data and reload

### VPS Deployment Issues
- Verify SSH access works
- Check file permissions (644 for HTML)
- Ensure web server running
- Check firewall settings
- Review deployment guide

## 📚 Additional Resources

### FMLA Law Information
- **DOL FMLA Homepage:** https://www.dol.gov/agencies/whd/fmla
- **Employee Rights Poster:** https://www.dol.gov/sites/dolgov/files/WHD/legacy/files/fmlaen.pdf
- **FMLA Fact Sheet:** https://www.dol.gov/sites/dolgov/files/WHD/legacy/files/whdfs28.pdf

### Finding Help
- **Find Local WHD Office:** https://www.dol.gov/agencies/whd/contact/local-offices
- **National Employment Lawyers:** https://exchange.nela.org/findalawyer
- **Legal Aid Societies:** Search "[your city] legal aid employment"

### Understanding Your Rights
- **FMLA Eligibility:** https://www.dol.gov/agencies/whd/fmla/faq
- **What Counts as Retaliation:** Included in app's FMLA Law Reference tab
- **Filing Deadlines:** 2-3 years from last violation

## ⚠️ Important Legal Notices

### Not Legal Advice
This tool is for documentation purposes only and does not constitute legal advice. Consult with a qualified employment attorney for legal guidance specific to your situation.

### Statute of Limitations
You have 2-3 years from the date of the last FMLA violation to file a complaint. Do not delay documentation or action.

### Protected Activity
Filing a DOL complaint or consulting with an attorney is legally protected activity. Your employer cannot legally retaliate against you for exercising these rights.

### Data Security
While this tool stores data locally in your browser, you are responsible for:
- Backing up your data regularly
- Securing your devices
- Using strong passwords if deploying to VPS
- Understanding your VPS provider's security measures

## 🤝 Support

### Need Help With The Tool?
- Review the built-in help sections in each tab
- Check DEPLOYMENT-GUIDE.md for server setup
- Review this README for common issues

### Experiencing FMLA Violations?
- **Don't wait** - Start documenting immediately
- **Contact DOL** - File complaint online or by phone
- **Consult attorney** - Free consultations available
- **Keep documenting** - Continue adding evidence

### Emergency Resources
If you're in immediate danger or facing imminent termination:
1. Document everything NOW
2. Export all data immediately
3. Contact attorney TODAY
4. File DOL complaint THIS WEEK

## 📄 License & Credits

### License
This documentation system is provided as-is for personal use in documenting FMLA violations and building legal cases.

### Credits
- FMLA legal information sourced from U.S. Department of Labor
- Built with HTML, CSS, and JavaScript
- No external dependencies or tracking

### Version
- **Version:** 1.0
- **Last Updated:** April 2026
- **Compatibility:** All modern browsers

## 🎯 Quick Reference

### Critical Actions
1. ✅ Document EVERY FMLA leave
2. ✅ Upload ALL evidence (screenshots, emails, documents)
3. ✅ Export backups WEEKLY
4. ✅ File DOL complaint when ready
5. ✅ Consult with attorney (free consultations)

### Red Flags That Need Documentation
- ⚠️ Questioning about FMLA usage
- ⚠️ Disciplinary actions after FMLA leave
- ⚠️ Public humiliation or hostile environment
- ⚠️ Changes in treatment after FMLA use
- ⚠️ Threats or intimidation about future leave
- ⚠️ Denial of benefits or opportunities

### Contact Information (Save These)
- **DOL Phone:** 1-866-487-9243
- **DOL File Online:** dol.gov/agencies/whd/fmla/complaint
- **Find Attorney:** exchange.nela.org/findalawyer

---

**Remember: You have rights. Document everything. Take action. You're not alone.**
