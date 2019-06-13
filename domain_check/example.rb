control "xccdf_org.cisecurity.benchmarks_rule_1.1.1_L1_Ensure_Enforce_password_history_is_set_to_24_or_more_passwords" do
  title "(L1) Ensure 'Enforce password history' is set to '24 or more password(s)'"
  desc  "
    This policy setting determines the number of renewed, unique passwords that have to be associated with a user account before you can reuse an old password. The value for this policy setting must be between 0 and 24 passwords. The default value for Windows Vista is 0 passwords, but the default setting in a domain is 24 passwords. To maintain the effectiveness of this policy setting, use the Minimum password age setting to prevent users from repeatedly changing their password.

    The recommended state for this setting is: 24 or more password(s).

    Rationale: The longer a user uses the same password, the greater the chance that an attacker can determine the password through brute force attacks. Also, any accounts that may have been compromised will remain exploitable for as long as the password is left unchanged. If password changes are required but password reuse is not prevented, or if users continually reuse a small number of passwords, the effectiveness of a good password policy is greatly reduced.

    If you specify a low number for this policy setting, users will be able to use the same small number of passwords repeatedly. If you do not also configure the Minimum password age setting, users might repeatedly change their passwords until they can reuse their original password.
  "
  impact 1.0
  describe security_policy do
    its("PasswordHistorySize") { should be >= 24 }
  end
end

control "xccdf_org.cisecurity.benchmarks_rule_1.1.4_L1_Ensure_Minimum_password_length_is_set_to_14_or_more_characters" do
  title "(L1) Ensure 'Minimum password length' is set to '14 or more character(s)'"
  desc  "
    This policy setting determines the least number of characters that make up a password for a user account. There are many different theories about how to determine the best password length for an organization, but perhaps \"pass phrase\" is a better term than \"password.\" In Microsoft Windows 2000 and newer, pass phrases can be quite long and can include spaces. Therefore, a phrase such as \"I want to drink a $5 milkshake\" is a valid pass phrase; it is a considerably stronger password than an 8 or 10 character string of random numbers and letters, and yet is easier to remember. Users must be educated about the proper selection and maintenance of passwords, especially with regard to password length. In enterprise environments, the ideal value for the Minimum password length setting is 14 characters, however you should adjust this value to meet your organization's business requirements.

    The recommended state for this setting is: 14 or more character(s).

    Rationale: Types of password attacks include dictionary attacks (which attempt to use common words and phrases) and brute force attacks (which try every possible combination of characters). Also, attackers sometimes try to obtain the account database so they can use tools to discover the accounts and passwords.
  "
  impact 1.0
  describe security_policy do
    its("MinimumPasswordLength") { should be >= 14 }
  end
end
