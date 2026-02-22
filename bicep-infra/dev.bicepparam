using 'main.bicep'

param projectCode = 'ghfinkydemo'
param environment = 'dev'
param location = 'northeurope'
param locationShort = 'ne'
// SECURITY: Sensitive values (API keys, PII, payment data) must NOT be hardcoded here.
// Use Azure Key Vault secret references instead:
// param databaseAPIKEY = getSecret('<subscriptionId>', '<resourceGroupName>', '<keyVaultName>', 'databaseAPIKEY')
// param AIAPIKEY      = getSecret('<subscriptionId>', '<resourceGroupName>', '<keyVaultName>', 'AIAPIKEY')
// Remove any PII (e.g. PESEL numbers) and payment card data entirely - they have no place in IaC files.
