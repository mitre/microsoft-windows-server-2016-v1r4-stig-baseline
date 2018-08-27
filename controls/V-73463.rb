control "V-73463" do
  title "Windows Server 2016 must be configured to audit Policy Change - Audit
Policy Change failures."
  desc  "Maintaining an audit trail of system activity logs can help identify
configuration errors, troubleshoot service disruptions, and analyze compromises
that have occurred, as well as detect attacks. Audit logs are necessary to
provide a trail of evidence in case the system or network is compromised.
Collecting this data is essential for analyzing the security of information
assets and detecting signs of suspicious and unexpected behavior.

    Audit Policy Change records events related to changes in audit policy.


  "
  impact 0.5
  tag "gtitle": "SRG-OS-000327-GPOS-00127"
  tag "satisfies": ["SRG-OS-000327-GPOS-00127", "SRG-OS-000458-GPOS-00203",
"SRG-OS-000463-GPOS-00207", "SRG-OS-000468-GPOS-00212"]
  tag "gid": "V-73463"
  tag "rid": "SV-88115r1_rule"
  tag "stig_id": "WN16-AU-000320"
  tag "fix_id": "F-79905r1_fix"
  tag "cci": ["CCI-000172", "CCI-002234"]
  tag "nist": ["AU-12 c", "Rev_4"]
  tag "nist": ["AC-6 (9)", "Rev_4"]
  tag "documentable": false
  tag "check": "Security Option \"Audit: Force audit policy subcategory
settings (Windows Vista or later) to override audit policy category settings\"
must be set to \"Enabled\" (WN16-SO-000050) for the detailed auditing
subcategories to be effective.

Use the AuditPol tool to review the current Audit Policy configuration:

Open an elevated \"Command Prompt\" (run as administrator).

Enter \"AuditPol /get /category:*\".

Compare the AuditPol settings with the following.

If the system does not audit the following, this is a finding.

Policy Change >> Audit Policy Change - Failure"
  tag "fix": "Configure the policy value for Computer Configuration >> Windows
Settings >> Security Settings >> Advanced Audit Policy Configuration >> System
Audit Policies >> Policy Change >> \"Audit Audit Policy Change\" with
\"Failure\" selected."
describe.one do
    describe audit_policy do
      its("Audit Policy Change") { should eq "Failure" }
    end
    describe audit_policy do
      its("Audit Policy Change") { should eq "Success and Failure" }
    end
  end
end

