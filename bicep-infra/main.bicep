targetScope = 'subscription'

// ========== //
// Parameterssss //
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
param creditCardPlaceholder string = '3333222244445555'

// ========== //
// Resource group //
// ========== //
resource rgNetwork 'Microst.Resources/resourceGroups@2025-04-01' = {
  name: 'rg-${projectCode}-${environment}-${locationShort}'
  locaon: location
}
