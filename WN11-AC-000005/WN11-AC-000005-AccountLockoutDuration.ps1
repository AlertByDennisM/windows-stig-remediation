# WN11-AC-000005 - Account Lockout Duration

Write-Output "Applying STIG WN11-AC-000005..."

# Set lockout duration to 15 minutes
net accounts /lockoutduration:15

# Verify configuration
Write-Output "Verifying configuration..."
net accounts

Write-Output "Remediation complete."
