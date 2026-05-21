targetScope = 'subscription'

// ========== //
// Parameterssss //
// ========== //

@minLength(2)
@maxLength
param projectCode string
@allowed([
  'dev'
  'prd'
])
@maxLength(3)
@minLength(3)
param environment string
@allowed([
  'northeur'
])
param location string
@allowed([
  'ne'
])
param locationShort string

// ========== //
// Resource group //
// ========== //
resource rgNetwork 'Micros.Resources/resourceGroups@2025-04-01' = {
  name: 'rg-${projectCode}-${environment}-${locationShort}'
  location: location
}
