# Windows STIG Remediation Scripts

This repository contains PowerShell scripts used to automate DISA STIG hardening for Windows 11 systems.  
Each STIG control is implemented, documented, and organized into its own folder, making this repo a clean and scalable portfolio project for cybersecurity and system hardening work.

These scripts were created as part of real cybersecurity internship experience and demonstrate practical Windows hardening, registry enforcement, and compliance automation.

---

## 📁 Repository Structure

```
windows-stig-remediation/
├── WN11-AU-000500/
│   ├── README.md
│   └── WN11-AU-000500-ApplicationLogMaxSize.ps1
├── WN11-CC-000345/
│   ├── README.md
│   └── WN11-CC-000345-WinRM-AllowBasic.ps1
└── (More STIGs will be added)
```

---

## 📋 Completed STIGs

This repository contains completed DISA STIG controls with full documentation and PowerShell remediation scripts.

| STIG ID | Description | Status |
|--------|------------|--------|
| [WN11-AU-000500](./WN11-AU-000500) | Application Event Log MaxSize | ✅ Complete |
| [WN11-CC-000345](./WN11-CC-000345) | WinRM Basic Authentication Disabled | ✅ Complete |

---

## 🎯 Project Goals

- Implement DISA STIG controls using PowerShell  
- Document each control clearly and professionally  
- Build a growing Windows hardening script library  
- Demonstrate hands-on security compliance skills  
- Provide a reusable structure for future STIG implementations  

This repository is designed to showcase practical cybersecurity work — not theory — and can support interview discussions for SOC, compliance, vulnerability management, and system hardening roles.

---

## 🛠️ How to Use This Repository

1. Navigate to any STIG folder  
2. Open the README inside the folder to understand the control  
3. Run the PowerShell script as Administrator  
4. Validate that the associated registry or policy settings are applied  
5. Document testing results using the template provided  

---

## 📄 STIG Control Example Included

### **WN11-AU-000500 — Application Event Log Maximum Size**

This STIG requires the Application event log to be configured with a minimum maximum size of **32 MB (32768 KB)**.  

The repository includes:
- A full PowerShell remediation script  
- A detailed README explaining the requirement  
- Registry paths and references  
- Usage instructions  

---

## 🚀 Future Additions

- More Windows 11 STIG controls  
- Automated rollback scripts  
- Compliance validation scripts  
- Hardening baselines  
- Testing documentation templates  

---

## 👨‍💻 Author

**Dennis Medder**  
Cybersecurity Analyst  
- GitHub: https://github.com/AlertByDennisM  
- LinkedIn: https://linkedin.com/in/dennis-medder-4177a6143  

---

## 📜 License

This project is open-source under the MIT License.  
Feel free to fork, adapt, or use these scripts in your own projects.
