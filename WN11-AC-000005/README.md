# 🛡️ STIG: WN11-AC-000005 — Account Lockout Duration

---

## 📌 Overview
This Security Technical Implementation Guide (STIG) ensures that the account lockout duration is configured properly on Windows 11 systems.

This setting helps protect against brute-force password attacks by keeping accounts locked after repeated failed login attempts.

---

## 🔍 STIG Details

- **STIG ID:** WN11-AC-000005  
- **Severity:** CAT II (Medium)  
- **CCI:** CCI-002238  
- **SRG:** SRG-OS-000329-GPOS-00128  

---

## ⚠️ Vulnerability Discussion

The account lockout duration determines how long an account remains locked after exceeding the allowed number of failed login attempts.

If the duration is too short, attackers may repeatedly attempt password guessing. A longer lockout duration reduces the effectiveness of brute-force attacks.

---

## 🔎 Check (Manual Verification)

1. Open:
gpedit.msc

2. Navigate to:
Computer Configuration
└── Windows Settings
└── Security Settings
└── Account Policies
└── Account Lockout Policy

3. Verify:

- **Policy Name:** Account lockout duration  
- **Expected Value:** `15` minutes or greater  

### ❌ Finding:
- Value is less than `15` minutes  
- Policy is not configured  

---

## 🔧 Fix (Manual Remediation)

1. Open:
gpedit.msc

2. Navigate to:
Computer Configuration
└── Windows Settings
└── Security Settings
└── Account Policies
└── Account Lockout Policy

3. Configure:
- **Policy Name:** Account lockout duration  
- **Value:** `15` minutes or greater  

### Notes:
- A value of `0` is also acceptable (requires administrator to unlock the account)

---

## 💻 PowerShell Remediation Script

The remediation script is included in this repository:

📄 **Script Name:** `WN11-AC-000005-AccountLockoutDuration.ps1`  
📁 **Location:** `/WN11-AC-000005/`

### ▶️ How to Run

```powershell
.\WN11-AC-000005-AccountLockoutDuration.ps1
🔑 Key Snippet
net accounts /lockoutduration:15

✅ Verification
Run:
net accounts
✔ Expected Output:
Lockout duration (minutes):                    15

🧠 Lessons Learned
Account lockout policies help defend against brute-force attacks
Some STIGs are configured through system policies instead of registry settings
Command-line tools like net accounts can enforce security configurations efficiently
