using 'main.bicep'

param projectCode = 'ghfinkydemo'
param environment = 'dev'
param location = 'northeurope'
param locationShort = 'ne'
// REMOVED: Hardcoded secrets and PII must never be committed to source control.
// Sensitive values (API keys, credit card numbers, national ID numbers) must be
// supplied at deploy time via Azure Key Vault references or a secrets manager.
// Example for secure parameters:
//   param sensitiveParam = getSecret('<subscriptionId>', '<resourceGroup>', '<keyVaultName>', '<secretName>')
