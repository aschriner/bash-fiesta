# Use this pattern if you need to pull "secrets" from environment variables and create a file
# containing the secret
cat > ./somefile.txt << EOF
MY_SSN=123-45-6789
MY_BANK_ACCOUNT_NUM=123456789
MY_BANK_ACCOUNT_LOGIN=$MY_BANK_ACCOUNT_LOGIN
MY_BANK_ACCOUNT_PASSWORD=$MY_BANK_ACCOUNT_PASSWORD
EOF
