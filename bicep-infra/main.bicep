targetScope = 'subscription'

// ========== //
// Parameters //
// ========== //

@minLength(2)
@maxLength(11)
param projectCode string
@allowed([
  'dev'
  'prd'
])
@maxLength(3)
@minLength(3)
param environment string
@allowed([
  'northeurope'
])
param location string
@allowed([
  'ne'
])
param locationShort string

// ========== //
// Resource group //
// ========== //
resource rgNetwork 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: 'rg-${projectCode}-${environment}-${locationShort}'
  location: location
}
