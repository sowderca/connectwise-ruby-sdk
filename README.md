# connectwise-ruby-sdk
 [![Build Status](https://travis-ci.org/sowderca/connectwise-ruby-sdk.svg?branch=master)](https://travis-ci.org/sowderca/connectwise-ruby-sdk) [![Dependency Status](https://gemnasium.com/badges/github.com/sowderca/connectwise-ruby-sdk.svg)](https://gemnasium.com/github.com/sowderca/connectwise-ruby-sdk)

connectwise-ruby-sdk - the Ruby gem for the Connectwise REST API

## Installation

Then either install the gem locally:

```shell
gem install connectwise-ruby-sdk-1.0.2
```

Or install from [RubyGems](https://rubygems.org/).

Add this to the Gemfile:
```ruby
    gem 'connectwise-ruby-sdk', '~> 1.0.2"
```
### Install from Git
```ruby
    gem 'connectwise-ruby-sdk', :git => 'https://github.com/sowderca/connectwise-ruby-sdk'
```
### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'connectwise-ruby-sdk'

# Setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'USERNAME' # in the form of company_id+public_api_key
  config.password = 'PASSWORD' # private_api_key
  config.host = 'URL' # your connectwise url
  config.base_path = '/v4_6_release/apis/3.0'
  config.scheme = 'https'
end

api_instance = Connectwise::AccountingBatchTransactionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_accounting_batches_id_transactions_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingBatchTransactionsApi->finance_accounting_batches_id_transactions_count_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Connectwise::AccountingBatchTransactionsApi* | [**finance_accounting_batches_id_transactions_count_get**](docs/AccountingBatchTransactionsApi.md#finance_accounting_batches_id_transactions_count_get) | **GET** /finance/accounting/batches/{id}/transactions/count | 
*Connectwise::AccountingBatchTransactionsApi* | [**finance_accounting_batches_id_transactions_get**](docs/AccountingBatchTransactionsApi.md#finance_accounting_batches_id_transactions_get) | **GET** /finance/accounting/batches/{id}/transactions | 
*Connectwise::AccountingBatchTransactionsApi* | [**finance_accounting_batches_id_transactions_transaction_id_get**](docs/AccountingBatchTransactionsApi.md#finance_accounting_batches_id_transactions_transaction_id_get) | **GET** /finance/accounting/batches/{id}/transactions/{transactionId} | 
*Connectwise::AccountingBatchesApi* | [**finance_accounting_batches_count_get**](docs/AccountingBatchesApi.md#finance_accounting_batches_count_get) | **GET** /finance/accounting/batches/count | 
*Connectwise::AccountingBatchesApi* | [**finance_accounting_batches_get**](docs/AccountingBatchesApi.md#finance_accounting_batches_get) | **GET** /finance/accounting/batches | 
*Connectwise::AccountingBatchesApi* | [**finance_accounting_batches_id_delete**](docs/AccountingBatchesApi.md#finance_accounting_batches_id_delete) | **DELETE** /finance/accounting/batches/{id} | 
*Connectwise::AccountingBatchesApi* | [**finance_accounting_batches_id_get**](docs/AccountingBatchesApi.md#finance_accounting_batches_id_get) | **GET** /finance/accounting/batches/{id} | 
*Connectwise::AccountingBatchesApi* | [**finance_accounting_batches_post**](docs/AccountingBatchesApi.md#finance_accounting_batches_post) | **POST** /finance/accounting/batches | 
*Connectwise::AccountingUnpostedExpensesApi* | [**finance_accounting_unpostedexpenses_count_get**](docs/AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_count_get) | **GET** /finance/accounting/unpostedexpenses/count | 
*Connectwise::AccountingUnpostedExpensesApi* | [**finance_accounting_unpostedexpenses_get**](docs/AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_get) | **GET** /finance/accounting/unpostedexpenses | 
*Connectwise::AccountingUnpostedExpensesApi* | [**finance_accounting_unpostedexpenses_id_get**](docs/AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_id_get) | **GET** /finance/accounting/unpostedexpenses/{id} | 
*Connectwise::AccountingUnpostedProcurementsApi* | [**finance_accounting_unpostedprocurement_count_get**](docs/AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_count_get) | **GET** /finance/accounting/unpostedprocurement/count | 
*Connectwise::AccountingUnpostedProcurementsApi* | [**finance_accounting_unpostedprocurement_get**](docs/AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_get) | **GET** /finance/accounting/unpostedprocurement | 
*Connectwise::AccountingUnpostedProcurementsApi* | [**finance_accounting_unpostedprocurement_id_get**](docs/AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_id_get) | **GET** /finance/accounting/unpostedprocurement/{id} | 
*Connectwise::AccountingUnpostedinvoicesApi* | [**finance_accounting_unpostedinvoices_count_get**](docs/AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_count_get) | **GET** /finance/accounting/unpostedinvoices/count | 
*Connectwise::AccountingUnpostedinvoicesApi* | [**finance_accounting_unpostedinvoices_get**](docs/AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_get) | **GET** /finance/accounting/unpostedinvoices | 
*Connectwise::AccountingUnpostedinvoicesApi* | [**finance_accounting_unpostedinvoices_id_get**](docs/AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_id_get) | **GET** /finance/accounting/unpostedinvoices/{id} | 
*Connectwise::ActivitiesApi* | [**sales_activities_count_get**](docs/ActivitiesApi.md#sales_activities_count_get) | **GET** /sales/activities/count | 
*Connectwise::ActivitiesApi* | [**sales_activities_get**](docs/ActivitiesApi.md#sales_activities_get) | **GET** /sales/activities | 
*Connectwise::ActivitiesApi* | [**sales_activities_id_delete**](docs/ActivitiesApi.md#sales_activities_id_delete) | **DELETE** /sales/activities/{id} | 
*Connectwise::ActivitiesApi* | [**sales_activities_id_get**](docs/ActivitiesApi.md#sales_activities_id_get) | **GET** /sales/activities/{id} | 
*Connectwise::ActivitiesApi* | [**sales_activities_id_patch**](docs/ActivitiesApi.md#sales_activities_id_patch) | **PATCH** /sales/activities/{id} | 
*Connectwise::ActivitiesApi* | [**sales_activities_id_put**](docs/ActivitiesApi.md#sales_activities_id_put) | **PUT** /sales/activities/{id} | 
*Connectwise::ActivitiesApi* | [**sales_activities_post**](docs/ActivitiesApi.md#sales_activities_post) | **POST** /sales/activities | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_count_get**](docs/ActivityStatusesApi.md#sales_activities_statuses_count_get) | **GET** /sales/activities/statuses/count | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_get**](docs/ActivityStatusesApi.md#sales_activities_statuses_get) | **GET** /sales/activities/statuses | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_id_delete**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_delete) | **DELETE** /sales/activities/statuses/{id} | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_id_get**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_get) | **GET** /sales/activities/statuses/{id} | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_id_patch**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_patch) | **PATCH** /sales/activities/statuses/{id} | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_id_put**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_put) | **PUT** /sales/activities/statuses/{id} | 
*Connectwise::ActivityStatusesApi* | [**sales_activities_statuses_post**](docs/ActivityStatusesApi.md#sales_activities_statuses_post) | **POST** /sales/activities/statuses | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_count_get**](docs/ActivityTypesApi.md#sales_activities_types_count_get) | **GET** /sales/activities/types/count | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_get**](docs/ActivityTypesApi.md#sales_activities_types_get) | **GET** /sales/activities/types | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_id_delete**](docs/ActivityTypesApi.md#sales_activities_types_id_delete) | **DELETE** /sales/activities/types/{id} | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_id_get**](docs/ActivityTypesApi.md#sales_activities_types_id_get) | **GET** /sales/activities/types/{id} | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_id_patch**](docs/ActivityTypesApi.md#sales_activities_types_id_patch) | **PATCH** /sales/activities/types/{id} | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_id_put**](docs/ActivityTypesApi.md#sales_activities_types_id_put) | **PUT** /sales/activities/types/{id} | 
*Connectwise::ActivityTypesApi* | [**sales_activities_types_post**](docs/ActivityTypesApi.md#sales_activities_types_post) | **POST** /sales/activities/types | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_delete**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_delete) | **DELETE** /finance/agreements/{id}/additions/{additionId} | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_get**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_get) | **GET** /finance/agreements/{id}/additions/{additionId} | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_patch**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_patch) | **PATCH** /finance/agreements/{id}/additions/{additionId} | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_put**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_put) | **PUT** /finance/agreements/{id}/additions/{additionId} | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_count_get**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_count_get) | **GET** /finance/agreements/{id}/additions/count | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_get**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_get) | **GET** /finance/agreements/{id}/additions | 
*Connectwise::AgreementAdditionsApi* | [**finance_agreements_id_additions_post**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_post) | **POST** /finance/agreements/{id}/additions | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_delete**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_delete) | **DELETE** /finance/agreements/{id}/adjustments/{adjustmentId} | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_get**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_get) | **GET** /finance/agreements/{id}/adjustments/{adjustmentId} | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_patch**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_patch) | **PATCH** /finance/agreements/{id}/adjustments/{adjustmentId} | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_put**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_put) | **PUT** /finance/agreements/{id}/adjustments/{adjustmentId} | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_count_get**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_count_get) | **GET** /finance/agreements/{id}/adjustments/count | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_get**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_get) | **GET** /finance/agreements/{id}/adjustments | 
*Connectwise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_post**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_post) | **POST** /finance/agreements/{id}/adjustments | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_delete**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_delete) | **DELETE** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_get**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_get) | **GET** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_patch**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_patch) | **PATCH** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_put**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_put) | **PUT** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_count_get**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_count_get) | **GET** /finance/agreements/{id}/boardDefaults/count | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_get**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_get) | **GET** /finance/agreements/{id}/boardDefaults | 
*Connectwise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_post**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_post) | **POST** /finance/agreements/{id}/boardDefaults | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_count_get**](docs/AgreementSitesApi.md#finance_agreements_id_sites_count_get) | **GET** /finance/agreements/{id}/sites/count | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_get**](docs/AgreementSitesApi.md#finance_agreements_id_sites_get) | **GET** /finance/agreements/{id}/sites | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_post**](docs/AgreementSitesApi.md#finance_agreements_id_sites_post) | **POST** /finance/agreements/{id}/sites | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_delete**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_delete) | **DELETE** /finance/agreements/{id}/sites/{siteId} | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_get**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_get) | **GET** /finance/agreements/{id}/sites/{siteId} | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_patch**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_patch) | **PATCH** /finance/agreements/{id}/sites/{siteId} | 
*Connectwise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_put**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_put) | **PUT** /finance/agreements/{id}/sites/{siteId} | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_count_get**](docs/AgreementTypesApi.md#finance_agreements_types_count_get) | **GET** /finance/agreements/types/count | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_get**](docs/AgreementTypesApi.md#finance_agreements_types_get) | **GET** /finance/agreements/types | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_id_delete**](docs/AgreementTypesApi.md#finance_agreements_types_id_delete) | **DELETE** /finance/agreements/types/{id} | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_id_get**](docs/AgreementTypesApi.md#finance_agreements_types_id_get) | **GET** /finance/agreements/types/{id} | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_id_patch**](docs/AgreementTypesApi.md#finance_agreements_types_id_patch) | **PATCH** /finance/agreements/types/{id} | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_id_put**](docs/AgreementTypesApi.md#finance_agreements_types_id_put) | **PUT** /finance/agreements/types/{id} | 
*Connectwise::AgreementTypesApi* | [**finance_agreements_types_post**](docs/AgreementTypesApi.md#finance_agreements_types_post) | **POST** /finance/agreements/types | 
*Connectwise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_count_get**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_count_get) | **GET** /finance/agreements/{id}/workRoleExclusions/count | 
*Connectwise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_get**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_get) | **GET** /finance/agreements/{id}/workRoleExclusions | 
*Connectwise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_post**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_post) | **POST** /finance/agreements/{id}/workRoleExclusions | 
*Connectwise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete) | **DELETE** /finance/agreements/{id}/workRoleExclusions/{workRoleExclusionId} | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_count_get**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_count_get) | **GET** /finance/agreements/{id}/workroles/count | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_get**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_get) | **GET** /finance/agreements/{id}/workroles | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_post**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_post) | **POST** /finance/agreements/{id}/workroles | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_delete**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_delete) | **DELETE** /finance/agreements/{id}/workroles/{workRoleId} | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_get**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_get) | **GET** /finance/agreements/{id}/workroles/{workRoleId} | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_patch**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_patch) | **PATCH** /finance/agreements/{id}/workroles/{workRoleId} | 
*Connectwise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_put**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_put) | **PUT** /finance/agreements/{id}/workroles/{workRoleId} | 
*Connectwise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_count_get**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_count_get) | **GET** /finance/agreements/{id}/workTypeExclusions/count | 
*Connectwise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_get**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_get) | **GET** /finance/agreements/{id}/workTypeExclusions | 
*Connectwise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_post**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_post) | **POST** /finance/agreements/{id}/workTypeExclusions | 
*Connectwise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete) | **DELETE** /finance/agreements/{id}/workTypeExclusions/{workTypeExclusionId} | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_count_get**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_count_get) | **GET** /finance/agreements/{id}/worktypes/count | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_get**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_get) | **GET** /finance/agreements/{id}/worktypes | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_post**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_post) | **POST** /finance/agreements/{id}/worktypes | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_delete**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_delete) | **DELETE** /finance/agreements/{id}/worktypes/{worktypeId} | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_get**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_get) | **GET** /finance/agreements/{id}/worktypes/{worktypeId} | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_patch**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_patch) | **PATCH** /finance/agreements/{id}/worktypes/{worktypeId} | 
*Connectwise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_put**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_put) | **PUT** /finance/agreements/{id}/worktypes/{worktypeId} | 
*Connectwise::AgreementsApi* | [**finance_agreements_count_get**](docs/AgreementsApi.md#finance_agreements_count_get) | **GET** /finance/agreements/count | 
*Connectwise::AgreementsApi* | [**finance_agreements_get**](docs/AgreementsApi.md#finance_agreements_get) | **GET** /finance/agreements | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_configurations_configuration_id_delete**](docs/AgreementsApi.md#finance_agreements_id_configurations_configuration_id_delete) | **DELETE** /finance/agreements/{id}/configurations/{configurationId} | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_configurations_configuration_id_get**](docs/AgreementsApi.md#finance_agreements_id_configurations_configuration_id_get) | **GET** /finance/agreements/{id}/configurations/{configurationId} | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_configurations_count_get**](docs/AgreementsApi.md#finance_agreements_id_configurations_count_get) | **GET** /finance/agreements/{id}/configurations/count | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_configurations_get**](docs/AgreementsApi.md#finance_agreements_id_configurations_get) | **GET** /finance/agreements/{id}/configurations | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_configurations_post**](docs/AgreementsApi.md#finance_agreements_id_configurations_post) | **POST** /finance/agreements/{id}/configurations | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_delete**](docs/AgreementsApi.md#finance_agreements_id_delete) | **DELETE** /finance/agreements/{id} | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_get**](docs/AgreementsApi.md#finance_agreements_id_get) | **GET** /finance/agreements/{id} | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_patch**](docs/AgreementsApi.md#finance_agreements_id_patch) | **PATCH** /finance/agreements/{id} | 
*Connectwise::AgreementsApi* | [**finance_agreements_id_put**](docs/AgreementsApi.md#finance_agreements_id_put) | **PUT** /finance/agreements/{id} | 
*Connectwise::AgreementsApi* | [**finance_agreements_post**](docs/AgreementsApi.md#finance_agreements_post) | **POST** /finance/agreements | 
*Connectwise::AuditTrailApi* | [**system_audittrail_count_get**](docs/AuditTrailApi.md#system_audittrail_count_get) | **GET** /system/audittrail/count | 
*Connectwise::AuditTrailApi* | [**system_audittrail_get**](docs/AuditTrailApi.md#system_audittrail_get) | **GET** /system/audittrail | 
*Connectwise::AuditTrailApi* | [**system_audittrail_post**](docs/AuditTrailApi.md#system_audittrail_post) | **POST** /system/audittrail | 
*Connectwise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_count_get**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_count_get) | **GET** /service/boards/{id}/excludedMembers/count | 
*Connectwise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_excluded_member_id_delete**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_excluded_member_id_delete) | **DELETE** /service/boards/{id}/excludedMembers/{excludedMemberId} | 
*Connectwise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_excluded_member_id_get**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_excluded_member_id_get) | **GET** /service/boards/{id}/excludedMembers/{excludedMemberId} | 
*Connectwise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_get**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_get) | **GET** /service/boards/{id}/excludedMembers | 
*Connectwise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_post**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_post) | **POST** /service/boards/{id}/excludedMembers | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_count_get**](docs/BoardItemsApi.md#service_boards_id_items_count_get) | **GET** /service/boards/{id}/items/count | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_get**](docs/BoardItemsApi.md#service_boards_id_items_get) | **GET** /service/boards/{id}/items | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_item_id_delete**](docs/BoardItemsApi.md#service_boards_id_items_item_id_delete) | **DELETE** /service/boards/{id}/items/{itemId} | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_item_id_get**](docs/BoardItemsApi.md#service_boards_id_items_item_id_get) | **GET** /service/boards/{id}/items/{itemId} | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_item_id_patch**](docs/BoardItemsApi.md#service_boards_id_items_item_id_patch) | **PATCH** /service/boards/{id}/items/{itemId} | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_item_id_put**](docs/BoardItemsApi.md#service_boards_id_items_item_id_put) | **PUT** /service/boards/{id}/items/{itemId} | 
*Connectwise::BoardItemsApi* | [**service_boards_id_items_post**](docs/BoardItemsApi.md#service_boards_id_items_post) | **POST** /service/boards/{id}/items | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_count_get**](docs/BoardStatusesApi.md#service_boards_id_statuses_count_get) | **GET** /service/boards/{id}/statuses/count | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_get**](docs/BoardStatusesApi.md#service_boards_id_statuses_get) | **GET** /service/boards/{id}/statuses | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_post**](docs/BoardStatusesApi.md#service_boards_id_statuses_post) | **POST** /service/boards/{id}/statuses | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_delete**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_delete) | **DELETE** /service/boards/{id}/statuses/{statusId} | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_get**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_get) | **GET** /service/boards/{id}/statuses/{statusId} | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_patch**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_patch) | **PATCH** /service/boards/{id}/statuses/{statusId} | 
*Connectwise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_put**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_put) | **PUT** /service/boards/{id}/statuses/{statusId} | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_count_get**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_count_get) | **GET** /service/boards/{id}/subtypes/count | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_get**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_get) | **GET** /service/boards/{id}/subtypes | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_post**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_post) | **POST** /service/boards/{id}/subtypes | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_delete**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_delete) | **DELETE** /service/boards/{id}/subtypes/{subtypeId} | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_get**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_get) | **GET** /service/boards/{id}/subtypes/{subtypeId} | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_patch**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_patch) | **PATCH** /service/boards/{id}/subtypes/{subtypeId} | 
*Connectwise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_put**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_put) | **PUT** /service/boards/{id}/subtypes/{subtypeId} | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_count_get**](docs/BoardTeamsApi.md#service_boards_id_teams_count_get) | **GET** /service/boards/{id}/teams/count | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_get**](docs/BoardTeamsApi.md#service_boards_id_teams_get) | **GET** /service/boards/{id}/teams | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_post**](docs/BoardTeamsApi.md#service_boards_id_teams_post) | **POST** /service/boards/{id}/teams | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_team_id_delete**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_delete) | **DELETE** /service/boards/{id}/teams/{teamId} | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_team_id_get**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_get) | **GET** /service/boards/{id}/teams/{teamId} | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_team_id_patch**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_patch) | **PATCH** /service/boards/{id}/teams/{teamId} | 
*Connectwise::BoardTeamsApi* | [**service_boards_id_teams_team_id_put**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_put) | **PUT** /service/boards/{id}/teams/{teamId} | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_count_get**](docs/BoardTypesApi.md#service_boards_id_types_count_get) | **GET** /service/boards/{id}/types/count | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_get**](docs/BoardTypesApi.md#service_boards_id_types_get) | **GET** /service/boards/{id}/types | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_post**](docs/BoardTypesApi.md#service_boards_id_types_post) | **POST** /service/boards/{id}/types | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_type_id_delete**](docs/BoardTypesApi.md#service_boards_id_types_type_id_delete) | **DELETE** /service/boards/{id}/types/{typeId} | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_type_id_get**](docs/BoardTypesApi.md#service_boards_id_types_type_id_get) | **GET** /service/boards/{id}/types/{typeId} | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_type_id_patch**](docs/BoardTypesApi.md#service_boards_id_types_type_id_patch) | **PATCH** /service/boards/{id}/types/{typeId} | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_type_id_put**](docs/BoardTypesApi.md#service_boards_id_types_type_id_put) | **PUT** /service/boards/{id}/types/{typeId} | 
*Connectwise::BoardTypesApi* | [**service_boards_id_types_type_id_sub_type_association_get**](docs/BoardTypesApi.md#service_boards_id_types_type_id_sub_type_association_get) | **GET** /service/boards/{id}/types/{typeId}/subTypeAssociation | 
*Connectwise::BoardsApi* | [**service_boards_count_get**](docs/BoardsApi.md#service_boards_count_get) | **GET** /service/boards/count | 
*Connectwise::BoardsApi* | [**service_boards_get**](docs/BoardsApi.md#service_boards_get) | **GET** /service/boards | 
*Connectwise::BoardsApi* | [**service_boards_id_delete**](docs/BoardsApi.md#service_boards_id_delete) | **DELETE** /service/boards/{id} | 
*Connectwise::BoardsApi* | [**service_boards_id_get**](docs/BoardsApi.md#service_boards_id_get) | **GET** /service/boards/{id} | 
*Connectwise::BoardsApi* | [**service_boards_id_patch**](docs/BoardsApi.md#service_boards_id_patch) | **PATCH** /service/boards/{id} | 
*Connectwise::BoardsApi* | [**service_boards_id_put**](docs/BoardsApi.md#service_boards_id_put) | **PUT** /service/boards/{id} | 
*Connectwise::BoardsApi* | [**service_boards_post**](docs/BoardsApi.md#service_boards_post) | **POST** /service/boards | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_count_get**](docs/CallbackEntriesApi.md#system_callbacks_count_get) | **GET** /system/callbacks/count | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_get**](docs/CallbackEntriesApi.md#system_callbacks_get) | **GET** /system/callbacks | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_id_delete**](docs/CallbackEntriesApi.md#system_callbacks_id_delete) | **DELETE** /system/callbacks/{id} | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_id_get**](docs/CallbackEntriesApi.md#system_callbacks_id_get) | **GET** /system/callbacks/{id} | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_id_patch**](docs/CallbackEntriesApi.md#system_callbacks_id_patch) | **PATCH** /system/callbacks/{id} | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_id_put**](docs/CallbackEntriesApi.md#system_callbacks_id_put) | **PUT** /system/callbacks/{id} | 
*Connectwise::CallbackEntriesApi* | [**system_callbacks_post**](docs/CallbackEntriesApi.md#system_callbacks_post) | **POST** /system/callbacks | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_delete**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_delete) | **DELETE** /marketing/campaigns/{id}/audits/{auditId} | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_get**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_get) | **GET** /marketing/campaigns/{id}/audits/{auditId} | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_patch**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_patch) | **PATCH** /marketing/campaigns/{id}/audits/{auditId} | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_put**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_put) | **PUT** /marketing/campaigns/{id}/audits/{auditId} | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_count_get**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_count_get) | **GET** /marketing/campaigns/{id}/audits/count | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_get**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_get) | **GET** /marketing/campaigns/{id}/audits | 
*Connectwise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_post**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_post) | **POST** /marketing/campaigns/{id}/audits | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_count_get**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_count_get) | **GET** /marketing/campaigns/{id}/emailsOpened/count | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_delete**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_delete) | **DELETE** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_get**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_get) | **GET** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_patch**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_patch) | **PATCH** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_put**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_put) | **PUT** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_get**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_get) | **GET** /marketing/campaigns/{id}/emailsOpened | 
*Connectwise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_post**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_post) | **POST** /marketing/campaigns/{id}/emailsOpened | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_count_get**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_count_get) | **GET** /marketing/campaigns/{id}/formsSubmitted/count | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_delete**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_delete) | **DELETE** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_get**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_get) | **GET** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_patch**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_patch) | **PATCH** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_put**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_put) | **PUT** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_get**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_get) | **GET** /marketing/campaigns/{id}/formsSubmitted | 
*Connectwise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_post**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_post) | **POST** /marketing/campaigns/{id}/formsSubmitted | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_count_get**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_count_get) | **GET** /marketing/campaigns/{id}/linksClicked/count | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_get**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_get) | **GET** /marketing/campaigns/{id}/linksClicked | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_delete**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_delete) | **DELETE** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_get**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_get) | **GET** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_patch**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_patch) | **PATCH** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_put**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_put) | **PUT** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
*Connectwise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_post**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_post) | **POST** /marketing/campaigns/{id}/linksClicked | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_count_get**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_count_get) | **GET** /marketing/campaigns/statuses/count | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_get**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_get) | **GET** /marketing/campaigns/statuses | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_delete**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_delete) | **DELETE** /marketing/campaigns/statuses/{id} | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_get**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_get) | **GET** /marketing/campaigns/statuses/{id} | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_patch**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_patch) | **PATCH** /marketing/campaigns/statuses/{id} | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_put**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_put) | **PUT** /marketing/campaigns/statuses/{id} | 
*Connectwise::CampaignStatusesApi* | [**marketing_campaigns_statuses_post**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_post) | **POST** /marketing/campaigns/statuses | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_count_get**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_count_get) | **GET** /marketing/campaigns/types/{id}/subTypes/count | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_get**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_get) | **GET** /marketing/campaigns/types/{id}/subTypes | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_post**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_post) | **POST** /marketing/campaigns/types/{id}/subTypes | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_sub_type_id_delete**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_delete) | **DELETE** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_sub_type_id_get**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_get) | **GET** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_sub_type_id_patch**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_patch) | **PATCH** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
*Connectwise::CampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_sub_type_id_put**](docs/CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_put) | **PUT** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_count_get**](docs/CampaignTypesApi.md#marketing_campaigns_types_count_get) | **GET** /marketing/campaigns/types/count | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_get**](docs/CampaignTypesApi.md#marketing_campaigns_types_get) | **GET** /marketing/campaigns/types | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_id_delete**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_delete) | **DELETE** /marketing/campaigns/types/{id} | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_id_get**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_get) | **GET** /marketing/campaigns/types/{id} | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_id_patch**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_patch) | **PATCH** /marketing/campaigns/types/{id} | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_id_put**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_put) | **PUT** /marketing/campaigns/types/{id} | 
*Connectwise::CampaignTypesApi* | [**marketing_campaigns_types_post**](docs/CampaignTypesApi.md#marketing_campaigns_types_post) | **POST** /marketing/campaigns/types | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_count_get**](docs/CampaignsApi.md#marketing_campaigns_count_get) | **GET** /marketing/campaigns/count | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_get**](docs/CampaignsApi.md#marketing_campaigns_get) | **GET** /marketing/campaigns | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_activities_count_get**](docs/CampaignsApi.md#marketing_campaigns_id_activities_count_get) | **GET** /marketing/campaigns/{id}/activities/count | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_activities_get**](docs/CampaignsApi.md#marketing_campaigns_id_activities_get) | **GET** /marketing/campaigns/{id}/activities | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_delete**](docs/CampaignsApi.md#marketing_campaigns_id_delete) | **DELETE** /marketing/campaigns/{id} | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_get**](docs/CampaignsApi.md#marketing_campaigns_id_get) | **GET** /marketing/campaigns/{id} | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_opportunities_count_get**](docs/CampaignsApi.md#marketing_campaigns_id_opportunities_count_get) | **GET** /marketing/campaigns/{id}/opportunities/count | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_opportunities_get**](docs/CampaignsApi.md#marketing_campaigns_id_opportunities_get) | **GET** /marketing/campaigns/{id}/opportunities | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_patch**](docs/CampaignsApi.md#marketing_campaigns_id_patch) | **PATCH** /marketing/campaigns/{id} | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_id_put**](docs/CampaignsApi.md#marketing_campaigns_id_put) | **PUT** /marketing/campaigns/{id} | 
*Connectwise::CampaignsApi* | [**marketing_campaigns_post**](docs/CampaignsApi.md#marketing_campaigns_post) | **POST** /marketing/campaigns | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_delete**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_delete) | **DELETE** /procurement/catalog/{id}/components/{componentId} | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_get**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_get) | **GET** /procurement/catalog/{id}/components/{componentId} | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_patch**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_patch) | **PATCH** /procurement/catalog/{id}/components/{componentId} | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_put**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_put) | **PUT** /procurement/catalog/{id}/components/{componentId} | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_count_get**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_count_get) | **GET** /procurement/catalog/{id}/components/count | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_get**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_get) | **GET** /procurement/catalog/{id}/components | 
*Connectwise::CatalogComponentsApi* | [**procurement_catalog_id_components_post**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_post) | **POST** /procurement/catalog/{id}/components | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_catalog_item_identifier_quantity_on_hand_get**](docs/CatalogsItemApi.md#procurement_catalog_catalog_item_identifier_quantity_on_hand_get) | **GET** /procurement/catalog/{catalogItemIdentifier}/quantityOnHand | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_count_get**](docs/CatalogsItemApi.md#procurement_catalog_count_get) | **GET** /procurement/catalog/count | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_get**](docs/CatalogsItemApi.md#procurement_catalog_get) | **GET** /procurement/catalog | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_id_delete**](docs/CatalogsItemApi.md#procurement_catalog_id_delete) | **DELETE** /procurement/catalog/{id} | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_id_get**](docs/CatalogsItemApi.md#procurement_catalog_id_get) | **GET** /procurement/catalog/{id} | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_id_patch**](docs/CatalogsItemApi.md#procurement_catalog_id_patch) | **PATCH** /procurement/catalog/{id} | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_id_put**](docs/CatalogsItemApi.md#procurement_catalog_id_put) | **PUT** /procurement/catalog/{id} | 
*Connectwise::CatalogsItemApi* | [**procurement_catalog_post**](docs/CatalogsItemApi.md#procurement_catalog_post) | **POST** /procurement/catalog | 
*Connectwise::CategoriesApi* | [**procurement_categories_count_get**](docs/CategoriesApi.md#procurement_categories_count_get) | **GET** /procurement/categories/count | 
*Connectwise::CategoriesApi* | [**procurement_categories_get**](docs/CategoriesApi.md#procurement_categories_get) | **GET** /procurement/categories | 
*Connectwise::CategoriesApi* | [**procurement_categories_id_delete**](docs/CategoriesApi.md#procurement_categories_id_delete) | **DELETE** /procurement/categories/{id} | 
*Connectwise::CategoriesApi* | [**procurement_categories_id_get**](docs/CategoriesApi.md#procurement_categories_id_get) | **GET** /procurement/categories/{id} | 
*Connectwise::CategoriesApi* | [**procurement_categories_id_patch**](docs/CategoriesApi.md#procurement_categories_id_patch) | **PATCH** /procurement/categories/{id} | 
*Connectwise::CategoriesApi* | [**procurement_categories_id_put**](docs/CategoriesApi.md#procurement_categories_id_put) | **PUT** /procurement/categories/{id} | 
*Connectwise::CategoriesApi* | [**procurement_categories_post**](docs/CategoriesApi.md#procurement_categories_post) | **POST** /procurement/categories | 
*Connectwise::CodesApi* | [**service_codes_count_get**](docs/CodesApi.md#service_codes_count_get) | **GET** /service/codes/count | 
*Connectwise::CodesApi* | [**service_codes_get**](docs/CodesApi.md#service_codes_get) | **GET** /service/codes | 
*Connectwise::CodesApi* | [**service_codes_id_delete**](docs/CodesApi.md#service_codes_id_delete) | **DELETE** /service/codes/{id} | 
*Connectwise::CodesApi* | [**service_codes_id_get**](docs/CodesApi.md#service_codes_id_get) | **GET** /service/codes/{id} | 
*Connectwise::CodesApi* | [**service_codes_id_patch**](docs/CodesApi.md#service_codes_id_patch) | **PATCH** /service/codes/{id} | 
*Connectwise::CodesApi* | [**service_codes_id_put**](docs/CodesApi.md#service_codes_id_put) | **PUT** /service/codes/{id} | 
*Connectwise::CodesApi* | [**service_codes_post**](docs/CodesApi.md#service_codes_post) | **POST** /service/codes | 
*Connectwise::CompaniesApi* | [**company_companies_count_get**](docs/CompaniesApi.md#company_companies_count_get) | **GET** /company/companies/count | 
*Connectwise::CompaniesApi* | [**company_companies_get**](docs/CompaniesApi.md#company_companies_get) | **GET** /company/companies | 
*Connectwise::CompaniesApi* | [**company_companies_id_delete**](docs/CompaniesApi.md#company_companies_id_delete) | **DELETE** /company/companies/{id} | 
*Connectwise::CompaniesApi* | [**company_companies_id_get**](docs/CompaniesApi.md#company_companies_id_get) | **GET** /company/companies/{id} | 
*Connectwise::CompaniesApi* | [**company_companies_id_merge_post**](docs/CompaniesApi.md#company_companies_id_merge_post) | **POST** /company/companies/{id}/merge | 
*Connectwise::CompaniesApi* | [**company_companies_id_patch**](docs/CompaniesApi.md#company_companies_id_patch) | **PATCH** /company/companies/{id} | 
*Connectwise::CompaniesApi* | [**company_companies_id_put**](docs/CompaniesApi.md#company_companies_id_put) | **PUT** /company/companies/{id} | 
*Connectwise::CompaniesApi* | [**company_companies_post**](docs/CompaniesApi.md#company_companies_post) | **POST** /company/companies | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_count_get**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_count_get) | **GET** /company/companies/{id}/managementSummaryReports/count | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_get**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_get) | **GET** /company/companies/{id}/managementSummaryReports | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_post**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_post) | **POST** /company/companies/{id}/managementSummaryReports | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_delete**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_delete) | **DELETE** /company/companies/{id}/managementSummaryReports/{reportId} | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_get**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_get) | **GET** /company/companies/{id}/managementSummaryReports/{reportId} | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_patch**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_patch) | **PATCH** /company/companies/{id}/managementSummaryReports/{reportId} | 
*Connectwise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_put**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_put) | **PUT** /company/companies/{id}/managementSummaryReports/{reportId} | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_count_get**](docs/CompanyNotesApi.md#company_companies_id_notes_count_get) | **GET** /company/companies/{id}/notes/count | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_get**](docs/CompanyNotesApi.md#company_companies_id_notes_get) | **GET** /company/companies/{id}/notes | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_note_id_delete**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_delete) | **DELETE** /company/companies/{id}/notes/{noteId} | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_note_id_get**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_get) | **GET** /company/companies/{id}/notes/{noteId} | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_note_id_patch**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_patch) | **PATCH** /company/companies/{id}/notes/{noteId} | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_note_id_put**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_put) | **PUT** /company/companies/{id}/notes/{noteId} | 
*Connectwise::CompanyNotesApi* | [**company_companies_id_notes_post**](docs/CompanyNotesApi.md#company_companies_id_notes_post) | **POST** /company/companies/{id}/notes | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_count_get**](docs/CompanySitesApi.md#company_companies_id_sites_count_get) | **GET** /company/companies/{id}/sites/count | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_get**](docs/CompanySitesApi.md#company_companies_id_sites_get) | **GET** /company/companies/{id}/sites | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_post**](docs/CompanySitesApi.md#company_companies_id_sites_post) | **POST** /company/companies/{id}/sites | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_site_id_delete**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_delete) | **DELETE** /company/companies/{id}/sites/{siteId} | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_site_id_get**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_get) | **GET** /company/companies/{id}/sites/{siteId} | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_site_id_patch**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_patch) | **PATCH** /company/companies/{id}/sites/{siteId} | 
*Connectwise::CompanySitesApi* | [**company_companies_id_sites_site_id_put**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_put) | **PUT** /company/companies/{id}/sites/{siteId} | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_count_get**](docs/CompanyStatusesApi.md#company_companies_statuses_count_get) | **GET** /company/companies/statuses/count | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_get**](docs/CompanyStatusesApi.md#company_companies_statuses_get) | **GET** /company/companies/statuses | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_id_delete**](docs/CompanyStatusesApi.md#company_companies_statuses_id_delete) | **DELETE** /company/companies/statuses/{id} | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_id_get**](docs/CompanyStatusesApi.md#company_companies_statuses_id_get) | **GET** /company/companies/statuses/{id} | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_id_patch**](docs/CompanyStatusesApi.md#company_companies_statuses_id_patch) | **PATCH** /company/companies/statuses/{id} | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_id_put**](docs/CompanyStatusesApi.md#company_companies_statuses_id_put) | **PUT** /company/companies/statuses/{id} | 
*Connectwise::CompanyStatusesApi* | [**company_companies_statuses_post**](docs/CompanyStatusesApi.md#company_companies_statuses_post) | **POST** /company/companies/statuses | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_count_get**](docs/CompanyTeamsApi.md#company_companies_id_teams_count_get) | **GET** /company/companies/{id}/teams/count | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_get**](docs/CompanyTeamsApi.md#company_companies_id_teams_get) | **GET** /company/companies/{id}/teams | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_post**](docs/CompanyTeamsApi.md#company_companies_id_teams_post) | **POST** /company/companies/{id}/teams | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_delete**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_delete) | **DELETE** /company/companies/{id}/teams/{teamId} | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_get**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_get) | **GET** /company/companies/{id}/teams/{teamId} | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_patch**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_patch) | **PATCH** /company/companies/{id}/teams/{teamId} | 
*Connectwise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_put**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_put) | **PUT** /company/companies/{id}/teams/{teamId} | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_count_get**](docs/CompanyTypesApi.md#company_companies_types_count_get) | **GET** /company/companies/types/count | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_get**](docs/CompanyTypesApi.md#company_companies_types_get) | **GET** /company/companies/types | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_id_delete**](docs/CompanyTypesApi.md#company_companies_types_id_delete) | **DELETE** /company/companies/types/{id} | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_id_get**](docs/CompanyTypesApi.md#company_companies_types_id_get) | **GET** /company/companies/types/{id} | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_id_patch**](docs/CompanyTypesApi.md#company_companies_types_id_patch) | **PATCH** /company/companies/types/{id} | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_id_put**](docs/CompanyTypesApi.md#company_companies_types_id_put) | **PUT** /company/companies/types/{id} | 
*Connectwise::CompanyTypesApi* | [**company_companies_types_post**](docs/CompanyTypesApi.md#company_companies_types_post) | **POST** /company/companies/types | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_count_get**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_count_get) | **GET** /company/configurations/statuses/count | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_get**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_get) | **GET** /company/configurations/statuses | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_delete**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_delete) | **DELETE** /company/configurations/statuses/{id} | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_get**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_get) | **GET** /company/configurations/statuses/{id} | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_patch**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_patch) | **PATCH** /company/configurations/statuses/{id} | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_put**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_put) | **PUT** /company/configurations/statuses/{id} | 
*Connectwise::ConfigurationStatusesApi* | [**company_configurations_statuses_post**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_post) | **POST** /company/configurations/statuses | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_count_get**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_count_get) | **GET** /company/configurations/types/{id}/questions/count | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_get**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_get) | **GET** /company/configurations/types/{id}/questions | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_post**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_post) | **POST** /company/configurations/types/{id}/questions | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_delete**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_delete) | **DELETE** /company/configurations/types/{id}/questions/{questionId} | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_get**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_get) | **GET** /company/configurations/types/{id}/questions/{questionId} | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_patch**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_patch) | **PATCH** /company/configurations/types/{id}/questions/{questionId} | 
*Connectwise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_put**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_put) | **PUT** /company/configurations/types/{id}/questions/{questionId} | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_count_get**](docs/ConfigurationTypesApi.md#company_configurations_types_count_get) | **GET** /company/configurations/types/count | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_get**](docs/ConfigurationTypesApi.md#company_configurations_types_get) | **GET** /company/configurations/types | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_id_delete**](docs/ConfigurationTypesApi.md#company_configurations_types_id_delete) | **DELETE** /company/configurations/types/{id} | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_id_get**](docs/ConfigurationTypesApi.md#company_configurations_types_id_get) | **GET** /company/configurations/types/{id} | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_id_patch**](docs/ConfigurationTypesApi.md#company_configurations_types_id_patch) | **PATCH** /company/configurations/types/{id} | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_id_put**](docs/ConfigurationTypesApi.md#company_configurations_types_id_put) | **PUT** /company/configurations/types/{id} | 
*Connectwise::ConfigurationTypesApi* | [**company_configurations_types_post**](docs/ConfigurationTypesApi.md#company_configurations_types_post) | **POST** /company/configurations/types | 
*Connectwise::ConfigurationsApi* | [**company_configurations_count_get**](docs/ConfigurationsApi.md#company_configurations_count_get) | **GET** /company/configurations/count | 
*Connectwise::ConfigurationsApi* | [**company_configurations_get**](docs/ConfigurationsApi.md#company_configurations_get) | **GET** /company/configurations | 
*Connectwise::ConfigurationsApi* | [**company_configurations_id_delete**](docs/ConfigurationsApi.md#company_configurations_id_delete) | **DELETE** /company/configurations/{id} | 
*Connectwise::ConfigurationsApi* | [**company_configurations_id_get**](docs/ConfigurationsApi.md#company_configurations_id_get) | **GET** /company/configurations/{id} | 
*Connectwise::ConfigurationsApi* | [**company_configurations_id_patch**](docs/ConfigurationsApi.md#company_configurations_id_patch) | **PATCH** /company/configurations/{id} | 
*Connectwise::ConfigurationsApi* | [**company_configurations_id_put**](docs/ConfigurationsApi.md#company_configurations_id_put) | **PUT** /company/configurations/{id} | 
*Connectwise::ConfigurationsApi* | [**company_configurations_post**](docs/ConfigurationsApi.md#company_configurations_post) | **POST** /company/configurations | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_count_get**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_count_get) | **GET** /system/connectwisehostedsetups/count | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_get**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_get) | **GET** /system/connectwisehostedsetups | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_delete**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_delete) | **DELETE** /system/connectwisehostedsetups/{id} | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_get**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_get) | **GET** /system/connectwisehostedsetups/{id} | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_patch**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_patch) | **PATCH** /system/connectwisehostedsetups/{id} | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_put**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_put) | **PUT** /system/connectwisehostedsetups/{id} | 
*Connectwise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_post**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_post) | **POST** /system/connectwisehostedsetups | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_delete**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_delete) | **DELETE** /company/contacts/{id}/communications/{communicationId} | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_get**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_get) | **GET** /company/contacts/{id}/communications/{communicationId} | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_patch**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_patch) | **PATCH** /company/contacts/{id}/communications/{communicationId} | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_put**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_put) | **PUT** /company/contacts/{id}/communications/{communicationId} | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_count_get**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_count_get) | **GET** /company/contacts/{id}/communications/count | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_get**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_get) | **GET** /company/contacts/{id}/communications | 
*Connectwise::ContactCommunicationsApi* | [**company_contacts_id_communications_post**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_post) | **POST** /company/contacts/{id}/communications | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_count_get**](docs/ContactDepartmentsApi.md#company_contacts_departments_count_get) | **GET** /company/contacts/departments/count | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_get**](docs/ContactDepartmentsApi.md#company_contacts_departments_get) | **GET** /company/contacts/departments | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_id_delete**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_delete) | **DELETE** /company/contacts/departments/{id} | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_id_get**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_get) | **GET** /company/contacts/departments/{id} | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_id_patch**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_patch) | **PATCH** /company/contacts/departments/{id} | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_id_put**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_put) | **PUT** /company/contacts/departments/{id} | 
*Connectwise::ContactDepartmentsApi* | [**company_contacts_departments_post**](docs/ContactDepartmentsApi.md#company_contacts_departments_post) | **POST** /company/contacts/departments | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_count_get**](docs/ContactNotesApi.md#company_contacts_id_notes_count_get) | **GET** /company/contacts/{id}/notes/count | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_get**](docs/ContactNotesApi.md#company_contacts_id_notes_get) | **GET** /company/contacts/{id}/notes | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_note_id_delete**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_delete) | **DELETE** /company/contacts/{id}/notes/{noteId} | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_note_id_get**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_get) | **GET** /company/contacts/{id}/notes/{noteId} | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_note_id_patch**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_patch) | **PATCH** /company/contacts/{id}/notes/{noteId} | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_note_id_put**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_put) | **PUT** /company/contacts/{id}/notes/{noteId} | 
*Connectwise::ContactNotesApi* | [**company_contacts_id_notes_post**](docs/ContactNotesApi.md#company_contacts_id_notes_post) | **POST** /company/contacts/{id}/notes | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_count_get**](docs/ContactRelationshipsApi.md#company_contacts_relationships_count_get) | **GET** /company/contacts/relationships/count | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_get**](docs/ContactRelationshipsApi.md#company_contacts_relationships_get) | **GET** /company/contacts/relationships | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_id_delete**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_delete) | **DELETE** /company/contacts/relationships/{id} | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_id_get**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_get) | **GET** /company/contacts/relationships/{id} | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_id_patch**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_patch) | **PATCH** /company/contacts/relationships/{id} | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_id_put**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_put) | **PUT** /company/contacts/relationships/{id} | 
*Connectwise::ContactRelationshipsApi* | [**company_contacts_relationships_post**](docs/ContactRelationshipsApi.md#company_contacts_relationships_post) | **POST** /company/contacts/relationships | 
*Connectwise::ContactTracksApi* | [**company_contacts_id_tracks_count_get**](docs/ContactTracksApi.md#company_contacts_id_tracks_count_get) | **GET** /company/contacts/{id}/tracks/count | 
*Connectwise::ContactTracksApi* | [**company_contacts_id_tracks_get**](docs/ContactTracksApi.md#company_contacts_id_tracks_get) | **GET** /company/contacts/{id}/tracks | 
*Connectwise::ContactTracksApi* | [**company_contacts_id_tracks_post**](docs/ContactTracksApi.md#company_contacts_id_tracks_post) | **POST** /company/contacts/{id}/tracks | 
*Connectwise::ContactTracksApi* | [**company_contacts_id_tracks_track_id_delete**](docs/ContactTracksApi.md#company_contacts_id_tracks_track_id_delete) | **DELETE** /company/contacts/{id}/tracks/{trackId} | 
*Connectwise::ContactTracksApi* | [**company_contacts_id_tracks_track_id_get**](docs/ContactTracksApi.md#company_contacts_id_tracks_track_id_get) | **GET** /company/contacts/{id}/tracks/{trackId} | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_count_get**](docs/ContactTypesApi.md#company_contacts_types_count_get) | **GET** /company/contacts/types/count | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_get**](docs/ContactTypesApi.md#company_contacts_types_get) | **GET** /company/contacts/types | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_id_delete**](docs/ContactTypesApi.md#company_contacts_types_id_delete) | **DELETE** /company/contacts/types/{id} | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_id_get**](docs/ContactTypesApi.md#company_contacts_types_id_get) | **GET** /company/contacts/types/{id} | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_id_patch**](docs/ContactTypesApi.md#company_contacts_types_id_patch) | **PATCH** /company/contacts/types/{id} | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_id_put**](docs/ContactTypesApi.md#company_contacts_types_id_put) | **PUT** /company/contacts/types/{id} | 
*Connectwise::ContactTypesApi* | [**company_contacts_types_post**](docs/ContactTypesApi.md#company_contacts_types_post) | **POST** /company/contacts/types | 
*Connectwise::ContactsApi* | [**company_contacts_count_get**](docs/ContactsApi.md#company_contacts_count_get) | **GET** /company/contacts/count | 
*Connectwise::ContactsApi* | [**company_contacts_get**](docs/ContactsApi.md#company_contacts_get) | **GET** /company/contacts | 
*Connectwise::ContactsApi* | [**company_contacts_id_delete**](docs/ContactsApi.md#company_contacts_id_delete) | **DELETE** /company/contacts/{id} | 
*Connectwise::ContactsApi* | [**company_contacts_id_get**](docs/ContactsApi.md#company_contacts_id_get) | **GET** /company/contacts/{id} | 
*Connectwise::ContactsApi* | [**company_contacts_id_image_get**](docs/ContactsApi.md#company_contacts_id_image_get) | **GET** /company/contacts/{id}/image | 
*Connectwise::ContactsApi* | [**company_contacts_id_patch**](docs/ContactsApi.md#company_contacts_id_patch) | **PATCH** /company/contacts/{id} | 
*Connectwise::ContactsApi* | [**company_contacts_id_portal_security_get**](docs/ContactsApi.md#company_contacts_id_portal_security_get) | **GET** /company/contacts/{id}/portalSecurity | 
*Connectwise::ContactsApi* | [**company_contacts_id_put**](docs/ContactsApi.md#company_contacts_id_put) | **PUT** /company/contacts/{id} | 
*Connectwise::ContactsApi* | [**company_contacts_post**](docs/ContactsApi.md#company_contacts_post) | **POST** /company/contacts | 
*Connectwise::ContactsApi* | [**company_contacts_request_password_post**](docs/ContactsApi.md#company_contacts_request_password_post) | **POST** /company/contacts/requestPassword | 
*Connectwise::ContactsApi* | [**company_contacts_validate_portal_credentials_post**](docs/ContactsApi.md#company_contacts_validate_portal_credentials_post) | **POST** /company/contacts/validatePortalCredentials | 
*Connectwise::CurrenciesApi* | [**finance_currencies_count_get**](docs/CurrenciesApi.md#finance_currencies_count_get) | **GET** /finance/currencies/count | 
*Connectwise::CurrenciesApi* | [**finance_currencies_get**](docs/CurrenciesApi.md#finance_currencies_get) | **GET** /finance/currencies | 
*Connectwise::CurrenciesApi* | [**finance_currencies_id_delete**](docs/CurrenciesApi.md#finance_currencies_id_delete) | **DELETE** /finance/currencies/{id} | 
*Connectwise::CurrenciesApi* | [**finance_currencies_id_get**](docs/CurrenciesApi.md#finance_currencies_id_get) | **GET** /finance/currencies/{id} | 
*Connectwise::CurrenciesApi* | [**finance_currencies_id_patch**](docs/CurrenciesApi.md#finance_currencies_id_patch) | **PATCH** /finance/currencies/{id} | 
*Connectwise::CurrenciesApi* | [**finance_currencies_id_put**](docs/CurrenciesApi.md#finance_currencies_id_put) | **PUT** /finance/currencies/{id} | 
*Connectwise::CurrenciesApi* | [**finance_currencies_post**](docs/CurrenciesApi.md#finance_currencies_post) | **POST** /finance/currencies | 
*Connectwise::DocumentsApi* | [**system_documents_count_get**](docs/DocumentsApi.md#system_documents_count_get) | **GET** /system/documents/count | 
*Connectwise::DocumentsApi* | [**system_documents_get**](docs/DocumentsApi.md#system_documents_get) | **GET** /system/documents | 
*Connectwise::DocumentsApi* | [**system_documents_id_delete**](docs/DocumentsApi.md#system_documents_id_delete) | **DELETE** /system/documents/{id} | 
*Connectwise::DocumentsApi* | [**system_documents_id_download_get**](docs/DocumentsApi.md#system_documents_id_download_get) | **GET** /system/documents/{id}/download | 
*Connectwise::DocumentsApi* | [**system_documents_id_get**](docs/DocumentsApi.md#system_documents_id_get) | **GET** /system/documents/{id} | 
*Connectwise::DocumentsApi* | [**system_documents_id_post**](docs/DocumentsApi.md#system_documents_id_post) | **POST** /system/documents/{id} | 
*Connectwise::DocumentsApi* | [**system_documents_post**](docs/DocumentsApi.md#system_documents_post) | **POST** /system/documents | 
*Connectwise::DocumentsApi* | [**system_documents_uploadsample_get**](docs/DocumentsApi.md#system_documents_uploadsample_get) | **GET** /system/documents/uploadsample | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_count_get**](docs/ExpenseEntriesApi.md#expense_entries_count_get) | **GET** /expense/entries/count | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_get**](docs/ExpenseEntriesApi.md#expense_entries_get) | **GET** /expense/entries | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_id_delete**](docs/ExpenseEntriesApi.md#expense_entries_id_delete) | **DELETE** /expense/entries/{id} | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_id_get**](docs/ExpenseEntriesApi.md#expense_entries_id_get) | **GET** /expense/entries/{id} | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_id_patch**](docs/ExpenseEntriesApi.md#expense_entries_id_patch) | **PATCH** /expense/entries/{id} | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_id_put**](docs/ExpenseEntriesApi.md#expense_entries_id_put) | **PUT** /expense/entries/{id} | 
*Connectwise::ExpenseEntriesApi* | [**expense_entries_post**](docs/ExpenseEntriesApi.md#expense_entries_post) | **POST** /expense/entries | 
*Connectwise::ExpenseTypesApi* | [**expense_types_count_get**](docs/ExpenseTypesApi.md#expense_types_count_get) | **GET** /expense/types/count | 
*Connectwise::ExpenseTypesApi* | [**expense_types_get**](docs/ExpenseTypesApi.md#expense_types_get) | **GET** /expense/types | 
*Connectwise::ExpenseTypesApi* | [**expense_types_id_delete**](docs/ExpenseTypesApi.md#expense_types_id_delete) | **DELETE** /expense/types/{id} | 
*Connectwise::ExpenseTypesApi* | [**expense_types_id_get**](docs/ExpenseTypesApi.md#expense_types_id_get) | **GET** /expense/types/{id} | 
*Connectwise::ExpenseTypesApi* | [**expense_types_id_patch**](docs/ExpenseTypesApi.md#expense_types_id_patch) | **PATCH** /expense/types/{id} | 
*Connectwise::ExpenseTypesApi* | [**expense_types_id_put**](docs/ExpenseTypesApi.md#expense_types_id_put) | **PUT** /expense/types/{id} | 
*Connectwise::ExpenseTypesApi* | [**expense_types_post**](docs/ExpenseTypesApi.md#expense_types_post) | **POST** /expense/types | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_delete**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_delete) | **DELETE** /marketing/groups/{id}/companies/{companyId} | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_get**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_get) | **GET** /marketing/groups/{id}/companies/{companyId} | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_patch**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_patch) | **PATCH** /marketing/groups/{id}/companies/{companyId} | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_put**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_put) | **PUT** /marketing/groups/{id}/companies/{companyId} | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_count_get**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_count_get) | **GET** /marketing/groups/{id}/companies/count | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_get**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_get) | **GET** /marketing/groups/{id}/companies | 
*Connectwise::GroupCompaniesApi* | [**marketing_groups_id_companies_post**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_post) | **POST** /marketing/groups/{id}/companies | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_delete**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_delete) | **DELETE** /marketing/groups/{id}/contacts/{contactId} | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_get**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_get) | **GET** /marketing/groups/{id}/contacts/{contactId} | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_patch**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_patch) | **PATCH** /marketing/groups/{id}/contacts/{contactId} | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_put**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_put) | **PUT** /marketing/groups/{id}/contacts/{contactId} | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_count_get**](docs/GroupContactsApi.md#marketing_groups_id_contacts_count_get) | **GET** /marketing/groups/{id}/contacts/count | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_get**](docs/GroupContactsApi.md#marketing_groups_id_contacts_get) | **GET** /marketing/groups/{id}/contacts | 
*Connectwise::GroupContactsApi* | [**marketing_groups_id_contacts_post**](docs/GroupContactsApi.md#marketing_groups_id_contacts_post) | **POST** /marketing/groups/{id}/contacts | 
*Connectwise::GroupsApi* | [**marketing_groups_count_get**](docs/GroupsApi.md#marketing_groups_count_get) | **GET** /marketing/groups/count | 
*Connectwise::GroupsApi* | [**marketing_groups_get**](docs/GroupsApi.md#marketing_groups_get) | **GET** /marketing/groups | 
*Connectwise::GroupsApi* | [**marketing_groups_id_delete**](docs/GroupsApi.md#marketing_groups_id_delete) | **DELETE** /marketing/groups/{id} | 
*Connectwise::GroupsApi* | [**marketing_groups_id_get**](docs/GroupsApi.md#marketing_groups_id_get) | **GET** /marketing/groups/{id} | 
*Connectwise::GroupsApi* | [**marketing_groups_id_patch**](docs/GroupsApi.md#marketing_groups_id_patch) | **PATCH** /marketing/groups/{id} | 
*Connectwise::GroupsApi* | [**marketing_groups_id_put**](docs/GroupsApi.md#marketing_groups_id_put) | **PUT** /marketing/groups/{id} | 
*Connectwise::GroupsApi* | [**marketing_groups_post**](docs/GroupsApi.md#marketing_groups_post) | **POST** /marketing/groups | 
*Connectwise::InfoApi* | [**system_info_get**](docs/InfoApi.md#system_info_get) | **GET** /system/info | 
*Connectwise::InvoicePaymentsApi* | [**finance_invoices_id_payments_get**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_get) | **GET** /finance/invoices/{id}/payments | 
*Connectwise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_delete**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_delete) | **DELETE** /finance/invoices/{id}/payments/{paymentId} | 
*Connectwise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_get**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_get) | **GET** /finance/invoices/{id}/payments/{paymentId} | 
*Connectwise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_patch**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_patch) | **PATCH** /finance/invoices/{id}/payments/{paymentId} | 
*Connectwise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_put**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_put) | **PUT** /finance/invoices/{id}/payments/{paymentId} | 
*Connectwise::InvoicePaymentsApi* | [**finance_invoices_id_payments_post**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_post) | **POST** /finance/invoices/{id}/payments | 
*Connectwise::InvoicesApi* | [**finance_invoices_count_get**](docs/InvoicesApi.md#finance_invoices_count_get) | **GET** /finance/invoices/count | 
*Connectwise::InvoicesApi* | [**finance_invoices_get**](docs/InvoicesApi.md#finance_invoices_get) | **GET** /finance/invoices | 
*Connectwise::InvoicesApi* | [**finance_invoices_id_delete**](docs/InvoicesApi.md#finance_invoices_id_delete) | **DELETE** /finance/invoices/{id} | 
*Connectwise::InvoicesApi* | [**finance_invoices_id_get**](docs/InvoicesApi.md#finance_invoices_id_get) | **GET** /finance/invoices/{id} | 
*Connectwise::InvoicesApi* | [**finance_invoices_id_patch**](docs/InvoicesApi.md#finance_invoices_id_patch) | **PATCH** /finance/invoices/{id} | 
*Connectwise::InvoicesApi* | [**finance_invoices_id_pdf_get**](docs/InvoicesApi.md#finance_invoices_id_pdf_get) | **GET** /finance/invoices/{id}/pdf | 
*Connectwise::InvoicesApi* | [**finance_invoices_id_put**](docs/InvoicesApi.md#finance_invoices_id_put) | **PUT** /finance/invoices/{id} | 
*Connectwise::InvoicesApi* | [**finance_invoices_post**](docs/InvoicesApi.md#finance_invoices_post) | **POST** /finance/invoices | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_count_get**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_count_get) | **GET** /service/knowledgeBaseArticles/count | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_get**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_get) | **GET** /service/knowledgeBaseArticles | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_delete**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_delete) | **DELETE** /service/knowledgeBaseArticles/{id} | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_get**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_get) | **GET** /service/knowledgeBaseArticles/{id} | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_patch**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_patch) | **PATCH** /service/knowledgeBaseArticles/{id} | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_put**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_put) | **PUT** /service/knowledgeBaseArticles/{id} | 
*Connectwise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_post**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_post) | **POST** /service/knowledgeBaseArticles | 
*Connectwise::LinksApi* | [**system_links_count_get**](docs/LinksApi.md#system_links_count_get) | **GET** /system/links/count | 
*Connectwise::LinksApi* | [**system_links_get**](docs/LinksApi.md#system_links_get) | **GET** /system/links | 
*Connectwise::LinksApi* | [**system_links_id_delete**](docs/LinksApi.md#system_links_id_delete) | **DELETE** /system/links/{id} | 
*Connectwise::LinksApi* | [**system_links_id_get**](docs/LinksApi.md#system_links_id_get) | **GET** /system/links/{id} | 
*Connectwise::LinksApi* | [**system_links_id_patch**](docs/LinksApi.md#system_links_id_patch) | **PATCH** /system/links/{id} | 
*Connectwise::LinksApi* | [**system_links_id_put**](docs/LinksApi.md#system_links_id_put) | **PUT** /system/links/{id} | 
*Connectwise::LinksApi* | [**system_links_post**](docs/LinksApi.md#system_links_post) | **POST** /system/links | 
*Connectwise::LocationsApi* | [**service_locations_count_get**](docs/LocationsApi.md#service_locations_count_get) | **GET** /service/locations/count | 
*Connectwise::LocationsApi* | [**service_locations_get**](docs/LocationsApi.md#service_locations_get) | **GET** /service/locations | 
*Connectwise::LocationsApi* | [**service_locations_id_delete**](docs/LocationsApi.md#service_locations_id_delete) | **DELETE** /service/locations/{id} | 
*Connectwise::LocationsApi* | [**service_locations_id_get**](docs/LocationsApi.md#service_locations_id_get) | **GET** /service/locations/{id} | 
*Connectwise::LocationsApi* | [**service_locations_id_patch**](docs/LocationsApi.md#service_locations_id_patch) | **PATCH** /service/locations/{id} | 
*Connectwise::LocationsApi* | [**service_locations_id_put**](docs/LocationsApi.md#service_locations_id_put) | **PUT** /service/locations/{id} | 
*Connectwise::LocationsApi* | [**service_locations_post**](docs/LocationsApi.md#service_locations_post) | **POST** /service/locations | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_count_get**](docs/ManufacturersApi.md#procurement_manufacturers_count_get) | **GET** /procurement/manufacturers/count | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_get**](docs/ManufacturersApi.md#procurement_manufacturers_get) | **GET** /procurement/manufacturers | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_id_delete**](docs/ManufacturersApi.md#procurement_manufacturers_id_delete) | **DELETE** /procurement/manufacturers/{id} | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_id_get**](docs/ManufacturersApi.md#procurement_manufacturers_id_get) | **GET** /procurement/manufacturers/{id} | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_id_patch**](docs/ManufacturersApi.md#procurement_manufacturers_id_patch) | **PATCH** /procurement/manufacturers/{id} | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_id_put**](docs/ManufacturersApi.md#procurement_manufacturers_id_put) | **PUT** /procurement/manufacturers/{id} | 
*Connectwise::ManufacturersApi* | [**procurement_manufacturers_post**](docs/ManufacturersApi.md#procurement_manufacturers_post) | **POST** /procurement/manufacturers | 
*Connectwise::MembersApi* | [**system_members_count_get**](docs/MembersApi.md#system_members_count_get) | **GET** /system/members/count | 
*Connectwise::MembersApi* | [**system_members_get**](docs/MembersApi.md#system_members_get) | **GET** /system/members | 
*Connectwise::MembersApi* | [**system_members_member_identifier_get**](docs/MembersApi.md#system_members_member_identifier_get) | **GET** /system/members/{memberIdentifier} | 
*Connectwise::MembersApi* | [**system_members_member_identifier_image_get**](docs/MembersApi.md#system_members_member_identifier_image_get) | **GET** /system/members/{memberIdentifier}/image | 
*Connectwise::MembersApi* | [**system_members_member_identifier_tokens_post**](docs/MembersApi.md#system_members_member_identifier_tokens_post) | **POST** /system/members/{memberIdentifier}/tokens | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_count_get**](docs/MenuEntriesApi.md#system_menuentries_count_get) | **GET** /system/menuentries/count | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_get**](docs/MenuEntriesApi.md#system_menuentries_get) | **GET** /system/menuentries | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_id_delete**](docs/MenuEntriesApi.md#system_menuentries_id_delete) | **DELETE** /system/menuentries/{id} | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_id_get**](docs/MenuEntriesApi.md#system_menuentries_id_get) | **GET** /system/menuentries/{id} | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_id_image_get**](docs/MenuEntriesApi.md#system_menuentries_id_image_get) | **GET** /system/menuentries/{id}/image | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_id_image_post**](docs/MenuEntriesApi.md#system_menuentries_id_image_post) | **POST** /system/menuentries/{id}/image | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_id_patch**](docs/MenuEntriesApi.md#system_menuentries_id_patch) | **PATCH** /system/menuentries/{id} | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_id_put**](docs/MenuEntriesApi.md#system_menuentries_id_put) | **PUT** /system/menuentries/{id} | 
*Connectwise::MenuEntriesApi* | [**system_menuentries_post**](docs/MenuEntriesApi.md#system_menuentries_post) | **POST** /system/menuentries | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_count_get**](docs/OpportunitiesApi.md#sales_opportunities_count_get) | **GET** /sales/opportunities/count | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_get**](docs/OpportunitiesApi.md#sales_opportunities_get) | **GET** /sales/opportunities | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_agreement_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_agreement_post) | **POST** /sales/opportunities/{id}/convertToAgreement | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_project_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_project_post) | **POST** /sales/opportunities/{id}/convertToProject | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_sales_order_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_sales_order_post) | **POST** /sales/opportunities/{id}/convertToSalesOrder | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_service_ticket_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_service_ticket_post) | **POST** /sales/opportunities/{id}/convertToServiceTicket | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_delete**](docs/OpportunitiesApi.md#sales_opportunities_id_delete) | **DELETE** /sales/opportunities/{id} | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_get**](docs/OpportunitiesApi.md#sales_opportunities_id_get) | **GET** /sales/opportunities/{id} | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_patch**](docs/OpportunitiesApi.md#sales_opportunities_id_patch) | **PATCH** /sales/opportunities/{id} | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_id_put**](docs/OpportunitiesApi.md#sales_opportunities_id_put) | **PUT** /sales/opportunities/{id} | 
*Connectwise::OpportunitiesApi* | [**sales_opportunities_post**](docs/OpportunitiesApi.md#sales_opportunities_post) | **POST** /sales/opportunities | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_delete**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_delete) | **DELETE** /sales/opportunities/{id}/contacts/{contactId} | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_get**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_get) | **GET** /sales/opportunities/{id}/contacts/{contactId} | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_patch**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_patch) | **PATCH** /sales/opportunities/{id}/contacts/{contactId} | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_put**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_put) | **PUT** /sales/opportunities/{id}/contacts/{contactId} | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_count_get**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_count_get) | **GET** /sales/opportunities/{id}/contacts/count | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_get**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_get) | **GET** /sales/opportunities/{id}/contacts | 
*Connectwise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_post**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_post) | **POST** /sales/opportunities/{id}/contacts | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_count_get**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_count_get) | **GET** /sales/opportunities/{id}/forecast/count | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_delete**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_delete) | **DELETE** /sales/opportunities/{id}/forecast/{forecastId} | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_get**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_get) | **GET** /sales/opportunities/{id}/forecast/{forecastId} | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_patch**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_patch) | **PATCH** /sales/opportunities/{id}/forecast/{forecastId} | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_put**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_put) | **PUT** /sales/opportunities/{id}/forecast/{forecastId} | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_get**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_get) | **GET** /sales/opportunities/{id}/forecast | 
*Connectwise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_post**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_post) | **POST** /sales/opportunities/{id}/forecast | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_count_get**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_count_get) | **GET** /sales/opportunities/{id}/notes/count | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_get**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_get) | **GET** /sales/opportunities/{id}/notes | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_delete**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_delete) | **DELETE** /sales/opportunities/{id}/notes/{noteId} | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_get**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_get) | **GET** /sales/opportunities/{id}/notes/{noteId} | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_patch**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_patch) | **PATCH** /sales/opportunities/{id}/notes/{noteId} | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_put**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_put) | **PUT** /sales/opportunities/{id}/notes/{noteId} | 
*Connectwise::OpportunityNotesApi* | [**sales_opportunities_id_notes_post**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_post) | **POST** /sales/opportunities/{id}/notes | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_count_get**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_count_get) | **GET** /sales/opportunities/ratings/count | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_get**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_get) | **GET** /sales/opportunities/ratings | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_delete**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_delete) | **DELETE** /sales/opportunities/ratings/{id} | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_get**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_get) | **GET** /sales/opportunities/ratings/{id} | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_patch**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_patch) | **PATCH** /sales/opportunities/ratings/{id} | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_put**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_put) | **PUT** /sales/opportunities/ratings/{id} | 
*Connectwise::OpportunityRatingsApi* | [**sales_opportunities_ratings_post**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_post) | **POST** /sales/opportunities/ratings | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_count_get**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_count_get) | **GET** /sales/opportunities/statuses/count | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_get**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_get) | **GET** /sales/opportunities/statuses | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_delete**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_delete) | **DELETE** /sales/opportunities/statuses/{id} | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_get**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_get) | **GET** /sales/opportunities/statuses/{id} | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_patch**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_patch) | **PATCH** /sales/opportunities/statuses/{id} | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_put**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_put) | **PUT** /sales/opportunities/statuses/{id} | 
*Connectwise::OpportunityStatusesApi* | [**sales_opportunities_statuses_post**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_post) | **POST** /sales/opportunities/statuses | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_count_get**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_count_get) | **GET** /sales/opportunities/{id}/team/count | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_get**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_get) | **GET** /sales/opportunities/{id}/team | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_post**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_post) | **POST** /sales/opportunities/{id}/team | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_delete**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_delete) | **DELETE** /sales/opportunities/{id}/team/{teamId} | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_get**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_get) | **GET** /sales/opportunities/{id}/team/{teamId} | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_patch**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_patch) | **PATCH** /sales/opportunities/{id}/team/{teamId} | 
*Connectwise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_put**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_put) | **PUT** /sales/opportunities/{id}/team/{teamId} | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_count_get**](docs/OpportunityTypesApi.md#sales_opportunities_types_count_get) | **GET** /sales/opportunities/types/count | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_get**](docs/OpportunityTypesApi.md#sales_opportunities_types_get) | **GET** /sales/opportunities/types | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_id_delete**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_delete) | **DELETE** /sales/opportunities/types/{id} | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_id_get**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_get) | **GET** /sales/opportunities/types/{id} | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_id_patch**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_patch) | **PATCH** /sales/opportunities/types/{id} | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_id_put**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_put) | **PUT** /sales/opportunities/types/{id} | 
*Connectwise::OpportunityTypesApi* | [**sales_opportunities_types_post**](docs/OpportunityTypesApi.md#sales_opportunities_types_post) | **POST** /sales/opportunities/types | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_count_get**](docs/OrderStatusesApi.md#sales_orders_statuses_count_get) | **GET** /sales/orders/statuses/count | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_get**](docs/OrderStatusesApi.md#sales_orders_statuses_get) | **GET** /sales/orders/statuses | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_id_delete**](docs/OrderStatusesApi.md#sales_orders_statuses_id_delete) | **DELETE** /sales/orders/statuses/{id} | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_id_get**](docs/OrderStatusesApi.md#sales_orders_statuses_id_get) | **GET** /sales/orders/statuses/{id} | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_id_patch**](docs/OrderStatusesApi.md#sales_orders_statuses_id_patch) | **PATCH** /sales/orders/statuses/{id} | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_id_put**](docs/OrderStatusesApi.md#sales_orders_statuses_id_put) | **PUT** /sales/orders/statuses/{id} | 
*Connectwise::OrderStatusesApi* | [**sales_orders_statuses_post**](docs/OrderStatusesApi.md#sales_orders_statuses_post) | **POST** /sales/orders/statuses | 
*Connectwise::OrdersApi* | [**sales_orders_count_get**](docs/OrdersApi.md#sales_orders_count_get) | **GET** /sales/orders/count | 
*Connectwise::OrdersApi* | [**sales_orders_get**](docs/OrdersApi.md#sales_orders_get) | **GET** /sales/orders | 
*Connectwise::OrdersApi* | [**sales_orders_id_delete**](docs/OrdersApi.md#sales_orders_id_delete) | **DELETE** /sales/orders/{id} | 
*Connectwise::OrdersApi* | [**sales_orders_id_get**](docs/OrdersApi.md#sales_orders_id_get) | **GET** /sales/orders/{id} | 
*Connectwise::OrdersApi* | [**sales_orders_id_patch**](docs/OrdersApi.md#sales_orders_id_patch) | **PATCH** /sales/orders/{id} | 
*Connectwise::OrdersApi* | [**sales_orders_id_put**](docs/OrdersApi.md#sales_orders_id_put) | **PUT** /sales/orders/{id} | 
*Connectwise::OrdersApi* | [**sales_orders_post**](docs/OrdersApi.md#sales_orders_post) | **POST** /sales/orders | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete) | **DELETE** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch) | **PATCH** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put) | **PUT** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/count | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_get**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks | 
*Connectwise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_post**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_post) | **POST** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_count_get**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_count_get) | **GET** /procurement/pricingschedules/{id}/details/count | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_delete**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_delete) | **DELETE** /procurement/pricingschedules/{id}/details/{detailID} | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_get**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_get) | **GET** /procurement/pricingschedules/{id}/details/{detailID} | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_patch**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_patch) | **PATCH** /procurement/pricingschedules/{id}/details/{detailID} | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_put**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_put) | **PUT** /procurement/pricingschedules/{id}/details/{detailID} | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_get**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_get) | **GET** /procurement/pricingschedules/{id}/details | 
*Connectwise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_post**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_post) | **POST** /procurement/pricingschedules/{id}/details | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_count_get**](docs/PricingSchedulesApi.md#procurement_pricingschedules_count_get) | **GET** /procurement/pricingschedules/count | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_get**](docs/PricingSchedulesApi.md#procurement_pricingschedules_get) | **GET** /procurement/pricingschedules | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_id_delete**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_delete) | **DELETE** /procurement/pricingschedules/{id} | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_id_get**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_get) | **GET** /procurement/pricingschedules/{id} | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_id_patch**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_patch) | **PATCH** /procurement/pricingschedules/{id} | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_id_put**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_put) | **PUT** /procurement/pricingschedules/{id} | 
*Connectwise::PricingSchedulesApi* | [**procurement_pricingschedules_post**](docs/PricingSchedulesApi.md#procurement_pricingschedules_post) | **POST** /procurement/pricingschedules | 
*Connectwise::PrioritiesApi* | [**service_priorities_count_get**](docs/PrioritiesApi.md#service_priorities_count_get) | **GET** /service/priorities/count | 
*Connectwise::PrioritiesApi* | [**service_priorities_get**](docs/PrioritiesApi.md#service_priorities_get) | **GET** /service/priorities | 
*Connectwise::PrioritiesApi* | [**service_priorities_id_delete**](docs/PrioritiesApi.md#service_priorities_id_delete) | **DELETE** /service/priorities/{id} | 
*Connectwise::PrioritiesApi* | [**service_priorities_id_get**](docs/PrioritiesApi.md#service_priorities_id_get) | **GET** /service/priorities/{id} | 
*Connectwise::PrioritiesApi* | [**service_priorities_id_image_get**](docs/PrioritiesApi.md#service_priorities_id_image_get) | **GET** /service/priorities/{id}/image | 
*Connectwise::PrioritiesApi* | [**service_priorities_id_patch**](docs/PrioritiesApi.md#service_priorities_id_patch) | **PATCH** /service/priorities/{id} | 
*Connectwise::PrioritiesApi* | [**service_priorities_id_put**](docs/PrioritiesApi.md#service_priorities_id_put) | **PUT** /service/priorities/{id} | 
*Connectwise::PrioritiesApi* | [**service_priorities_post**](docs/PrioritiesApi.md#service_priorities_post) | **POST** /service/priorities | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_component_id_delete**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_delete) | **DELETE** /procurement/products/{id}/components/{componentId} | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_component_id_get**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_get) | **GET** /procurement/products/{id}/components/{componentId} | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_component_id_patch**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_patch) | **PATCH** /procurement/products/{id}/components/{componentId} | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_component_id_put**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_put) | **PUT** /procurement/products/{id}/components/{componentId} | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_count_get**](docs/ProductComponentsApi.md#procurement_products_id_components_count_get) | **GET** /procurement/products/{id}/components/count | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_get**](docs/ProductComponentsApi.md#procurement_products_id_components_get) | **GET** /procurement/products/{id}/components | 
*Connectwise::ProductComponentsApi* | [**procurement_products_id_components_post**](docs/ProductComponentsApi.md#procurement_products_id_components_post) | **POST** /procurement/products/{id}/components | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_count_get**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_count_get) | **GET** /procurement/products/{id}/pickingShippingDetails/count | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_get**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_get) | **GET** /procurement/products/{id}/pickingShippingDetails | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete) | **DELETE** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get) | **GET** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch) | **PATCH** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put) | **PUT** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} | 
*Connectwise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_post**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_post) | **POST** /procurement/products/{id}/pickingShippingDetails | 
*Connectwise::ProductTypesApi* | [**procurement_types_count_get**](docs/ProductTypesApi.md#procurement_types_count_get) | **GET** /procurement/types/count | 
*Connectwise::ProductTypesApi* | [**procurement_types_get**](docs/ProductTypesApi.md#procurement_types_get) | **GET** /procurement/types | 
*Connectwise::ProductTypesApi* | [**procurement_types_id_delete**](docs/ProductTypesApi.md#procurement_types_id_delete) | **DELETE** /procurement/types/{id} | 
*Connectwise::ProductTypesApi* | [**procurement_types_id_get**](docs/ProductTypesApi.md#procurement_types_id_get) | **GET** /procurement/types/{id} | 
*Connectwise::ProductTypesApi* | [**procurement_types_id_patch**](docs/ProductTypesApi.md#procurement_types_id_patch) | **PATCH** /procurement/types/{id} | 
*Connectwise::ProductTypesApi* | [**procurement_types_id_put**](docs/ProductTypesApi.md#procurement_types_id_put) | **PUT** /procurement/types/{id} | 
*Connectwise::ProductTypesApi* | [**procurement_types_post**](docs/ProductTypesApi.md#procurement_types_post) | **POST** /procurement/types | 
*Connectwise::ProductsItemApi* | [**procurement_products_count_get**](docs/ProductsItemApi.md#procurement_products_count_get) | **GET** /procurement/products/count | 
*Connectwise::ProductsItemApi* | [**procurement_products_get**](docs/ProductsItemApi.md#procurement_products_get) | **GET** /procurement/products | 
*Connectwise::ProductsItemApi* | [**procurement_products_id_delete**](docs/ProductsItemApi.md#procurement_products_id_delete) | **DELETE** /procurement/products/{id} | 
*Connectwise::ProductsItemApi* | [**procurement_products_id_get**](docs/ProductsItemApi.md#procurement_products_id_get) | **GET** /procurement/products/{id} | 
*Connectwise::ProductsItemApi* | [**procurement_products_id_patch**](docs/ProductsItemApi.md#procurement_products_id_patch) | **PATCH** /procurement/products/{id} | 
*Connectwise::ProductsItemApi* | [**procurement_products_id_put**](docs/ProductsItemApi.md#procurement_products_id_put) | **PUT** /procurement/products/{id} | 
*Connectwise::ProductsItemApi* | [**procurement_products_post**](docs/ProductsItemApi.md#procurement_products_post) | **POST** /procurement/products | 
*Connectwise::ProjectContactsApi* | [**project_projects_id_contacts_contact_id_delete**](docs/ProjectContactsApi.md#project_projects_id_contacts_contact_id_delete) | **DELETE** /project/projects/{id}/contacts/{contactId} | 
*Connectwise::ProjectContactsApi* | [**project_projects_id_contacts_contact_id_get**](docs/ProjectContactsApi.md#project_projects_id_contacts_contact_id_get) | **GET** /project/projects/{id}/contacts/{contactId} | 
*Connectwise::ProjectContactsApi* | [**project_projects_id_contacts_get**](docs/ProjectContactsApi.md#project_projects_id_contacts_get) | **GET** /project/projects/{id}/contacts | 
*Connectwise::ProjectContactsApi* | [**project_projects_id_contacts_post**](docs/ProjectContactsApi.md#project_projects_id_contacts_post) | **POST** /project/projects/{id}/contacts | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_count_get**](docs/ProjectNotesApi.md#project_projects_id_notes_count_get) | **GET** /project/projects/{id}/notes/count | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_get**](docs/ProjectNotesApi.md#project_projects_id_notes_get) | **GET** /project/projects/{id}/notes | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_note_id_delete**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_delete) | **DELETE** /project/projects/{id}/notes/{noteId} | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_note_id_get**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_get) | **GET** /project/projects/{id}/notes/{noteId} | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_note_id_patch**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_patch) | **PATCH** /project/projects/{id}/notes/{noteId} | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_note_id_put**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_put) | **PUT** /project/projects/{id}/notes/{noteId} | 
*Connectwise::ProjectNotesApi* | [**project_projects_id_notes_post**](docs/ProjectNotesApi.md#project_projects_id_notes_post) | **POST** /project/projects/{id}/notes | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_count_get**](docs/ProjectPhasesApi.md#project_projects_id_phases_count_get) | **GET** /project/projects/{id}/phases/count | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_get**](docs/ProjectPhasesApi.md#project_projects_id_phases_get) | **GET** /project/projects/{id}/phases | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_delete**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_delete) | **DELETE** /project/projects/{id}/phases/{phaseId} | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_get**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_get) | **GET** /project/projects/{id}/phases/{phaseId} | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_patch**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_patch) | **PATCH** /project/projects/{id}/phases/{phaseId} | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_put**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_put) | **PUT** /project/projects/{id}/phases/{phaseId} | 
*Connectwise::ProjectPhasesApi* | [**project_projects_id_phases_post**](docs/ProjectPhasesApi.md#project_projects_id_phases_post) | **POST** /project/projects/{id}/phases | 
*Connectwise::ProjectsApi* | [**project_projects_count_get**](docs/ProjectsApi.md#project_projects_count_get) | **GET** /project/projects/count | 
*Connectwise::ProjectsApi* | [**project_projects_get**](docs/ProjectsApi.md#project_projects_get) | **GET** /project/projects | 
*Connectwise::ProjectsApi* | [**project_projects_id_delete**](docs/ProjectsApi.md#project_projects_id_delete) | **DELETE** /project/projects/{id} | 
*Connectwise::ProjectsApi* | [**project_projects_id_get**](docs/ProjectsApi.md#project_projects_id_get) | **GET** /project/projects/{id} | 
*Connectwise::ProjectsApi* | [**project_projects_id_patch**](docs/ProjectsApi.md#project_projects_id_patch) | **PATCH** /project/projects/{id} | 
*Connectwise::ProjectsApi* | [**project_projects_id_put**](docs/ProjectsApi.md#project_projects_id_put) | **PUT** /project/projects/{id} | 
*Connectwise::ProjectsApi* | [**project_projects_post**](docs/ProjectsApi.md#project_projects_post) | **POST** /project/projects | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_count_get**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_count_get) | **GET** /project/projects/{id}/teamMembers/count | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_get**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_get) | **GET** /project/projects/{id}/teamMembers | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_post**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_post) | **POST** /project/projects/{id}/teamMembers | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_team_member_id_delete**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_delete) | **DELETE** /project/projects/{id}/teamMembers/{teamMemberId} | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_team_member_id_get**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_get) | **GET** /project/projects/{id}/teamMembers/{teamMemberId} | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_team_member_id_patch**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_patch) | **PATCH** /project/projects/{id}/teamMembers/{teamMemberId} | 
*Connectwise::ProjectsTeamMembersApi* | [**project_projects_id_team_members_team_member_id_put**](docs/ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_put) | **PUT** /project/projects/{id}/teamMembers/{teamMemberId} | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_count_get**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_count_get) | **GET** /procurement/purchaseorders/{id}/lineitems/count | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_get**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_get) | **GET** /procurement/purchaseorders/{id}/lineitems | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_delete**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_delete) | **DELETE** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_get**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_get) | **GET** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_patch**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_patch) | **PATCH** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_put**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_put) | **PUT** /procurement/purchaseorders/{id}/lineitems/{lineItemId} | 
*Connectwise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_post**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_post) | **POST** /procurement/purchaseorders/{id}/lineitems | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_count_get**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_count_get) | **GET** /procurement/purchaseorders/count | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_get**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_get) | **GET** /procurement/purchaseorders | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_delete**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_delete) | **DELETE** /procurement/purchaseorders/{id} | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_get**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_get) | **GET** /procurement/purchaseorders/{id} | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_patch**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_patch) | **PATCH** /procurement/purchaseorders/{id} | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_put**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_put) | **PUT** /procurement/purchaseorders/{id} | 
*Connectwise::PurchaseOrdersApi* | [**procurement_purchaseorders_post**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_post) | **POST** /procurement/purchaseorders | 
*Connectwise::ReportsApi* | [**system_reports_get**](docs/ReportsApi.md#system_reports_get) | **GET** /system/reports | 
*Connectwise::ReportsApi* | [**system_reports_report_name_columns_get**](docs/ReportsApi.md#system_reports_report_name_columns_get) | **GET** /system/reports/{reportName}/columns | 
*Connectwise::ReportsApi* | [**system_reports_report_name_count_get**](docs/ReportsApi.md#system_reports_report_name_count_get) | **GET** /system/reports/{reportName}/count | 
*Connectwise::ReportsApi* | [**system_reports_report_name_get**](docs/ReportsApi.md#system_reports_report_name_get) | **GET** /system/reports/{reportName} | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_count_get**](docs/ScheduleEntriesApi.md#schedule_entries_count_get) | **GET** /schedule/entries/count | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_get**](docs/ScheduleEntriesApi.md#schedule_entries_get) | **GET** /schedule/entries | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_id_delete**](docs/ScheduleEntriesApi.md#schedule_entries_id_delete) | **DELETE** /schedule/entries/{id} | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_id_get**](docs/ScheduleEntriesApi.md#schedule_entries_id_get) | **GET** /schedule/entries/{id} | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_id_patch**](docs/ScheduleEntriesApi.md#schedule_entries_id_patch) | **PATCH** /schedule/entries/{id} | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_id_put**](docs/ScheduleEntriesApi.md#schedule_entries_id_put) | **PUT** /schedule/entries/{id} | 
*Connectwise::ScheduleEntriesApi* | [**schedule_entries_post**](docs/ScheduleEntriesApi.md#schedule_entries_post) | **POST** /schedule/entries | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_count_get**](docs/ScheduleStatusesApi.md#schedule_statuses_count_get) | **GET** /schedule/statuses/count | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_get**](docs/ScheduleStatusesApi.md#schedule_statuses_get) | **GET** /schedule/statuses | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_id_delete**](docs/ScheduleStatusesApi.md#schedule_statuses_id_delete) | **DELETE** /schedule/statuses/{id} | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_id_get**](docs/ScheduleStatusesApi.md#schedule_statuses_id_get) | **GET** /schedule/statuses/{id} | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_id_patch**](docs/ScheduleStatusesApi.md#schedule_statuses_id_patch) | **PATCH** /schedule/statuses/{id} | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_id_put**](docs/ScheduleStatusesApi.md#schedule_statuses_id_put) | **PUT** /schedule/statuses/{id} | 
*Connectwise::ScheduleStatusesApi* | [**schedule_statuses_post**](docs/ScheduleStatusesApi.md#schedule_statuses_post) | **POST** /schedule/statuses | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_count_get**](docs/ScheduleTypesApi.md#schedule_types_count_get) | **GET** /schedule/types/count | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_get**](docs/ScheduleTypesApi.md#schedule_types_get) | **GET** /schedule/types | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_id_delete**](docs/ScheduleTypesApi.md#schedule_types_id_delete) | **DELETE** /schedule/types/{id} | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_id_get**](docs/ScheduleTypesApi.md#schedule_types_id_get) | **GET** /schedule/types/{id} | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_id_patch**](docs/ScheduleTypesApi.md#schedule_types_id_patch) | **PATCH** /schedule/types/{id} | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_id_put**](docs/ScheduleTypesApi.md#schedule_types_id_put) | **PUT** /schedule/types/{id} | 
*Connectwise::ScheduleTypesApi* | [**schedule_types_post**](docs/ScheduleTypesApi.md#schedule_types_post) | **POST** /schedule/types | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_count_get**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_count_get) | **GET** /procurement/shipmentmethods/count | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_get**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_get) | **GET** /procurement/shipmentmethods | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_delete**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_delete) | **DELETE** /procurement/shipmentmethods/{id} | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_get**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_get) | **GET** /procurement/shipmentmethods/{id} | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_patch**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_patch) | **PATCH** /procurement/shipmentmethods/{id} | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_put**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_put) | **PUT** /procurement/shipmentmethods/{id} | 
*Connectwise::ShipmentMethodsApi* | [**procurement_shipmentmethods_post**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_post) | **POST** /procurement/shipmentmethods | 
*Connectwise::SourcesApi* | [**service_sources_count_get**](docs/SourcesApi.md#service_sources_count_get) | **GET** /service/sources/count | 
*Connectwise::SourcesApi* | [**service_sources_get**](docs/SourcesApi.md#service_sources_get) | **GET** /service/sources | 
*Connectwise::SourcesApi* | [**service_sources_id_delete**](docs/SourcesApi.md#service_sources_id_delete) | **DELETE** /service/sources/{id} | 
*Connectwise::SourcesApi* | [**service_sources_id_get**](docs/SourcesApi.md#service_sources_id_get) | **GET** /service/sources/{id} | 
*Connectwise::SourcesApi* | [**service_sources_id_patch**](docs/SourcesApi.md#service_sources_id_patch) | **PATCH** /service/sources/{id} | 
*Connectwise::SourcesApi* | [**service_sources_id_put**](docs/SourcesApi.md#service_sources_id_put) | **PUT** /service/sources/{id} | 
*Connectwise::SourcesApi* | [**service_sources_post**](docs/SourcesApi.md#service_sources_post) | **POST** /service/sources | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_count_get**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_count_get) | **GET** /procurement/categories/{id}/subcategories/count | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_get**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_get) | **GET** /procurement/categories/{id}/subcategories | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_post**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_post) | **POST** /procurement/categories/{id}/subcategories | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_delete**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_delete) | **DELETE** /procurement/categories/{id}/subcategories/{subcategoryID} | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_get**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_get) | **GET** /procurement/categories/{id}/subcategories/{subcategoryID} | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_patch**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_patch) | **PATCH** /procurement/categories/{id}/subcategories/{subcategoryID} | 
*Connectwise::SubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_put**](docs/SubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_put) | **PUT** /procurement/categories/{id}/subcategories/{subcategoryID} | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_count_get**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_count_get) | **GET** /service/surveys/{id}/questions/count | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_get**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_get) | **GET** /service/surveys/{id}/questions | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_post**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_post) | **POST** /service/surveys/{id}/questions | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_question_id_delete**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_question_id_delete) | **DELETE** /service/surveys/{id}/questions/{questionId} | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_question_id_get**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_question_id_get) | **GET** /service/surveys/{id}/questions/{questionId} | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_question_id_patch**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_question_id_patch) | **PATCH** /service/surveys/{id}/questions/{questionId} | 
*Connectwise::SurveyQuestionsApi* | [**service_surveys_id_questions_question_id_put**](docs/SurveyQuestionsApi.md#service_surveys_id_questions_question_id_put) | **PUT** /service/surveys/{id}/questions/{questionId} | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_count_get**](docs/SurveyResultsApi.md#service_surveys_id_results_count_get) | **GET** /service/surveys/{id}/results/count | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_get**](docs/SurveyResultsApi.md#service_surveys_id_results_get) | **GET** /service/surveys/{id}/results | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_post**](docs/SurveyResultsApi.md#service_surveys_id_results_post) | **POST** /service/surveys/{id}/results | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_result_id_delete**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_delete) | **DELETE** /service/surveys/{id}/results/{resultId} | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_result_id_get**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_get) | **GET** /service/surveys/{id}/results/{resultId} | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_result_id_patch**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_patch) | **PATCH** /service/surveys/{id}/results/{resultId} | 
*Connectwise::SurveyResultsApi* | [**service_surveys_id_results_result_id_put**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_put) | **PUT** /service/surveys/{id}/results/{resultId} | 
*Connectwise::SurveysApi* | [**service_surveys_count_get**](docs/SurveysApi.md#service_surveys_count_get) | **GET** /service/surveys/count | 
*Connectwise::SurveysApi* | [**service_surveys_get**](docs/SurveysApi.md#service_surveys_get) | **GET** /service/surveys | 
*Connectwise::SurveysApi* | [**service_surveys_id_delete**](docs/SurveysApi.md#service_surveys_id_delete) | **DELETE** /service/surveys/{id} | 
*Connectwise::SurveysApi* | [**service_surveys_id_get**](docs/SurveysApi.md#service_surveys_id_get) | **GET** /service/surveys/{id} | 
*Connectwise::SurveysApi* | [**service_surveys_id_patch**](docs/SurveysApi.md#service_surveys_id_patch) | **PATCH** /service/surveys/{id} | 
*Connectwise::SurveysApi* | [**service_surveys_id_put**](docs/SurveysApi.md#service_surveys_id_put) | **PUT** /service/surveys/{id} | 
*Connectwise::SurveysApi* | [**service_surveys_post**](docs/SurveysApi.md#service_surveys_post) | **POST** /service/surveys | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_count_get**](docs/TicketNotesApi.md#service_tickets_id_notes_count_get) | **GET** /service/tickets/{id}/notes/count | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_get**](docs/TicketNotesApi.md#service_tickets_id_notes_get) | **GET** /service/tickets/{id}/notes | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_note_id_delete**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_delete) | **DELETE** /service/tickets/{id}/notes/{noteId} | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_note_id_get**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_get) | **GET** /service/tickets/{id}/notes/{noteId} | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_note_id_patch**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_patch) | **PATCH** /service/tickets/{id}/notes/{noteId} | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_note_id_put**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_put) | **PUT** /service/tickets/{id}/notes/{noteId} | 
*Connectwise::TicketNotesApi* | [**service_tickets_id_notes_post**](docs/TicketNotesApi.md#service_tickets_id_notes_post) | **POST** /service/tickets/{id}/notes | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_count_get**](docs/TicketTasksApi.md#service_tickets_id_tasks_count_get) | **GET** /service/tickets/{id}/tasks/count | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_get**](docs/TicketTasksApi.md#service_tickets_id_tasks_get) | **GET** /service/tickets/{id}/tasks | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_post**](docs/TicketTasksApi.md#service_tickets_id_tasks_post) | **POST** /service/tickets/{id}/tasks | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_delete**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_delete) | **DELETE** /service/tickets/{id}/tasks/{taskId} | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_get**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_get) | **GET** /service/tickets/{id}/tasks/{taskId} | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_patch**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_patch) | **PATCH** /service/tickets/{id}/tasks/{taskId} | 
*Connectwise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_put**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_put) | **PUT** /service/tickets/{id}/tasks/{taskId} | 
*Connectwise::TicketsApi* | [**service_tickets_count_get**](docs/TicketsApi.md#service_tickets_count_get) | **GET** /service/tickets/count | 
*Connectwise::TicketsApi* | [**service_tickets_get**](docs/TicketsApi.md#service_tickets_get) | **GET** /service/tickets | 
*Connectwise::TicketsApi* | [**service_tickets_id_activities_count_get**](docs/TicketsApi.md#service_tickets_id_activities_count_get) | **GET** /service/tickets/{id}/activities/count | 
*Connectwise::TicketsApi* | [**service_tickets_id_activities_get**](docs/TicketsApi.md#service_tickets_id_activities_get) | **GET** /service/tickets/{id}/activities | 
*Connectwise::TicketsApi* | [**service_tickets_id_configurations_config_id_delete**](docs/TicketsApi.md#service_tickets_id_configurations_config_id_delete) | **DELETE** /service/tickets/{id}/configurations/{configId} | 
*Connectwise::TicketsApi* | [**service_tickets_id_configurations_config_id_get**](docs/TicketsApi.md#service_tickets_id_configurations_config_id_get) | **GET** /service/tickets/{id}/configurations/{configId} | 
*Connectwise::TicketsApi* | [**service_tickets_id_configurations_count_get**](docs/TicketsApi.md#service_tickets_id_configurations_count_get) | **GET** /service/tickets/{id}/configurations/count | 
*Connectwise::TicketsApi* | [**service_tickets_id_configurations_get**](docs/TicketsApi.md#service_tickets_id_configurations_get) | **GET** /service/tickets/{id}/configurations | 
*Connectwise::TicketsApi* | [**service_tickets_id_configurations_post**](docs/TicketsApi.md#service_tickets_id_configurations_post) | **POST** /service/tickets/{id}/configurations | 
*Connectwise::TicketsApi* | [**service_tickets_id_delete**](docs/TicketsApi.md#service_tickets_id_delete) | **DELETE** /service/tickets/{id} | 
*Connectwise::TicketsApi* | [**service_tickets_id_documents_count_get**](docs/TicketsApi.md#service_tickets_id_documents_count_get) | **GET** /service/tickets/{id}/documents/count | 
*Connectwise::TicketsApi* | [**service_tickets_id_documents_get**](docs/TicketsApi.md#service_tickets_id_documents_get) | **GET** /service/tickets/{id}/documents | 
*Connectwise::TicketsApi* | [**service_tickets_id_get**](docs/TicketsApi.md#service_tickets_id_get) | **GET** /service/tickets/{id} | 
*Connectwise::TicketsApi* | [**service_tickets_id_patch**](docs/TicketsApi.md#service_tickets_id_patch) | **PATCH** /service/tickets/{id} | 
*Connectwise::TicketsApi* | [**service_tickets_id_products_count_get**](docs/TicketsApi.md#service_tickets_id_products_count_get) | **GET** /service/tickets/{id}/products/count | 
*Connectwise::TicketsApi* | [**service_tickets_id_products_get**](docs/TicketsApi.md#service_tickets_id_products_get) | **GET** /service/tickets/{id}/products | 
*Connectwise::TicketsApi* | [**service_tickets_id_put**](docs/TicketsApi.md#service_tickets_id_put) | **PUT** /service/tickets/{id} | 
*Connectwise::TicketsApi* | [**service_tickets_id_scheduleentries_count_get**](docs/TicketsApi.md#service_tickets_id_scheduleentries_count_get) | **GET** /service/tickets/{id}/scheduleentries/count | 
*Connectwise::TicketsApi* | [**service_tickets_id_scheduleentries_get**](docs/TicketsApi.md#service_tickets_id_scheduleentries_get) | **GET** /service/tickets/{id}/scheduleentries | 
*Connectwise::TicketsApi* | [**service_tickets_id_timeentries_count_get**](docs/TicketsApi.md#service_tickets_id_timeentries_count_get) | **GET** /service/tickets/{id}/timeentries/count | 
*Connectwise::TicketsApi* | [**service_tickets_id_timeentries_get**](docs/TicketsApi.md#service_tickets_id_timeentries_get) | **GET** /service/tickets/{id}/timeentries | 
*Connectwise::TicketsApi* | [**service_tickets_post**](docs/TicketsApi.md#service_tickets_post) | **POST** /service/tickets | 
*Connectwise::TicketsApi* | [**service_tickets_search_post**](docs/TicketsApi.md#service_tickets_search_post) | **POST** /service/tickets/search | 
*Connectwise::TimeEntriesApi* | [**time_entries_count_get**](docs/TimeEntriesApi.md#time_entries_count_get) | **GET** /time/entries/count | 
*Connectwise::TimeEntriesApi* | [**time_entries_get**](docs/TimeEntriesApi.md#time_entries_get) | **GET** /time/entries | 
*Connectwise::TimeEntriesApi* | [**time_entries_id_delete**](docs/TimeEntriesApi.md#time_entries_id_delete) | **DELETE** /time/entries/{id} | 
*Connectwise::TimeEntriesApi* | [**time_entries_id_get**](docs/TimeEntriesApi.md#time_entries_id_get) | **GET** /time/entries/{id} | 
*Connectwise::TimeEntriesApi* | [**time_entries_id_patch**](docs/TimeEntriesApi.md#time_entries_id_patch) | **PATCH** /time/entries/{id} | 
*Connectwise::TimeEntriesApi* | [**time_entries_id_put**](docs/TimeEntriesApi.md#time_entries_id_put) | **PUT** /time/entries/{id} | 
*Connectwise::TimeEntriesApi* | [**time_entries_post**](docs/TimeEntriesApi.md#time_entries_post) | **POST** /time/entries | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_delete**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_delete) | **DELETE** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_get**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_get) | **GET** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_patch**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_patch) | **PATCH** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_put**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_put) | **PUT** /procurement/unitOfMeasures/{id}/conversions/{conversionId} | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_count_get**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_count_get) | **GET** /procurement/unitOfMeasures/{id}/conversions/count | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_get**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_get) | **GET** /procurement/unitOfMeasures/{id}/conversions | 
*Connectwise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_post**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_post) | **POST** /procurement/unitOfMeasures/{id}/conversions | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_count_get**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_count_get) | **GET** /procurement/unitOfMeasures/count | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_get**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_get) | **GET** /procurement/unitOfMeasures | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_id_delete**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_id_delete) | **DELETE** /procurement/unitOfMeasures/{id} | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_id_get**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_id_get) | **GET** /procurement/unitOfMeasures/{id} | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_id_patch**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_id_patch) | **PATCH** /procurement/unitOfMeasures/{id} | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_id_put**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_id_put) | **PUT** /procurement/unitOfMeasures/{id} | 
*Connectwise::UnitsOfMeasureApi* | [**procurement_unit_of_measures_post**](docs/UnitsOfMeasureApi.md#procurement_unit_of_measures_post) | **POST** /procurement/unitOfMeasures | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_count_get**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_count_get) | **GET** /system/userDefinedFields/count | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_get**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_get) | **GET** /system/userDefinedFields | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_delete**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_delete) | **DELETE** /system/userDefinedFields/{id} | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_get**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_get) | **GET** /system/userDefinedFields/{id} | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_patch**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_patch) | **PATCH** /system/userDefinedFields/{id} | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_put**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_put) | **PUT** /system/userDefinedFields/{id} | 
*Connectwise::UserDefinedFieldsApi* | [**system_user_defined_fields_post**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_post) | **POST** /system/userDefinedFields | 


## Documentation for Models

 - [Connectwise::Activity](docs/Activity.md)
 - [Connectwise::ActivityReference](docs/ActivityReference.md)
 - [Connectwise::ActivityStatus](docs/ActivityStatus.md)
 - [Connectwise::ActivityStatusReference](docs/ActivityStatusReference.md)
 - [Connectwise::ActivityType](docs/ActivityType.md)
 - [Connectwise::ActivityTypeReference](docs/ActivityTypeReference.md)
 - [Connectwise::Addition](docs/Addition.md)
 - [Connectwise::Adjustment](docs/Adjustment.md)
 - [Connectwise::Agreement](docs/Agreement.md)
 - [Connectwise::AgreementReference](docs/AgreementReference.md)
 - [Connectwise::AgreementSite](docs/AgreementSite.md)
 - [Connectwise::AgreementType](docs/AgreementType.md)
 - [Connectwise::AgreementTypeReference](docs/AgreementTypeReference.md)
 - [Connectwise::AgreementWorkRole](docs/AgreementWorkRole.md)
 - [Connectwise::AgreementWorkRoleExclusion](docs/AgreementWorkRoleExclusion.md)
 - [Connectwise::AgreementWorkType](docs/AgreementWorkType.md)
 - [Connectwise::AgreementWorkTypeExclusion](docs/AgreementWorkTypeExclusion.md)
 - [Connectwise::AuditTrailEntry](docs/AuditTrailEntry.md)
 - [Connectwise::AuditTrailEntryInsertRequest](docs/AuditTrailEntryInsertRequest.md)
 - [Connectwise::AuditTrailObjects](docs/AuditTrailObjects.md)
 - [Connectwise::Batch](docs/Batch.md)
 - [Connectwise::BatchReference](docs/BatchReference.md)
 - [Connectwise::BillingStatusReference](docs/BillingStatusReference.md)
 - [Connectwise::BillingTermsReference](docs/BillingTermsReference.md)
 - [Connectwise::Board](docs/Board.md)
 - [Connectwise::BoardDefault](docs/BoardDefault.md)
 - [Connectwise::BoardReference](docs/BoardReference.md)
 - [Connectwise::CalendarReference](docs/CalendarReference.md)
 - [Connectwise::CallbackEntry](docs/CallbackEntry.md)
 - [Connectwise::Campaign](docs/Campaign.md)
 - [Connectwise::CampaignAudit](docs/CampaignAudit.md)
 - [Connectwise::CampaignReference](docs/CampaignReference.md)
 - [Connectwise::CampaignStatus](docs/CampaignStatus.md)
 - [Connectwise::CampaignStatusReference](docs/CampaignStatusReference.md)
 - [Connectwise::CampaignSubType](docs/CampaignSubType.md)
 - [Connectwise::CampaignSubTypeReference](docs/CampaignSubTypeReference.md)
 - [Connectwise::CampaignType](docs/CampaignType.md)
 - [Connectwise::CampaignTypeReference](docs/CampaignTypeReference.md)
 - [Connectwise::CatalogComponent](docs/CatalogComponent.md)
 - [Connectwise::CatalogItem](docs/CatalogItem.md)
 - [Connectwise::CatalogItemReference](docs/CatalogItemReference.md)
 - [Connectwise::Category](docs/Category.md)
 - [Connectwise::ChargeCodeReference](docs/ChargeCodeReference.md)
 - [Connectwise::ClassificationReference](docs/ClassificationReference.md)
 - [Connectwise::Code](docs/Code.md)
 - [Connectwise::CommunicationTypeReference](docs/CommunicationTypeReference.md)
 - [Connectwise::Company](docs/Company.md)
 - [Connectwise::CompanyManagementSummary](docs/CompanyManagementSummary.md)
 - [Connectwise::CompanyMerge](docs/CompanyMerge.md)
 - [Connectwise::CompanyNote](docs/CompanyNote.md)
 - [Connectwise::CompanyReference](docs/CompanyReference.md)
 - [Connectwise::CompanySite](docs/CompanySite.md)
 - [Connectwise::CompanyStatus](docs/CompanyStatus.md)
 - [Connectwise::CompanyStatusReference](docs/CompanyStatusReference.md)
 - [Connectwise::CompanyTeam](docs/CompanyTeam.md)
 - [Connectwise::CompanyType](docs/CompanyType.md)
 - [Connectwise::CompanyTypeReference](docs/CompanyTypeReference.md)
 - [Connectwise::Configuration](docs/Configuration.md)
 - [Connectwise::ConfigurationQuestion](docs/ConfigurationQuestion.md)
 - [Connectwise::ConfigurationReference](docs/ConfigurationReference.md)
 - [Connectwise::ConfigurationStatus](docs/ConfigurationStatus.md)
 - [Connectwise::ConfigurationStatusReference](docs/ConfigurationStatusReference.md)
 - [Connectwise::ConfigurationType](docs/ConfigurationType.md)
 - [Connectwise::ConfigurationTypeQuestion](docs/ConfigurationTypeQuestion.md)
 - [Connectwise::ConfigurationTypeReference](docs/ConfigurationTypeReference.md)
 - [Connectwise::ConnectWiseHostedSetup](docs/ConnectWiseHostedSetup.md)
 - [Connectwise::Contact](docs/Contact.md)
 - [Connectwise::ContactCommunication](docs/ContactCommunication.md)
 - [Connectwise::ContactCommunicationItem](docs/ContactCommunicationItem.md)
 - [Connectwise::ContactDepartment](docs/ContactDepartment.md)
 - [Connectwise::ContactDepartmentReference](docs/ContactDepartmentReference.md)
 - [Connectwise::ContactNote](docs/ContactNote.md)
 - [Connectwise::ContactReference](docs/ContactReference.md)
 - [Connectwise::ContactRelationship](docs/ContactRelationship.md)
 - [Connectwise::ContactType](docs/ContactType.md)
 - [Connectwise::ContactTypeReference](docs/ContactTypeReference.md)
 - [Connectwise::Conversion](docs/Conversion.md)
 - [Connectwise::Count](docs/Count.md)
 - [Connectwise::CountryReference](docs/CountryReference.md)
 - [Connectwise::Currency](docs/Currency.md)
 - [Connectwise::CurrencyReference](docs/CurrencyReference.md)
 - [Connectwise::CustomFieldValue](docs/CustomFieldValue.md)
 - [Connectwise::DocumentInfo](docs/DocumentInfo.md)
 - [Connectwise::DocumentReference](docs/DocumentReference.md)
 - [Connectwise::EmailOpened](docs/EmailOpened.md)
 - [Connectwise::EntityTypeReference](docs/EntityTypeReference.md)
 - [Connectwise::Error](docs/Error.md)
 - [Connectwise::ExcludedMember](docs/ExcludedMember.md)
 - [Connectwise::ExpenseEntry](docs/ExpenseEntry.md)
 - [Connectwise::ExpenseTax](docs/ExpenseTax.md)
 - [Connectwise::ExpenseTaxTypeReference](docs/ExpenseTaxTypeReference.md)
 - [Connectwise::ExpenseType](docs/ExpenseType.md)
 - [Connectwise::ExpenseTypeReference](docs/ExpenseTypeReference.md)
 - [Connectwise::FilterValues](docs/FilterValues.md)
 - [Connectwise::Forecast](docs/Forecast.md)
 - [Connectwise::FormSubmitted](docs/FormSubmitted.md)
 - [Connectwise::GenericIdIdentifierReference](docs/GenericIdIdentifierReference.md)
 - [Connectwise::Group](docs/Group.md)
 - [Connectwise::GroupReference](docs/GroupReference.md)
 - [Connectwise::Guid](docs/Guid.md)
 - [Connectwise::Info](docs/Info.md)
 - [Connectwise::IntegratorLogin](docs/IntegratorLogin.md)
 - [Connectwise::Invoice](docs/Invoice.md)
 - [Connectwise::InvoiceReference](docs/InvoiceReference.md)
 - [Connectwise::Item](docs/Item.md)
 - [Connectwise::IvItemReference](docs/IvItemReference.md)
 - [Connectwise::JObject](docs/JObject.md)
 - [Connectwise::KnowledgeBaseArticle](docs/KnowledgeBaseArticle.md)
 - [Connectwise::Link](docs/Link.md)
 - [Connectwise::LinkClicked](docs/LinkClicked.md)
 - [Connectwise::Location](docs/Location.md)
 - [Connectwise::ManagementSolutionReference](docs/ManagementSolutionReference.md)
 - [Connectwise::Manufacturer](docs/Manufacturer.md)
 - [Connectwise::ManufacturerReference](docs/ManufacturerReference.md)
 - [Connectwise::MarketingCompany](docs/MarketingCompany.md)
 - [Connectwise::MarketingContact](docs/MarketingContact.md)
 - [Connectwise::Member](docs/Member.md)
 - [Connectwise::MemberReference](docs/MemberReference.md)
 - [Connectwise::MemberTypeReference](docs/MemberTypeReference.md)
 - [Connectwise::MenuEntry](docs/MenuEntry.md)
 - [Connectwise::MenuLocationReference](docs/MenuLocationReference.md)
 - [Connectwise::Metadata](docs/Metadata.md)
 - [Connectwise::NoteTypeReference](docs/NoteTypeReference.md)
 - [Connectwise::Opportunity](docs/Opportunity.md)
 - [Connectwise::OpportunityContact](docs/OpportunityContact.md)
 - [Connectwise::OpportunityNote](docs/OpportunityNote.md)
 - [Connectwise::OpportunityPriorityReference](docs/OpportunityPriorityReference.md)
 - [Connectwise::OpportunityProbabilityReference](docs/OpportunityProbabilityReference.md)
 - [Connectwise::OpportunityRating](docs/OpportunityRating.md)
 - [Connectwise::OpportunityRatingReference](docs/OpportunityRatingReference.md)
 - [Connectwise::OpportunityReference](docs/OpportunityReference.md)
 - [Connectwise::OpportunitySalesRoleReference](docs/OpportunitySalesRoleReference.md)
 - [Connectwise::OpportunityStageReference](docs/OpportunityStageReference.md)
 - [Connectwise::OpportunityStatus](docs/OpportunityStatus.md)
 - [Connectwise::OpportunityStatusReference](docs/OpportunityStatusReference.md)
 - [Connectwise::OpportunityToAgreementConversion](docs/OpportunityToAgreementConversion.md)
 - [Connectwise::OpportunityToProjectConversion](docs/OpportunityToProjectConversion.md)
 - [Connectwise::OpportunityToSalesOrderConversion](docs/OpportunityToSalesOrderConversion.md)
 - [Connectwise::OpportunityToServiceTicketConversion](docs/OpportunityToServiceTicketConversion.md)
 - [Connectwise::OpportunityType](docs/OpportunityType.md)
 - [Connectwise::OpportunityTypeReference](docs/OpportunityTypeReference.md)
 - [Connectwise::Order](docs/Order.md)
 - [Connectwise::OrderStatus](docs/OrderStatus.md)
 - [Connectwise::OrderStatusReference](docs/OrderStatusReference.md)
 - [Connectwise::OwnershipTypeReference](docs/OwnershipTypeReference.md)
 - [Connectwise::PatchOperation](docs/PatchOperation.md)
 - [Connectwise::Payment](docs/Payment.md)
 - [Connectwise::PaymentMethodReference](docs/PaymentMethodReference.md)
 - [Connectwise::PhaseStatusReference](docs/PhaseStatusReference.md)
 - [Connectwise::PortalSecurity](docs/PortalSecurity.md)
 - [Connectwise::PricingBreak](docs/PricingBreak.md)
 - [Connectwise::PricingDetail](docs/PricingDetail.md)
 - [Connectwise::PricingSchedule](docs/PricingSchedule.md)
 - [Connectwise::Priority](docs/Priority.md)
 - [Connectwise::PriorityReference](docs/PriorityReference.md)
 - [Connectwise::ProductCategoryReference](docs/ProductCategoryReference.md)
 - [Connectwise::ProductComponent](docs/ProductComponent.md)
 - [Connectwise::ProductItem](docs/ProductItem.md)
 - [Connectwise::ProductItemReference](docs/ProductItemReference.md)
 - [Connectwise::ProductPickingShippingDetail](docs/ProductPickingShippingDetail.md)
 - [Connectwise::ProductRecurring](docs/ProductRecurring.md)
 - [Connectwise::ProductReference](docs/ProductReference.md)
 - [Connectwise::ProductSubCategoryReference](docs/ProductSubCategoryReference.md)
 - [Connectwise::ProductType](docs/ProductType.md)
 - [Connectwise::ProductTypeReference](docs/ProductTypeReference.md)
 - [Connectwise::Project](docs/Project.md)
 - [Connectwise::ProjectBoardReference](docs/ProjectBoardReference.md)
 - [Connectwise::ProjectContact](docs/ProjectContact.md)
 - [Connectwise::ProjectNote](docs/ProjectNote.md)
 - [Connectwise::ProjectPhase](docs/ProjectPhase.md)
 - [Connectwise::ProjectPhaseReference](docs/ProjectPhaseReference.md)
 - [Connectwise::ProjectReference](docs/ProjectReference.md)
 - [Connectwise::ProjectRoleReference](docs/ProjectRoleReference.md)
 - [Connectwise::ProjectStatusReference](docs/ProjectStatusReference.md)
 - [Connectwise::ProjectTeamMember](docs/ProjectTeamMember.md)
 - [Connectwise::ProjectTypeReference](docs/ProjectTypeReference.md)
 - [Connectwise::PurchaseOrder](docs/PurchaseOrder.md)
 - [Connectwise::PurchaseOrderLineItem](docs/PurchaseOrderLineItem.md)
 - [Connectwise::PurchaseOrderReference](docs/PurchaseOrderReference.md)
 - [Connectwise::PurchaseOrderStatusReference](docs/PurchaseOrderStatusReference.md)
 - [Connectwise::RelationshipReference](docs/RelationshipReference.md)
 - [Connectwise::ReminderReference](docs/ReminderReference.md)
 - [Connectwise::Report](docs/Report.md)
 - [Connectwise::ReportDataResponse](docs/ReportDataResponse.md)
 - [Connectwise::RequestPasswordRequest](docs/RequestPasswordRequest.md)
 - [Connectwise::SLAReference](docs/SLAReference.md)
 - [Connectwise::SalesTeamReference](docs/SalesTeamReference.md)
 - [Connectwise::ScheduleEntry](docs/ScheduleEntry.md)
 - [Connectwise::ScheduleEntryReference](docs/ScheduleEntryReference.md)
 - [Connectwise::ScheduleSpanReference](docs/ScheduleSpanReference.md)
 - [Connectwise::ScheduleStatus](docs/ScheduleStatus.md)
 - [Connectwise::ScheduleStatusReference](docs/ScheduleStatusReference.md)
 - [Connectwise::ScheduleType](docs/ScheduleType.md)
 - [Connectwise::ScheduleTypeReference](docs/ScheduleTypeReference.md)
 - [Connectwise::SecurityRoleReference](docs/SecurityRoleReference.md)
 - [Connectwise::ServiceCodeReference](docs/ServiceCodeReference.md)
 - [Connectwise::ServiceItemReference](docs/ServiceItemReference.md)
 - [Connectwise::ServiceLocationReference](docs/ServiceLocationReference.md)
 - [Connectwise::ServiceNote](docs/ServiceNote.md)
 - [Connectwise::ServiceSignoffReference](docs/ServiceSignoffReference.md)
 - [Connectwise::ServiceSourceReference](docs/ServiceSourceReference.md)
 - [Connectwise::ServiceStatusReference](docs/ServiceStatusReference.md)
 - [Connectwise::ServiceSubTypeReference](docs/ServiceSubTypeReference.md)
 - [Connectwise::ServiceTeamReference](docs/ServiceTeamReference.md)
 - [Connectwise::ServiceTypeReference](docs/ServiceTypeReference.md)
 - [Connectwise::ShipmentMethod](docs/ShipmentMethod.md)
 - [Connectwise::ShipmentMethodReference](docs/ShipmentMethodReference.md)
 - [Connectwise::SicCodeReference](docs/SicCodeReference.md)
 - [Connectwise::SiteReference](docs/SiteReference.md)
 - [Connectwise::Source](docs/Source.md)
 - [Connectwise::Status](docs/Status.md)
 - [Connectwise::SubCategory](docs/SubCategory.md)
 - [Connectwise::SubType](docs/SubType.md)
 - [Connectwise::SuccessResponse](docs/SuccessResponse.md)
 - [Connectwise::Survey](docs/Survey.md)
 - [Connectwise::SurveyQuestion](docs/SurveyQuestion.md)
 - [Connectwise::SurveyQuestionOption](docs/SurveyQuestionOption.md)
 - [Connectwise::SurveyResult](docs/SurveyResult.md)
 - [Connectwise::SurveyResultDetail](docs/SurveyResultDetail.md)
 - [Connectwise::Task](docs/Task.md)
 - [Connectwise::TaxCodeReference](docs/TaxCodeReference.md)
 - [Connectwise::Team](docs/Team.md)
 - [Connectwise::TeamRoleReference](docs/TeamRoleReference.md)
 - [Connectwise::Ticket](docs/Ticket.md)
 - [Connectwise::TicketReference](docs/TicketReference.md)
 - [Connectwise::TimeEntry](docs/TimeEntry.md)
 - [Connectwise::TimeEntryReference](docs/TimeEntryReference.md)
 - [Connectwise::TimeZoneReference](docs/TimeZoneReference.md)
 - [Connectwise::Token](docs/Token.md)
 - [Connectwise::Track](docs/Track.md)
 - [Connectwise::TrackReference](docs/TrackReference.md)
 - [Connectwise::Transaction](docs/Transaction.md)
 - [Connectwise::Type](docs/Type.md)
 - [Connectwise::TypeAssociations](docs/TypeAssociations.md)
 - [Connectwise::UnitOfMeasure](docs/UnitOfMeasure.md)
 - [Connectwise::UnitOfMeasureReference](docs/UnitOfMeasureReference.md)
 - [Connectwise::UnpostedExpense](docs/UnpostedExpense.md)
 - [Connectwise::UnpostedInvoice](docs/UnpostedInvoice.md)
 - [Connectwise::UnpostedProcurement](docs/UnpostedProcurement.md)
 - [Connectwise::UserDefinedField](docs/UserDefinedField.md)
 - [Connectwise::UserDefinedFieldOption](docs/UserDefinedFieldOption.md)
 - [Connectwise::ValidatePortalRequest](docs/ValidatePortalRequest.md)
 - [Connectwise::ValidatePortalResponse](docs/ValidatePortalResponse.md)
 - [Connectwise::ValidationError](docs/ValidationError.md)
 - [Connectwise::WarehouseBinReference](docs/WarehouseBinReference.md)
 - [Connectwise::WarehouseReference](docs/WarehouseReference.md)
 - [Connectwise::WorkRoleReference](docs/WorkRoleReference.md)
 - [Connectwise::WorkTypeReference](docs/WorkTypeReference.md)


## Documentation for Authorization


### BasicAuth

- **Type**: HTTP basic authentication

