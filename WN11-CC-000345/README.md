# 🛡️ STIG: WN11-CC-000345 — WinRM Basic Authentication Must Be Disabled

---

## 📌 Overview
This Security Technical Implementation Guide (STIG) ensures that Basic authentication is disabled for Windows Remote Management (WinRM).

Basic authentication transmits credentials in plain text, which can be intercepted by attackers. Disabling it enforces stronger authentication mechanisms and reduces the risk of credential compromise.

---

## 🔍 STIG Details

- **STIG ID:** WN11-CC-000345  
- **Severity:** CAT I (High)  
- **CCI:** CCI-000877  
- **SRG:** SRG-OS-000125-GPOS-00065  

---

## ⚠️ Vulnerability Discussion

Basic authentication sends usernames and passwords in a format that is easily decoded. If intercepted, attackers can gain unauthorized access to systems.

Disabling Basic authentication ensures that only secure authentication methods (e.g., Kerberos, Negotiate) are used for WinRM connections.

---

## 🔎 Check (Manual Verification)

1. Open Registry Editor:
regedit

2. Navigate to:
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service

3. Verify the following value:

- **Name:** AllowBasic  
- **Type:** REG_DWORD  
- **Value:** 0  

### ❌ Finding:
- Registry path does not exist  
- OR value is missing  
- OR value is not set to `0`  

---

## 🔧 Fix (Manual Remediation)

### Step 1: Create Registry Path (if it does not exist)

Navigate to:
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows

Create the following keys:
- `WinRM`
- `Service`

### Step 2: Create the Registry Value

- Right-click → **New → DWORD (32-bit) Value**
- Name: `AllowBasic`
- Set Value:
  - Decimal: `0`  
  - *(Hexadecimal 0 is also acceptable)*  

---

## 💻 PowerShell Remediation Script

The remediation script is available in this repository:

📄 **Script Name:** `WN11-CC-000345-WinRM-AllowBasic.ps1`  
📁 **Location:** `/WN11-CC-000345/`

### ▶️ How to Run

```powershell
.\WN11-CC-000345-WinRM-AllowBasic.ps1
🔑 Key Snippet
New-ItemProperty -Path $registryPath -Name "AllowBasic" -Value 0 -PropertyType DWORD -Force
✅ Verification
After applying the fix, run:
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service"
✔ Expected Output:
AllowBasic : 0

🧠 Lessons Learned
Not all STIG registry paths exist by default—you must create them manually or via script
Understanding authentication mechanisms (Basic vs Kerberos/Negotiate) is critical for both:
STIG compliance
SOC/Cybersecurity roles
PowerShell can efficiently:
Validate registry paths
Create missing keys
Enforce secure configurations at scale

---
