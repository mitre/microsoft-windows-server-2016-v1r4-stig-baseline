control "V-73241" do
  title "The Windows Server 2016 system must use an anti-virus program."
  desc  "Malicious software can establish a base on individual desktops and
  servers. Employing an automated mechanism to detect this type of software will
  aid in elimination of the software from the operating system."
  impact 0.7
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-73241"
  tag "rid": "SV-87893r2_rule"
  tag "stig_id": "WN16-00-000120"
  tag "fix_id": "F-84913r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
  tag "documentable": false
  tag "check": "Verify an anti-virus solution is installed on the system. The
  anti-virus solution may be bundled with an approved host-based security
  solution.

  If there is no anti-virus solution installed on the system, this is a finding."
  tag "fix": "Install an anti-virus solution on the system."
  describe "Server systems must be located in a controlled area" do
    skip "is a manual check"
  end
end

