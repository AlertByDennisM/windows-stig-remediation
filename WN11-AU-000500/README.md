# STIG: WN11-AU-000500 — Application Event Log MaxSize

**Description:**  
Ensures the Windows Application event log has a maximum size of at least **32 MB (32768 KB)**.

**Category:** Windows 11 STIG  
**Setting:** Event Log → Application → MaxSize  
**Registry Path:**  
`HKLM\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application`

---

## ✔️ Script File
`WN11-AU-000500-ApplicationLogMaxSize.ps1`

This script:
- Creates the registry path if it does not exist
- Sets the **MaxSize (DWORD)** value to **0x8000 (32768 KB)**
- Outputs a confirmation message

---

## 🧪 Testing Information
**Date Tested:** 12/02/2025
**Tested By:** Dennis Medder  
**Tested On:** Windows 11  
**PowerShell Version:** 5.1 / 7.x

---

## ▶️ Usage

Run PowerShell as Administrator:

```powershell
.\WN11-AU-000500-ApplicationLogMaxSize.ps1
