# connectwise-ruby-sdk

ConnectWise - the Ruby gem for the ConnectWise API

ConnectWise Time API

- API version: 3.0.0
- Package version: 2.0.0

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build connectwise-ruby-sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./connectwise-ruby-sdk-2.0.0.gem
```
(for development, run `gem install --dev ./connectwise-ruby-sdk-2.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'connectwise-ruby-sdk', '~> 2.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'connectwise-ruby-sdk', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

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
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::AccountingBatchesApi.new

opts = {
  conditions: "conditions_example" # String |
}

begin
  result = api_instance.finance_accounting_batches_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingBatchesApi->finance_accounting_batches_count_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_batches_count_get**](docs/AccountingBatchesApi.md#finance_accounting_batches_count_get) | **GET** /finance/accounting/batches/count |
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_batches_get**](docs/AccountingBatchesApi.md#finance_accounting_batches_get) | **GET** /finance/accounting/batches |
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_batches_id_delete**](docs/AccountingBatchesApi.md#finance_accounting_batches_id_delete) | **DELETE** /finance/accounting/batches/{id} |
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_batches_id_export_post**](docs/AccountingBatchesApi.md#finance_accounting_batches_id_export_post) | **POST** /finance/accounting/batches/{id}/export |
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_batches_id_get**](docs/AccountingBatchesApi.md#finance_accounting_batches_id_get) | **GET** /finance/accounting/batches/{id} |
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_batches_post**](docs/AccountingBatchesApi.md#finance_accounting_batches_post) | **POST** /finance/accounting/batches |
*ConnectWise::AccountingBatchesApi* | [**finance_accounting_export_post**](docs/AccountingBatchesApi.md#finance_accounting_export_post) | **POST** /finance/accounting/export |
*ConnectWise::AccountingPackagesApi* | [**system_accounting_packages_count_get**](docs/AccountingPackagesApi.md#system_accounting_packages_count_get) | **GET** /system/accountingPackages/count |
*ConnectWise::AccountingPackagesApi* | [**system_accounting_packages_get**](docs/AccountingPackagesApi.md#system_accounting_packages_get) | **GET** /system/accountingPackages |
*ConnectWise::AccountingPackagesApi* | [**system_accounting_packages_id_get**](docs/AccountingPackagesApi.md#system_accounting_packages_id_get) | **GET** /system/accountingPackages/{id} |
*ConnectWise::AccountingUnpostedExpensesApi* | [**finance_accounting_unpostedexpenses_count_get**](docs/AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_count_get) | **GET** /finance/accounting/unpostedexpenses/count |
*ConnectWise::AccountingUnpostedExpensesApi* | [**finance_accounting_unpostedexpenses_get**](docs/AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_get) | **GET** /finance/accounting/unpostedexpenses |
*ConnectWise::AccountingUnpostedExpensesApi* | [**finance_accounting_unpostedexpenses_id_get**](docs/AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_id_get) | **GET** /finance/accounting/unpostedexpenses/{id} |
*ConnectWise::AccountingUnpostedProcurementsApi* | [**finance_accounting_unpostedprocurement_count_get**](docs/AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_count_get) | **GET** /finance/accounting/unpostedprocurement/count |
*ConnectWise::AccountingUnpostedProcurementsApi* | [**finance_accounting_unpostedprocurement_get**](docs/AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_get) | **GET** /finance/accounting/unpostedprocurement |
*ConnectWise::AccountingUnpostedProcurementsApi* | [**finance_accounting_unpostedprocurement_id_get**](docs/AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_id_get) | **GET** /finance/accounting/unpostedprocurement/{id} |
*ConnectWise::AccountingUnpostedinvoicesApi* | [**finance_accounting_unpostedinvoices_count_get**](docs/AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_count_get) | **GET** /finance/accounting/unpostedinvoices/count |
*ConnectWise::AccountingUnpostedinvoicesApi* | [**finance_accounting_unpostedinvoices_get**](docs/AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_get) | **GET** /finance/accounting/unpostedinvoices |
*ConnectWise::AccountingUnpostedinvoicesApi* | [**finance_accounting_unpostedinvoices_id_get**](docs/AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_id_get) | **GET** /finance/accounting/unpostedinvoices/{id} |
*ConnectWise::ActivitiesApi* | [**sales_activities_count_get**](docs/ActivitiesApi.md#sales_activities_count_get) | **GET** /sales/activities/count |
*ConnectWise::ActivitiesApi* | [**sales_activities_get**](docs/ActivitiesApi.md#sales_activities_get) | **GET** /sales/activities |
*ConnectWise::ActivitiesApi* | [**sales_activities_id_delete**](docs/ActivitiesApi.md#sales_activities_id_delete) | **DELETE** /sales/activities/{id} |
*ConnectWise::ActivitiesApi* | [**sales_activities_id_get**](docs/ActivitiesApi.md#sales_activities_id_get) | **GET** /sales/activities/{id} |
*ConnectWise::ActivitiesApi* | [**sales_activities_id_patch**](docs/ActivitiesApi.md#sales_activities_id_patch) | **PATCH** /sales/activities/{id} |
*ConnectWise::ActivitiesApi* | [**sales_activities_id_put**](docs/ActivitiesApi.md#sales_activities_id_put) | **PUT** /sales/activities/{id} |
*ConnectWise::ActivitiesApi* | [**sales_activities_post**](docs/ActivitiesApi.md#sales_activities_post) | **POST** /sales/activities |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_count_get**](docs/ActivityStatusesApi.md#sales_activities_statuses_count_get) | **GET** /sales/activities/statuses/count |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_get**](docs/ActivityStatusesApi.md#sales_activities_statuses_get) | **GET** /sales/activities/statuses |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_id_delete**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_delete) | **DELETE** /sales/activities/statuses/{id} |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_id_get**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_get) | **GET** /sales/activities/statuses/{id} |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_id_patch**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_patch) | **PATCH** /sales/activities/statuses/{id} |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_id_put**](docs/ActivityStatusesApi.md#sales_activities_statuses_id_put) | **PUT** /sales/activities/statuses/{id} |
*ConnectWise::ActivityStatusesApi* | [**sales_activities_statuses_post**](docs/ActivityStatusesApi.md#sales_activities_statuses_post) | **POST** /sales/activities/statuses |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_count_get**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_count_get) | **GET** /time/activitystopwatches/count |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_get**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_get) | **GET** /time/activitystopwatches |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_id_delete**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_id_delete) | **DELETE** /time/activitystopwatches/{id} |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_id_get**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_id_get) | **GET** /time/activitystopwatches/{id} |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_id_patch**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_id_patch) | **PATCH** /time/activitystopwatches/{id} |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_id_put**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_id_put) | **PUT** /time/activitystopwatches/{id} |
*ConnectWise::ActivityStopwatchesApi* | [**time_activitystopwatches_post**](docs/ActivityStopwatchesApi.md#time_activitystopwatches_post) | **POST** /time/activitystopwatches |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_count_get**](docs/ActivityTypesApi.md#sales_activities_types_count_get) | **GET** /sales/activities/types/count |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_get**](docs/ActivityTypesApi.md#sales_activities_types_get) | **GET** /sales/activities/types |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_id_delete**](docs/ActivityTypesApi.md#sales_activities_types_id_delete) | **DELETE** /sales/activities/types/{id} |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_id_get**](docs/ActivityTypesApi.md#sales_activities_types_id_get) | **GET** /sales/activities/types/{id} |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_id_patch**](docs/ActivityTypesApi.md#sales_activities_types_id_patch) | **PATCH** /sales/activities/types/{id} |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_id_put**](docs/ActivityTypesApi.md#sales_activities_types_id_put) | **PUT** /sales/activities/types/{id} |
*ConnectWise::ActivityTypesApi* | [**sales_activities_types_post**](docs/ActivityTypesApi.md#sales_activities_types_post) | **POST** /sales/activities/types |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_count_get**](docs/AddressFormatsApi.md#company_address_formats_count_get) | **GET** /company/addressFormats/count |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_get**](docs/AddressFormatsApi.md#company_address_formats_get) | **GET** /company/addressFormats |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_id_delete**](docs/AddressFormatsApi.md#company_address_formats_id_delete) | **DELETE** /company/addressFormats/{id} |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_id_get**](docs/AddressFormatsApi.md#company_address_formats_id_get) | **GET** /company/addressFormats/{id} |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_id_patch**](docs/AddressFormatsApi.md#company_address_formats_id_patch) | **PATCH** /company/addressFormats/{id} |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_id_put**](docs/AddressFormatsApi.md#company_address_formats_id_put) | **PUT** /company/addressFormats/{id} |
*ConnectWise::AddressFormatsApi* | [**company_address_formats_post**](docs/AddressFormatsApi.md#company_address_formats_post) | **POST** /company/addressFormats |
*ConnectWise::AdjustmentDetailsApi* | [**procurement_adjustments_id_details_count_get**](docs/AdjustmentDetailsApi.md#procurement_adjustments_id_details_count_get) | **GET** /procurement/adjustments/{id}/details/count |
*ConnectWise::AdjustmentDetailsApi* | [**procurement_adjustments_id_details_detail_id_delete**](docs/AdjustmentDetailsApi.md#procurement_adjustments_id_details_detail_id_delete) | **DELETE** /procurement/adjustments/{id}/details/{detailId} |
*ConnectWise::AdjustmentDetailsApi* | [**procurement_adjustments_id_details_detail_id_get**](docs/AdjustmentDetailsApi.md#procurement_adjustments_id_details_detail_id_get) | **GET** /procurement/adjustments/{id}/details/{detailId} |
*ConnectWise::AdjustmentDetailsApi* | [**procurement_adjustments_id_details_get**](docs/AdjustmentDetailsApi.md#procurement_adjustments_id_details_get) | **GET** /procurement/adjustments/{id}/details |
*ConnectWise::AdjustmentDetailsApi* | [**procurement_adjustments_id_details_post**](docs/AdjustmentDetailsApi.md#procurement_adjustments_id_details_post) | **POST** /procurement/adjustments/{id}/details |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_count_get**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_count_get) | **GET** /procurement/adjustments/types/count |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_get**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_get) | **GET** /procurement/adjustments/types |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_id_delete**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_id_delete) | **DELETE** /procurement/adjustments/types/{id} |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_id_get**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_id_get) | **GET** /procurement/adjustments/types/{id} |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_id_patch**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_id_patch) | **PATCH** /procurement/adjustments/types/{id} |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_id_put**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_id_put) | **PUT** /procurement/adjustments/types/{id} |
*ConnectWise::AdjustmentTypesApi* | [**procurement_adjustments_types_post**](docs/AdjustmentTypesApi.md#procurement_adjustments_types_post) | **POST** /procurement/adjustments/types |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_count_get**](docs/AdjustmentsApi.md#procurement_adjustments_count_get) | **GET** /procurement/adjustments/count |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_get**](docs/AdjustmentsApi.md#procurement_adjustments_get) | **GET** /procurement/adjustments |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_id_delete**](docs/AdjustmentsApi.md#procurement_adjustments_id_delete) | **DELETE** /procurement/adjustments/{id} |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_id_get**](docs/AdjustmentsApi.md#procurement_adjustments_id_get) | **GET** /procurement/adjustments/{id} |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_id_patch**](docs/AdjustmentsApi.md#procurement_adjustments_id_patch) | **PATCH** /procurement/adjustments/{id} |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_id_put**](docs/AdjustmentsApi.md#procurement_adjustments_id_put) | **PUT** /procurement/adjustments/{id} |
*ConnectWise::AdjustmentsApi* | [**procurement_adjustments_post**](docs/AdjustmentsApi.md#procurement_adjustments_post) | **POST** /procurement/adjustments |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_delete**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_delete) | **DELETE** /finance/agreements/{id}/additions/{additionId} |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_get**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_get) | **GET** /finance/agreements/{id}/additions/{additionId} |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_patch**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_patch) | **PATCH** /finance/agreements/{id}/additions/{additionId} |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_addition_id_put**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_put) | **PUT** /finance/agreements/{id}/additions/{additionId} |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_count_get**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_count_get) | **GET** /finance/agreements/{id}/additions/count |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_get**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_get) | **GET** /finance/agreements/{id}/additions |
*ConnectWise::AgreementAdditionsApi* | [**finance_agreements_id_additions_post**](docs/AgreementAdditionsApi.md#finance_agreements_id_additions_post) | **POST** /finance/agreements/{id}/additions |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_delete**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_delete) | **DELETE** /finance/agreements/{id}/adjustments/{adjustmentId} |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_get**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_get) | **GET** /finance/agreements/{id}/adjustments/{adjustmentId} |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_patch**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_patch) | **PATCH** /finance/agreements/{id}/adjustments/{adjustmentId} |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_adjustment_id_put**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_put) | **PUT** /finance/agreements/{id}/adjustments/{adjustmentId} |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_count_get**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_count_get) | **GET** /finance/agreements/{id}/adjustments/count |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_get**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_get) | **GET** /finance/agreements/{id}/adjustments |
*ConnectWise::AgreementAdjustmentsApi* | [**finance_agreements_id_adjustments_post**](docs/AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_post) | **POST** /finance/agreements/{id}/adjustments |
*ConnectWise::AgreementBatchSetupsApi* | [**finance_batch_setups_count_get**](docs/AgreementBatchSetupsApi.md#finance_batch_setups_count_get) | **GET** /finance/batchSetups/count |
*ConnectWise::AgreementBatchSetupsApi* | [**finance_batch_setups_get**](docs/AgreementBatchSetupsApi.md#finance_batch_setups_get) | **GET** /finance/batchSetups |
*ConnectWise::AgreementBatchSetupsApi* | [**finance_batch_setups_id_get**](docs/AgreementBatchSetupsApi.md#finance_batch_setups_id_get) | **GET** /finance/batchSetups/{id} |
*ConnectWise::AgreementBatchSetupsApi* | [**finance_batch_setups_id_patch**](docs/AgreementBatchSetupsApi.md#finance_batch_setups_id_patch) | **PATCH** /finance/batchSetups/{id} |
*ConnectWise::AgreementBatchSetupsApi* | [**finance_batch_setups_id_put**](docs/AgreementBatchSetupsApi.md#finance_batch_setups_id_put) | **PUT** /finance/batchSetups/{id} |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_delete**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_delete) | **DELETE** /finance/agreements/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_get**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_get) | **GET** /finance/agreements/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_patch**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_patch) | **PATCH** /finance/agreements/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_board_default_id_put**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_put) | **PUT** /finance/agreements/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_count_get**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_count_get) | **GET** /finance/agreements/{id}/boardDefaults/count |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_get**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_get) | **GET** /finance/agreements/{id}/boardDefaults |
*ConnectWise::AgreementBoardDefaultsApi* | [**finance_agreements_id_board_defaults_post**](docs/AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_post) | **POST** /finance/agreements/{id}/boardDefaults |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_count_get**](docs/AgreementSitesApi.md#finance_agreements_id_sites_count_get) | **GET** /finance/agreements/{id}/sites/count |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_get**](docs/AgreementSitesApi.md#finance_agreements_id_sites_get) | **GET** /finance/agreements/{id}/sites |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_post**](docs/AgreementSitesApi.md#finance_agreements_id_sites_post) | **POST** /finance/agreements/{id}/sites |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_delete**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_delete) | **DELETE** /finance/agreements/{id}/sites/{siteId} |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_get**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_get) | **GET** /finance/agreements/{id}/sites/{siteId} |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_patch**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_patch) | **PATCH** /finance/agreements/{id}/sites/{siteId} |
*ConnectWise::AgreementSitesApi* | [**finance_agreements_id_sites_site_id_put**](docs/AgreementSitesApi.md#finance_agreements_id_sites_site_id_put) | **PUT** /finance/agreements/{id}/sites/{siteId} |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_board_default_id_delete**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_board_default_id_delete) | **DELETE** /finance/agreementTypes/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_board_default_id_get**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_board_default_id_get) | **GET** /finance/agreementTypes/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_board_default_id_patch**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_board_default_id_patch) | **PATCH** /finance/agreementTypes/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_board_default_id_put**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_board_default_id_put) | **PUT** /finance/agreementTypes/{id}/boardDefaults/{boardDefaultId} |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_count_get**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_count_get) | **GET** /finance/agreementTypes/{id}/boardDefaults/count |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_get**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_get) | **GET** /finance/agreementTypes/{id}/boardDefaults |
*ConnectWise::AgreementTypeBoardDefaultsApi* | [**finance_agreement_types_id_board_defaults_post**](docs/AgreementTypeBoardDefaultsApi.md#finance_agreement_types_id_board_defaults_post) | **POST** /finance/agreementTypes/{id}/boardDefaults |
*ConnectWise::AgreementTypeWorkRoleExclusionsApi* | [**finance_agreement_types_id_work_role_exclusions_count_get**](docs/AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_count_get) | **GET** /finance/agreementTypes/{id}/workRoleExclusions/count |
*ConnectWise::AgreementTypeWorkRoleExclusionsApi* | [**finance_agreement_types_id_work_role_exclusions_get**](docs/AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_get) | **GET** /finance/agreementTypes/{id}/workRoleExclusions |
*ConnectWise::AgreementTypeWorkRoleExclusionsApi* | [**finance_agreement_types_id_work_role_exclusions_post**](docs/AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_post) | **POST** /finance/agreementTypes/{id}/workRoleExclusions |
*ConnectWise::AgreementTypeWorkRoleExclusionsApi* | [**finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete**](docs/AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete) | **DELETE** /finance/agreementTypes/{id}/workRoleExclusions/{workRoleExclusionId} |
*ConnectWise::AgreementTypeWorkRoleExclusionsApi* | [**finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get**](docs/AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get) | **GET** /finance/agreementTypes/{id}/workRoleExclusions/{workRoleExclusionId} |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_count_get**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_count_get) | **GET** /finance/agreementTypes/{id}/workroles/count |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_get**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_get) | **GET** /finance/agreementTypes/{id}/workroles |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_post**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_post) | **POST** /finance/agreementTypes/{id}/workroles |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_work_role_id_delete**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_work_role_id_delete) | **DELETE** /finance/agreementTypes/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_work_role_id_get**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_work_role_id_get) | **GET** /finance/agreementTypes/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_work_role_id_patch**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_work_role_id_patch) | **PATCH** /finance/agreementTypes/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementTypeWorkRolesApi* | [**finance_agreement_types_id_workroles_work_role_id_put**](docs/AgreementTypeWorkRolesApi.md#finance_agreement_types_id_workroles_work_role_id_put) | **PUT** /finance/agreementTypes/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementTypeWorkTypeExclusionsApi* | [**finance_agreement_types_id_work_type_exclusions_count_get**](docs/AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_count_get) | **GET** /finance/agreementTypes/{id}/workTypeExclusions/count |
*ConnectWise::AgreementTypeWorkTypeExclusionsApi* | [**finance_agreement_types_id_work_type_exclusions_get**](docs/AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_get) | **GET** /finance/agreementTypes/{id}/workTypeExclusions |
*ConnectWise::AgreementTypeWorkTypeExclusionsApi* | [**finance_agreement_types_id_work_type_exclusions_post**](docs/AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_post) | **POST** /finance/agreementTypes/{id}/workTypeExclusions |
*ConnectWise::AgreementTypeWorkTypeExclusionsApi* | [**finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete**](docs/AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete) | **DELETE** /finance/agreementTypes/{id}/workTypeExclusions/{workTypeExclusionId} |
*ConnectWise::AgreementTypeWorkTypeExclusionsApi* | [**finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get**](docs/AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get) | **GET** /finance/agreementTypes/{id}/workTypeExclusions/{workTypeExclusionId} |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_count_get**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_count_get) | **GET** /finance/agreementTypes/{id}/worktypes/count |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_get**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_get) | **GET** /finance/agreementTypes/{id}/worktypes |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_post**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_post) | **POST** /finance/agreementTypes/{id}/worktypes |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_worktype_id_delete**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_worktype_id_delete) | **DELETE** /finance/agreementTypes/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_worktype_id_get**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_worktype_id_get) | **GET** /finance/agreementTypes/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_worktype_id_patch**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_worktype_id_patch) | **PATCH** /finance/agreementTypes/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementTypeWorkTypesApi* | [**finance_agreement_types_id_worktypes_worktype_id_put**](docs/AgreementTypeWorkTypesApi.md#finance_agreement_types_id_worktypes_worktype_id_put) | **PUT** /finance/agreementTypes/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_count_get**](docs/AgreementTypesApi.md#finance_agreements_types_count_get) | **GET** /finance/agreements/types/count |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_get**](docs/AgreementTypesApi.md#finance_agreements_types_get) | **GET** /finance/agreements/types |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_id_delete**](docs/AgreementTypesApi.md#finance_agreements_types_id_delete) | **DELETE** /finance/agreements/types/{id} |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_id_get**](docs/AgreementTypesApi.md#finance_agreements_types_id_get) | **GET** /finance/agreements/types/{id} |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_id_patch**](docs/AgreementTypesApi.md#finance_agreements_types_id_patch) | **PATCH** /finance/agreements/types/{id} |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_id_put**](docs/AgreementTypesApi.md#finance_agreements_types_id_put) | **PUT** /finance/agreements/types/{id} |
*ConnectWise::AgreementTypesApi* | [**finance_agreements_types_post**](docs/AgreementTypesApi.md#finance_agreements_types_post) | **POST** /finance/agreements/types |
*ConnectWise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_count_get**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_count_get) | **GET** /finance/agreements/{id}/workRoleExclusions/count |
*ConnectWise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_get**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_get) | **GET** /finance/agreements/{id}/workRoleExclusions |
*ConnectWise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_post**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_post) | **POST** /finance/agreements/{id}/workRoleExclusions |
*ConnectWise::AgreementWorkRoleExclusionsApi* | [**finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete**](docs/AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete) | **DELETE** /finance/agreements/{id}/workRoleExclusions/{workRoleExclusionId} |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_count_get**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_count_get) | **GET** /finance/agreements/{id}/workroles/count |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_get**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_get) | **GET** /finance/agreements/{id}/workroles |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_post**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_post) | **POST** /finance/agreements/{id}/workroles |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_delete**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_delete) | **DELETE** /finance/agreements/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_get**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_get) | **GET** /finance/agreements/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_patch**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_patch) | **PATCH** /finance/agreements/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementWorkRolesApi* | [**finance_agreements_id_workroles_work_role_id_put**](docs/AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_put) | **PUT** /finance/agreements/{id}/workroles/{workRoleId} |
*ConnectWise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_count_get**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_count_get) | **GET** /finance/agreements/{id}/workTypeExclusions/count |
*ConnectWise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_get**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_get) | **GET** /finance/agreements/{id}/workTypeExclusions |
*ConnectWise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_post**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_post) | **POST** /finance/agreements/{id}/workTypeExclusions |
*ConnectWise::AgreementWorkTypeExclusionsApi* | [**finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete**](docs/AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete) | **DELETE** /finance/agreements/{id}/workTypeExclusions/{workTypeExclusionId} |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_count_get**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_count_get) | **GET** /finance/agreements/{id}/worktypes/count |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_get**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_get) | **GET** /finance/agreements/{id}/worktypes |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_post**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_post) | **POST** /finance/agreements/{id}/worktypes |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_delete**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_delete) | **DELETE** /finance/agreements/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_get**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_get) | **GET** /finance/agreements/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_patch**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_patch) | **PATCH** /finance/agreements/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementWorkTypesApi* | [**finance_agreements_id_worktypes_worktype_id_put**](docs/AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_put) | **PUT** /finance/agreements/{id}/worktypes/{worktypeId} |
*ConnectWise::AgreementsApi* | [**finance_agreements_count_get**](docs/AgreementsApi.md#finance_agreements_count_get) | **GET** /finance/agreements/count |
*ConnectWise::AgreementsApi* | [**finance_agreements_get**](docs/AgreementsApi.md#finance_agreements_get) | **GET** /finance/agreements |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_configurations_configuration_id_delete**](docs/AgreementsApi.md#finance_agreements_id_configurations_configuration_id_delete) | **DELETE** /finance/agreements/{id}/configurations/{configurationId} |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_configurations_configuration_id_get**](docs/AgreementsApi.md#finance_agreements_id_configurations_configuration_id_get) | **GET** /finance/agreements/{id}/configurations/{configurationId} |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_configurations_count_get**](docs/AgreementsApi.md#finance_agreements_id_configurations_count_get) | **GET** /finance/agreements/{id}/configurations/count |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_configurations_get**](docs/AgreementsApi.md#finance_agreements_id_configurations_get) | **GET** /finance/agreements/{id}/configurations |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_configurations_post**](docs/AgreementsApi.md#finance_agreements_id_configurations_post) | **POST** /finance/agreements/{id}/configurations |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_delete**](docs/AgreementsApi.md#finance_agreements_id_delete) | **DELETE** /finance/agreements/{id} |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_get**](docs/AgreementsApi.md#finance_agreements_id_get) | **GET** /finance/agreements/{id} |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_patch**](docs/AgreementsApi.md#finance_agreements_id_patch) | **PATCH** /finance/agreements/{id} |
*ConnectWise::AgreementsApi* | [**finance_agreements_id_put**](docs/AgreementsApi.md#finance_agreements_id_put) | **PUT** /finance/agreements/{id} |
*ConnectWise::AgreementsApi* | [**finance_agreements_post**](docs/AgreementsApi.md#finance_agreements_post) | **POST** /finance/agreements |
*ConnectWise::AuditTrailApi* | [**system_audittrail_count_get**](docs/AuditTrailApi.md#system_audittrail_count_get) | **GET** /system/audittrail/count |
*ConnectWise::AuditTrailApi* | [**system_audittrail_get**](docs/AuditTrailApi.md#system_audittrail_get) | **GET** /system/audittrail |
*ConnectWise::AuthAnvilsApi* | [**system_auth_anvils_count_get**](docs/AuthAnvilsApi.md#system_auth_anvils_count_get) | **GET** /system/authAnvils/count |
*ConnectWise::AuthAnvilsApi* | [**system_auth_anvils_get**](docs/AuthAnvilsApi.md#system_auth_anvils_get) | **GET** /system/authAnvils |
*ConnectWise::AuthAnvilsApi* | [**system_auth_anvils_id_get**](docs/AuthAnvilsApi.md#system_auth_anvils_id_get) | **GET** /system/authAnvils/{id} |
*ConnectWise::AuthAnvilsApi* | [**system_auth_anvils_id_patch**](docs/AuthAnvilsApi.md#system_auth_anvils_id_patch) | **PATCH** /system/authAnvils/{id} |
*ConnectWise::AuthAnvilsApi* | [**system_auth_anvils_id_put**](docs/AuthAnvilsApi.md#system_auth_anvils_id_put) | **PUT** /system/authAnvils/{id} |
*ConnectWise::AuthAnvilsApi* | [**system_auth_anvils_test_connection_get**](docs/AuthAnvilsApi.md#system_auth_anvils_test_connection_get) | **GET** /system/authAnvils/testConnection |
*ConnectWise::BatchApi* | [**system_batch_post**](docs/BatchApi.md#system_batch_post) | **POST** /system/batch |
*ConnectWise::BillingCyclesApi* | [**finance_billing_cycles_count_get**](docs/BillingCyclesApi.md#finance_billing_cycles_count_get) | **GET** /finance/billingCycles/count |
*ConnectWise::BillingCyclesApi* | [**finance_billing_cycles_get**](docs/BillingCyclesApi.md#finance_billing_cycles_get) | **GET** /finance/billingCycles |
*ConnectWise::BillingCyclesApi* | [**finance_billing_cycles_id_get**](docs/BillingCyclesApi.md#finance_billing_cycles_id_get) | **GET** /finance/billingCycles/{id} |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_count_get**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_count_get) | **GET** /finance/billingSetups/{id}/routings/count |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_get**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_get) | **GET** /finance/billingSetups/{id}/routings |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_post**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_post) | **POST** /finance/billingSetups/{id}/routings |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_routing_id_delete**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_delete) | **DELETE** /finance/billingSetups/{id}/routings/{routingId} |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_routing_id_get**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_get) | **GET** /finance/billingSetups/{id}/routings/{routingId} |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_routing_id_patch**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_patch) | **PATCH** /finance/billingSetups/{id}/routings/{routingId} |
*ConnectWise::BillingSetupRoutingsApi* | [**finance_billing_setups_id_routings_routing_id_put**](docs/BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_put) | **PUT** /finance/billingSetups/{id}/routings/{routingId} |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_count_get**](docs/BillingSetupsApi.md#finance_billing_setups_count_get) | **GET** /finance/billingSetups/count |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_get**](docs/BillingSetupsApi.md#finance_billing_setups_get) | **GET** /finance/billingSetups |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_id_delete**](docs/BillingSetupsApi.md#finance_billing_setups_id_delete) | **DELETE** /finance/billingSetups/{id} |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_id_get**](docs/BillingSetupsApi.md#finance_billing_setups_id_get) | **GET** /finance/billingSetups/{id} |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_id_patch**](docs/BillingSetupsApi.md#finance_billing_setups_id_patch) | **PATCH** /finance/billingSetups/{id} |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_id_put**](docs/BillingSetupsApi.md#finance_billing_setups_id_put) | **PUT** /finance/billingSetups/{id} |
*ConnectWise::BillingSetupsApi* | [**finance_billing_setups_post**](docs/BillingSetupsApi.md#finance_billing_setups_post) | **POST** /finance/billingSetups |
*ConnectWise::BillingStatusesApi* | [**system_billing_statuses_count_get**](docs/BillingStatusesApi.md#system_billing_statuses_count_get) | **GET** /system/billingStatuses/count |
*ConnectWise::BillingStatusesApi* | [**system_billing_statuses_get**](docs/BillingStatusesApi.md#system_billing_statuses_get) | **GET** /system/billingStatuses |
*ConnectWise::BillingStatusesApi* | [**system_billing_statuses_id_get**](docs/BillingStatusesApi.md#system_billing_statuses_id_get) | **GET** /system/billingStatuses/{id} |
*ConnectWise::BillingTermsApi* | [**finance_billing_terms_count_get**](docs/BillingTermsApi.md#finance_billing_terms_count_get) | **GET** /finance/billingTerms/count |
*ConnectWise::BillingTermsApi* | [**finance_billing_terms_get**](docs/BillingTermsApi.md#finance_billing_terms_get) | **GET** /finance/billingTerms |
*ConnectWise::BillingTermsApi* | [**finance_billing_terms_id_get**](docs/BillingTermsApi.md#finance_billing_terms_id_get) | **GET** /finance/billingTerms/{id} |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_auto_assign_resource_id_delete**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_delete) | **DELETE** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_auto_assign_resource_id_get**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_get) | **GET** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_auto_assign_resource_id_patch**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_patch) | **PATCH** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_auto_assign_resource_id_put**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_put) | **PUT** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_count_get**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_count_get) | **GET** /service/boards/{id}/autoAssignResources/count |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_get**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_get) | **GET** /service/boards/{id}/autoAssignResources |
*ConnectWise::BoardAutoAssignResourcesApi* | [**service_boards_id_auto_assign_resources_post**](docs/BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_post) | **POST** /service/boards/{id}/autoAssignResources |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_auto_template_id_delete**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_delete) | **DELETE** /service/boards/{id}/autoTemplates/{autoTemplateId} |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_auto_template_id_get**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_get) | **GET** /service/boards/{id}/autoTemplates/{autoTemplateId} |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_auto_template_id_patch**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_patch) | **PATCH** /service/boards/{id}/autoTemplates/{autoTemplateId} |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_auto_template_id_put**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_put) | **PUT** /service/boards/{id}/autoTemplates/{autoTemplateId} |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_count_get**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_count_get) | **GET** /service/boards/{id}/autoTemplates/count |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_get**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_get) | **GET** /service/boards/{id}/autoTemplates |
*ConnectWise::BoardAutoTemplatesApi* | [**service_boards_id_auto_templates_post**](docs/BoardAutoTemplatesApi.md#service_boards_id_auto_templates_post) | **POST** /service/boards/{id}/autoTemplates |
*ConnectWise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_count_get**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_count_get) | **GET** /service/boards/{id}/excludedMembers/count |
*ConnectWise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_excluded_member_id_delete**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_excluded_member_id_delete) | **DELETE** /service/boards/{id}/excludedMembers/{excludedMemberId} |
*ConnectWise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_excluded_member_id_get**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_excluded_member_id_get) | **GET** /service/boards/{id}/excludedMembers/{excludedMemberId} |
*ConnectWise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_get**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_get) | **GET** /service/boards/{id}/excludedMembers |
*ConnectWise::BoardExcludedMembersApi* | [**service_boards_id_excluded_members_post**](docs/BoardExcludedMembersApi.md#service_boards_id_excluded_members_post) | **POST** /service/boards/{id}/excludedMembers |
*ConnectWise::BoardItemAssociationsApi* | [**service_boards_board_id_items_item_id_associations_association_id_get**](docs/BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_association_id_get) | **GET** /service/boards/{boardId}/items/{itemId}/associations/{associationId} |
*ConnectWise::BoardItemAssociationsApi* | [**service_boards_board_id_items_item_id_associations_count_get**](docs/BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_count_get) | **GET** /service/boards/{boardId}/items/{itemId}/associations/count |
*ConnectWise::BoardItemAssociationsApi* | [**service_boards_board_id_items_item_id_associations_get**](docs/BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_get) | **GET** /service/boards/{boardId}/items/{itemId}/associations |
*ConnectWise::BoardItemAssociationsApi* | [**service_boards_board_id_items_item_id_associations_id_put**](docs/BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_id_put) | **PUT** /service/boards/{boardId}/items/{itemId}/associations/{id} |
*ConnectWise::BoardItemAssociationsApi* | [**service_boards_board_id_items_item_id_associations_type_id_patch**](docs/BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_type_id_patch) | **PATCH** /service/boards/{boardId}/items/{itemId}/associations/{typeId} |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_count_get**](docs/BoardItemsApi.md#service_boards_id_items_count_get) | **GET** /service/boards/{id}/items/count |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_get**](docs/BoardItemsApi.md#service_boards_id_items_get) | **GET** /service/boards/{id}/items |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_item_id_delete**](docs/BoardItemsApi.md#service_boards_id_items_item_id_delete) | **DELETE** /service/boards/{id}/items/{itemId} |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_item_id_get**](docs/BoardItemsApi.md#service_boards_id_items_item_id_get) | **GET** /service/boards/{id}/items/{itemId} |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_item_id_patch**](docs/BoardItemsApi.md#service_boards_id_items_item_id_patch) | **PATCH** /service/boards/{id}/items/{itemId} |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_item_id_put**](docs/BoardItemsApi.md#service_boards_id_items_item_id_put) | **PUT** /service/boards/{id}/items/{itemId} |
*ConnectWise::BoardItemsApi* | [**service_boards_id_items_post**](docs/BoardItemsApi.md#service_boards_id_items_post) | **POST** /service/boards/{id}/items |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_count_get**](docs/BoardNotificationsApi.md#service_boards_id_notifications_count_get) | **GET** /service/boards/{id}/notifications/count |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_get**](docs/BoardNotificationsApi.md#service_boards_id_notifications_get) | **GET** /service/boards/{id}/notifications |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_notification_id_delete**](docs/BoardNotificationsApi.md#service_boards_id_notifications_notification_id_delete) | **DELETE** /service/boards/{id}/notifications/{notificationId} |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_notification_id_get**](docs/BoardNotificationsApi.md#service_boards_id_notifications_notification_id_get) | **GET** /service/boards/{id}/notifications/{notificationId} |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_notification_id_patch**](docs/BoardNotificationsApi.md#service_boards_id_notifications_notification_id_patch) | **PATCH** /service/boards/{id}/notifications/{notificationId} |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_notification_id_put**](docs/BoardNotificationsApi.md#service_boards_id_notifications_notification_id_put) | **PUT** /service/boards/{id}/notifications/{notificationId} |
*ConnectWise::BoardNotificationsApi* | [**service_boards_id_notifications_post**](docs/BoardNotificationsApi.md#service_boards_id_notifications_post) | **POST** /service/boards/{id}/notifications |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_count_get**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_count_get) | **GET** /service/boards/{boardId}/statuses/{statusId}/notifications/count |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_get**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_get) | **GET** /service/boards/{boardId}/statuses/{statusId}/notifications |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_id_delete**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_delete) | **DELETE** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_id_get**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_get) | **GET** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_id_patch**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_patch) | **PATCH** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_id_put**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_put) | **PUT** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} |
*ConnectWise::BoardStatusNotificationsApi* | [**service_boards_board_id_statuses_status_id_notifications_post**](docs/BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_post) | **POST** /service/boards/{boardId}/statuses/{statusId}/notifications |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_count_get**](docs/BoardStatusesApi.md#service_boards_id_statuses_count_get) | **GET** /service/boards/{id}/statuses/count |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_get**](docs/BoardStatusesApi.md#service_boards_id_statuses_get) | **GET** /service/boards/{id}/statuses |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_post**](docs/BoardStatusesApi.md#service_boards_id_statuses_post) | **POST** /service/boards/{id}/statuses |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_delete**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_delete) | **DELETE** /service/boards/{id}/statuses/{statusId} |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_get**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_get) | **GET** /service/boards/{id}/statuses/{statusId} |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_patch**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_patch) | **PATCH** /service/boards/{id}/statuses/{statusId} |
*ConnectWise::BoardStatusesApi* | [**service_boards_id_statuses_status_id_put**](docs/BoardStatusesApi.md#service_boards_id_statuses_status_id_put) | **PUT** /service/boards/{id}/statuses/{statusId} |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_count_get**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_count_get) | **GET** /service/boards/{id}/subtypes/count |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_get**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_get) | **GET** /service/boards/{id}/subtypes |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_post**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_post) | **POST** /service/boards/{id}/subtypes |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_delete**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_delete) | **DELETE** /service/boards/{id}/subtypes/{subtypeId} |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_get**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_get) | **GET** /service/boards/{id}/subtypes/{subtypeId} |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_patch**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_patch) | **PATCH** /service/boards/{id}/subtypes/{subtypeId} |
*ConnectWise::BoardSubTypesApi* | [**service_boards_id_subtypes_subtype_id_put**](docs/BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_put) | **PUT** /service/boards/{id}/subtypes/{subtypeId} |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_count_get**](docs/BoardTeamsApi.md#service_boards_id_teams_count_get) | **GET** /service/boards/{id}/teams/count |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_get**](docs/BoardTeamsApi.md#service_boards_id_teams_get) | **GET** /service/boards/{id}/teams |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_post**](docs/BoardTeamsApi.md#service_boards_id_teams_post) | **POST** /service/boards/{id}/teams |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_team_id_delete**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_delete) | **DELETE** /service/boards/{id}/teams/{teamId} |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_team_id_get**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_get) | **GET** /service/boards/{id}/teams/{teamId} |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_team_id_patch**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_patch) | **PATCH** /service/boards/{id}/teams/{teamId} |
*ConnectWise::BoardTeamsApi* | [**service_boards_id_teams_team_id_put**](docs/BoardTeamsApi.md#service_boards_id_teams_team_id_put) | **PUT** /service/boards/{id}/teams/{teamId} |
*ConnectWise::BoardTypeSubTypeItemAssociationsApi* | [**service_boards_id_type_sub_type_item_associations_count_get**](docs/BoardTypeSubTypeItemAssociationsApi.md#service_boards_id_type_sub_type_item_associations_count_get) | **GET** /service/boards/{id}/typeSubTypeItemAssociations/count |
*ConnectWise::BoardTypeSubTypeItemAssociationsApi* | [**service_boards_id_type_sub_type_item_associations_get**](docs/BoardTypeSubTypeItemAssociationsApi.md#service_boards_id_type_sub_type_item_associations_get) | **GET** /service/boards/{id}/typeSubTypeItemAssociations |
*ConnectWise::BoardTypeSubTypeItemAssociationsApi* | [**service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get**](docs/BoardTypeSubTypeItemAssociationsApi.md#service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get) | **GET** /service/boards/{id}/typeSubTypeItemAssociations/{typeSubTypeItemAssociationId} |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_count_get**](docs/BoardTypesApi.md#service_boards_id_types_count_get) | **GET** /service/boards/{id}/types/count |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_get**](docs/BoardTypesApi.md#service_boards_id_types_get) | **GET** /service/boards/{id}/types |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_post**](docs/BoardTypesApi.md#service_boards_id_types_post) | **POST** /service/boards/{id}/types |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_type_id_delete**](docs/BoardTypesApi.md#service_boards_id_types_type_id_delete) | **DELETE** /service/boards/{id}/types/{typeId} |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_type_id_get**](docs/BoardTypesApi.md#service_boards_id_types_type_id_get) | **GET** /service/boards/{id}/types/{typeId} |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_type_id_patch**](docs/BoardTypesApi.md#service_boards_id_types_type_id_patch) | **PATCH** /service/boards/{id}/types/{typeId} |
*ConnectWise::BoardTypesApi* | [**service_boards_id_types_type_id_put**](docs/BoardTypesApi.md#service_boards_id_types_type_id_put) | **PUT** /service/boards/{id}/types/{typeId} |
*ConnectWise::BoardsApi* | [**service_boards_copy_post**](docs/BoardsApi.md#service_boards_copy_post) | **POST** /service/boards/copy |
*ConnectWise::BoardsApi* | [**service_boards_count_get**](docs/BoardsApi.md#service_boards_count_get) | **GET** /service/boards/count |
*ConnectWise::BoardsApi* | [**service_boards_get**](docs/BoardsApi.md#service_boards_get) | **GET** /service/boards |
*ConnectWise::BoardsApi* | [**service_boards_id_delete**](docs/BoardsApi.md#service_boards_id_delete) | **DELETE** /service/boards/{id} |
*ConnectWise::BoardsApi* | [**service_boards_id_get**](docs/BoardsApi.md#service_boards_id_get) | **GET** /service/boards/{id} |
*ConnectWise::BoardsApi* | [**service_boards_id_patch**](docs/BoardsApi.md#service_boards_id_patch) | **PATCH** /service/boards/{id} |
*ConnectWise::BoardsApi* | [**service_boards_id_put**](docs/BoardsApi.md#service_boards_id_put) | **PUT** /service/boards/{id} |
*ConnectWise::BoardsApi* | [**service_boards_post**](docs/BoardsApi.md#service_boards_post) | **POST** /service/boards |
*ConnectWise::CalendarsApi* | [**system_calendars_count_get**](docs/CalendarsApi.md#system_calendars_count_get) | **GET** /system/calendars/count |
*ConnectWise::CalendarsApi* | [**system_calendars_get**](docs/CalendarsApi.md#system_calendars_get) | **GET** /system/calendars |
*ConnectWise::CalendarsApi* | [**system_calendars_id_get**](docs/CalendarsApi.md#system_calendars_id_get) | **GET** /system/calendars/{id} |
*ConnectWise::CallbacksApi* | [**system_callbacks_count_get**](docs/CallbacksApi.md#system_callbacks_count_get) | **GET** /system/callbacks/count |
*ConnectWise::CallbacksApi* | [**system_callbacks_get**](docs/CallbacksApi.md#system_callbacks_get) | **GET** /system/callbacks |
*ConnectWise::CallbacksApi* | [**system_callbacks_id_delete**](docs/CallbacksApi.md#system_callbacks_id_delete) | **DELETE** /system/callbacks/{id} |
*ConnectWise::CallbacksApi* | [**system_callbacks_id_get**](docs/CallbacksApi.md#system_callbacks_id_get) | **GET** /system/callbacks/{id} |
*ConnectWise::CallbacksApi* | [**system_callbacks_id_patch**](docs/CallbacksApi.md#system_callbacks_id_patch) | **PATCH** /system/callbacks/{id} |
*ConnectWise::CallbacksApi* | [**system_callbacks_id_put**](docs/CallbacksApi.md#system_callbacks_id_put) | **PUT** /system/callbacks/{id} |
*ConnectWise::CallbacksApi* | [**system_callbacks_post**](docs/CallbacksApi.md#system_callbacks_post) | **POST** /system/callbacks |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_delete**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_delete) | **DELETE** /marketing/campaigns/{id}/audits/{auditId} |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_get**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_get) | **GET** /marketing/campaigns/{id}/audits/{auditId} |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_patch**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_patch) | **PATCH** /marketing/campaigns/{id}/audits/{auditId} |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_audit_id_put**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_put) | **PUT** /marketing/campaigns/{id}/audits/{auditId} |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_count_get**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_count_get) | **GET** /marketing/campaigns/{id}/audits/count |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_get**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_get) | **GET** /marketing/campaigns/{id}/audits |
*ConnectWise::CampaignAuditsApi* | [**marketing_campaigns_id_audits_post**](docs/CampaignAuditsApi.md#marketing_campaigns_id_audits_post) | **POST** /marketing/campaigns/{id}/audits |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_count_get**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_count_get) | **GET** /marketing/campaigns/{id}/emailsOpened/count |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_delete**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_delete) | **DELETE** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_get**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_get) | **GET** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_patch**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_patch) | **PATCH** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_email_opened_id_put**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_put) | **PUT** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_get**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_get) | **GET** /marketing/campaigns/{id}/emailsOpened |
*ConnectWise::CampaignEmailsOpenedApi* | [**marketing_campaigns_id_emails_opened_post**](docs/CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_post) | **POST** /marketing/campaigns/{id}/emailsOpened |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_count_get**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_count_get) | **GET** /marketing/campaigns/{id}/formsSubmitted/count |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_delete**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_delete) | **DELETE** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_get**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_get) | **GET** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_patch**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_patch) | **PATCH** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_form_submitted_id_put**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_put) | **PUT** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_get**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_get) | **GET** /marketing/campaigns/{id}/formsSubmitted |
*ConnectWise::CampaignFormsSubmittedApi* | [**marketing_campaigns_id_forms_submitted_post**](docs/CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_post) | **POST** /marketing/campaigns/{id}/formsSubmitted |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_count_get**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_count_get) | **GET** /marketing/campaigns/{id}/linksClicked/count |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_get**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_get) | **GET** /marketing/campaigns/{id}/linksClicked |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_delete**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_delete) | **DELETE** /marketing/campaigns/{id}/linksClicked/{linkClickedId} |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_get**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_get) | **GET** /marketing/campaigns/{id}/linksClicked/{linkClickedId} |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_patch**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_patch) | **PATCH** /marketing/campaigns/{id}/linksClicked/{linkClickedId} |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_link_clicked_id_put**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_put) | **PUT** /marketing/campaigns/{id}/linksClicked/{linkClickedId} |
*ConnectWise::CampaignLinksClickedApi* | [**marketing_campaigns_id_links_clicked_post**](docs/CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_post) | **POST** /marketing/campaigns/{id}/linksClicked |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_count_get**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_count_get) | **GET** /marketing/campaigns/statuses/count |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_get**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_get) | **GET** /marketing/campaigns/statuses |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_delete**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_delete) | **DELETE** /marketing/campaigns/statuses/{id} |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_get**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_get) | **GET** /marketing/campaigns/statuses/{id} |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_patch**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_patch) | **PATCH** /marketing/campaigns/statuses/{id} |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_id_put**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_id_put) | **PUT** /marketing/campaigns/statuses/{id} |
*ConnectWise::CampaignStatusesApi* | [**marketing_campaigns_statuses_post**](docs/CampaignStatusesApi.md#marketing_campaigns_statuses_post) | **POST** /marketing/campaigns/statuses |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_count_get**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_count_get) | **GET** /marketing/campaigns/subTypes/count |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_get**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_get) | **GET** /marketing/campaigns/subTypes |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_id_delete**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_delete) | **DELETE** /marketing/campaigns/subTypes/{id} |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_id_get**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_get) | **GET** /marketing/campaigns/subTypes/{id} |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_id_patch**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_patch) | **PATCH** /marketing/campaigns/subTypes/{id} |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_id_put**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_put) | **PUT** /marketing/campaigns/subTypes/{id} |
*ConnectWise::CampaignSubTypesApi* | [**marketing_campaigns_sub_types_post**](docs/CampaignSubTypesApi.md#marketing_campaigns_sub_types_post) | **POST** /marketing/campaigns/subTypes |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_count_get**](docs/CampaignTypesApi.md#marketing_campaigns_types_count_get) | **GET** /marketing/campaigns/types/count |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_get**](docs/CampaignTypesApi.md#marketing_campaigns_types_get) | **GET** /marketing/campaigns/types |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_id_delete**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_delete) | **DELETE** /marketing/campaigns/types/{id} |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_id_get**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_get) | **GET** /marketing/campaigns/types/{id} |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_id_patch**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_patch) | **PATCH** /marketing/campaigns/types/{id} |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_id_put**](docs/CampaignTypesApi.md#marketing_campaigns_types_id_put) | **PUT** /marketing/campaigns/types/{id} |
*ConnectWise::CampaignTypesApi* | [**marketing_campaigns_types_post**](docs/CampaignTypesApi.md#marketing_campaigns_types_post) | **POST** /marketing/campaigns/types |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_count_get**](docs/CampaignsApi.md#marketing_campaigns_count_get) | **GET** /marketing/campaigns/count |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_get**](docs/CampaignsApi.md#marketing_campaigns_get) | **GET** /marketing/campaigns |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_activities_count_get**](docs/CampaignsApi.md#marketing_campaigns_id_activities_count_get) | **GET** /marketing/campaigns/{id}/activities/count |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_activities_get**](docs/CampaignsApi.md#marketing_campaigns_id_activities_get) | **GET** /marketing/campaigns/{id}/activities |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_delete**](docs/CampaignsApi.md#marketing_campaigns_id_delete) | **DELETE** /marketing/campaigns/{id} |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_get**](docs/CampaignsApi.md#marketing_campaigns_id_get) | **GET** /marketing/campaigns/{id} |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_opportunities_count_get**](docs/CampaignsApi.md#marketing_campaigns_id_opportunities_count_get) | **GET** /marketing/campaigns/{id}/opportunities/count |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_opportunities_get**](docs/CampaignsApi.md#marketing_campaigns_id_opportunities_get) | **GET** /marketing/campaigns/{id}/opportunities |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_patch**](docs/CampaignsApi.md#marketing_campaigns_id_patch) | **PATCH** /marketing/campaigns/{id} |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_id_put**](docs/CampaignsApi.md#marketing_campaigns_id_put) | **PUT** /marketing/campaigns/{id} |
*ConnectWise::CampaignsApi* | [**marketing_campaigns_post**](docs/CampaignsApi.md#marketing_campaigns_post) | **POST** /marketing/campaigns |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_delete**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_delete) | **DELETE** /procurement/catalog/{id}/components/{componentId} |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_get**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_get) | **GET** /procurement/catalog/{id}/components/{componentId} |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_patch**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_patch) | **PATCH** /procurement/catalog/{id}/components/{componentId} |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_component_id_put**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_component_id_put) | **PUT** /procurement/catalog/{id}/components/{componentId} |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_count_get**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_count_get) | **GET** /procurement/catalog/{id}/components/count |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_get**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_get) | **GET** /procurement/catalog/{id}/components |
*ConnectWise::CatalogComponentsApi* | [**procurement_catalog_id_components_post**](docs/CatalogComponentsApi.md#procurement_catalog_id_components_post) | **POST** /procurement/catalog/{id}/components |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_catalog_item_identifier_quantity_on_hand_get**](docs/CatalogsItemApi.md#procurement_catalog_catalog_item_identifier_quantity_on_hand_get) | **GET** /procurement/catalog/{catalogItemIdentifier}/quantityOnHand |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_count_get**](docs/CatalogsItemApi.md#procurement_catalog_count_get) | **GET** /procurement/catalog/count |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_get**](docs/CatalogsItemApi.md#procurement_catalog_get) | **GET** /procurement/catalog |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_id_delete**](docs/CatalogsItemApi.md#procurement_catalog_id_delete) | **DELETE** /procurement/catalog/{id} |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_id_get**](docs/CatalogsItemApi.md#procurement_catalog_id_get) | **GET** /procurement/catalog/{id} |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_id_patch**](docs/CatalogsItemApi.md#procurement_catalog_id_patch) | **PATCH** /procurement/catalog/{id} |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_id_put**](docs/CatalogsItemApi.md#procurement_catalog_id_put) | **PUT** /procurement/catalog/{id} |
*ConnectWise::CatalogsItemApi* | [**procurement_catalog_post**](docs/CatalogsItemApi.md#procurement_catalog_post) | **POST** /procurement/catalog |
*ConnectWise::CategoriesApi* | [**procurement_categories_count_get**](docs/CategoriesApi.md#procurement_categories_count_get) | **GET** /procurement/categories/count |
*ConnectWise::CategoriesApi* | [**procurement_categories_get**](docs/CategoriesApi.md#procurement_categories_get) | **GET** /procurement/categories |
*ConnectWise::CategoriesApi* | [**procurement_categories_id_delete**](docs/CategoriesApi.md#procurement_categories_id_delete) | **DELETE** /procurement/categories/{id} |
*ConnectWise::CategoriesApi* | [**procurement_categories_id_get**](docs/CategoriesApi.md#procurement_categories_id_get) | **GET** /procurement/categories/{id} |
*ConnectWise::CategoriesApi* | [**procurement_categories_id_patch**](docs/CategoriesApi.md#procurement_categories_id_patch) | **PATCH** /procurement/categories/{id} |
*ConnectWise::CategoriesApi* | [**procurement_categories_id_put**](docs/CategoriesApi.md#procurement_categories_id_put) | **PUT** /procurement/categories/{id} |
*ConnectWise::CategoriesApi* | [**procurement_categories_post**](docs/CategoriesApi.md#procurement_categories_post) | **POST** /procurement/categories |
*ConnectWise::CertificationsApi* | [**system_certifications_count_get**](docs/CertificationsApi.md#system_certifications_count_get) | **GET** /system/certifications/count |
*ConnectWise::CertificationsApi* | [**system_certifications_get**](docs/CertificationsApi.md#system_certifications_get) | **GET** /system/certifications |
*ConnectWise::CertificationsApi* | [**system_certifications_id_delete**](docs/CertificationsApi.md#system_certifications_id_delete) | **DELETE** /system/certifications/{id} |
*ConnectWise::CertificationsApi* | [**system_certifications_id_get**](docs/CertificationsApi.md#system_certifications_id_get) | **GET** /system/certifications/{id} |
*ConnectWise::CertificationsApi* | [**system_certifications_id_patch**](docs/CertificationsApi.md#system_certifications_id_patch) | **PATCH** /system/certifications/{id} |
*ConnectWise::CertificationsApi* | [**system_certifications_id_put**](docs/CertificationsApi.md#system_certifications_id_put) | **PUT** /system/certifications/{id} |
*ConnectWise::CertificationsApi* | [**system_certifications_post**](docs/CertificationsApi.md#system_certifications_post) | **POST** /system/certifications |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_count_get**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_count_get) | **GET** /time/chargeCodes/{id}/expenseTypes/count |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_expense_type_id_delete**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_delete) | **DELETE** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_expense_type_id_get**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_get) | **GET** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_expense_type_id_patch**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_patch) | **PATCH** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_expense_type_id_put**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_put) | **PUT** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_get**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_get) | **GET** /time/chargeCodes/{id}/expenseTypes |
*ConnectWise::ChargeCodeExpenseTypesApi* | [**time_charge_codes_id_expense_types_post**](docs/ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_post) | **POST** /time/chargeCodes/{id}/expenseTypes |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_count_get**](docs/ChargeCodesApi.md#time_charge_codes_count_get) | **GET** /time/chargeCodes/count |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_get**](docs/ChargeCodesApi.md#time_charge_codes_get) | **GET** /time/chargeCodes |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_id_delete**](docs/ChargeCodesApi.md#time_charge_codes_id_delete) | **DELETE** /time/chargeCodes/{id} |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_id_get**](docs/ChargeCodesApi.md#time_charge_codes_id_get) | **GET** /time/chargeCodes/{id} |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_id_patch**](docs/ChargeCodesApi.md#time_charge_codes_id_patch) | **PATCH** /time/chargeCodes/{id} |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_id_put**](docs/ChargeCodesApi.md#time_charge_codes_id_put) | **PUT** /time/chargeCodes/{id} |
*ConnectWise::ChargeCodesApi* | [**time_charge_codes_post**](docs/ChargeCodesApi.md#time_charge_codes_post) | **POST** /time/chargeCodes |
*ConnectWise::ClassificationsApi* | [**expense_classifications_count_get**](docs/ClassificationsApi.md#expense_classifications_count_get) | **GET** /expense/classifications/count |
*ConnectWise::ClassificationsApi* | [**expense_classifications_get**](docs/ClassificationsApi.md#expense_classifications_get) | **GET** /expense/classifications |
*ConnectWise::ClassificationsApi* | [**expense_classifications_id_get**](docs/ClassificationsApi.md#expense_classifications_id_get) | **GET** /expense/classifications/{id} |
*ConnectWise::CodesApi* | [**service_codes_count_get**](docs/CodesApi.md#service_codes_count_get) | **GET** /service/codes/count |
*ConnectWise::CodesApi* | [**service_codes_get**](docs/CodesApi.md#service_codes_get) | **GET** /service/codes |
*ConnectWise::CodesApi* | [**service_codes_id_delete**](docs/CodesApi.md#service_codes_id_delete) | **DELETE** /service/codes/{id} |
*ConnectWise::CodesApi* | [**service_codes_id_get**](docs/CodesApi.md#service_codes_id_get) | **GET** /service/codes/{id} |
*ConnectWise::CodesApi* | [**service_codes_id_patch**](docs/CodesApi.md#service_codes_id_patch) | **PATCH** /service/codes/{id} |
*ConnectWise::CodesApi* | [**service_codes_id_put**](docs/CodesApi.md#service_codes_id_put) | **PUT** /service/codes/{id} |
*ConnectWise::CodesApi* | [**service_codes_post**](docs/CodesApi.md#service_codes_post) | **POST** /service/codes |
*ConnectWise::CommissionsApi* | [**sales_commissions_count_get**](docs/CommissionsApi.md#sales_commissions_count_get) | **GET** /sales/commissions/count |
*ConnectWise::CommissionsApi* | [**sales_commissions_get**](docs/CommissionsApi.md#sales_commissions_get) | **GET** /sales/commissions |
*ConnectWise::CommissionsApi* | [**sales_commissions_id_delete**](docs/CommissionsApi.md#sales_commissions_id_delete) | **DELETE** /sales/commissions/{id} |
*ConnectWise::CommissionsApi* | [**sales_commissions_id_get**](docs/CommissionsApi.md#sales_commissions_id_get) | **GET** /sales/commissions/{id} |
*ConnectWise::CommissionsApi* | [**sales_commissions_id_patch**](docs/CommissionsApi.md#sales_commissions_id_patch) | **PATCH** /sales/commissions/{id} |
*ConnectWise::CommissionsApi* | [**sales_commissions_id_put**](docs/CommissionsApi.md#sales_commissions_id_put) | **PUT** /sales/commissions/{id} |
*ConnectWise::CommissionsApi* | [**sales_commissions_post**](docs/CommissionsApi.md#sales_commissions_post) | **POST** /sales/commissions |
*ConnectWise::CompaniesApi* | [**company_companies_count_get**](docs/CompaniesApi.md#company_companies_count_get) | **GET** /company/companies/count |
*ConnectWise::CompaniesApi* | [**company_companies_get**](docs/CompaniesApi.md#company_companies_get) | **GET** /company/companies |
*ConnectWise::CompaniesApi* | [**company_companies_id_delete**](docs/CompaniesApi.md#company_companies_id_delete) | **DELETE** /company/companies/{id} |
*ConnectWise::CompaniesApi* | [**company_companies_id_get**](docs/CompaniesApi.md#company_companies_id_get) | **GET** /company/companies/{id} |
*ConnectWise::CompaniesApi* | [**company_companies_id_merge_post**](docs/CompaniesApi.md#company_companies_id_merge_post) | **POST** /company/companies/{id}/merge |
*ConnectWise::CompaniesApi* | [**company_companies_id_patch**](docs/CompaniesApi.md#company_companies_id_patch) | **PATCH** /company/companies/{id} |
*ConnectWise::CompaniesApi* | [**company_companies_id_put**](docs/CompaniesApi.md#company_companies_id_put) | **PUT** /company/companies/{id} |
*ConnectWise::CompaniesApi* | [**company_companies_post**](docs/CompaniesApi.md#company_companies_post) | **POST** /company/companies |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_count_get**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_count_get) | **GET** /company/companies/{id}/customStatusNotes/count |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_custom_note_id_delete**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_delete) | **DELETE** /company/companies/{id}/customStatusNotes/{customNoteId} |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_custom_note_id_get**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_get) | **GET** /company/companies/{id}/customStatusNotes/{customNoteId} |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_custom_note_id_patch**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_patch) | **PATCH** /company/companies/{id}/customStatusNotes/{customNoteId} |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_custom_note_id_put**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_put) | **PUT** /company/companies/{id}/customStatusNotes/{customNoteId} |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_get**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_get) | **GET** /company/companies/{id}/customStatusNotes |
*ConnectWise::CompanyCustomNotesApi* | [**company_companies_id_custom_status_notes_post**](docs/CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_post) | **POST** /company/companies/{id}/customStatusNotes |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_count_get**](docs/CompanyGroupsApi.md#company_companies_id_groups_count_get) | **GET** /company/companies/{id}/groups/count |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_get**](docs/CompanyGroupsApi.md#company_companies_id_groups_get) | **GET** /company/companies/{id}/groups |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_groupid_delete**](docs/CompanyGroupsApi.md#company_companies_id_groups_groupid_delete) | **DELETE** /company/companies/{id}/groups/{groupid} |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_groupid_get**](docs/CompanyGroupsApi.md#company_companies_id_groups_groupid_get) | **GET** /company/companies/{id}/groups/{groupid} |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_groupid_patch**](docs/CompanyGroupsApi.md#company_companies_id_groups_groupid_patch) | **PATCH** /company/companies/{id}/groups/{groupid} |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_groupid_put**](docs/CompanyGroupsApi.md#company_companies_id_groups_groupid_put) | **PUT** /company/companies/{id}/groups/{groupid} |
*ConnectWise::CompanyGroupsApi* | [**company_companies_id_groups_post**](docs/CompanyGroupsApi.md#company_companies_id_groups_post) | **POST** /company/companies/{id}/groups |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_count_get**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_count_get) | **GET** /company/companies/{id}/managementSummaryReports/count |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_get**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_get) | **GET** /company/companies/{id}/managementSummaryReports |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_post**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_post) | **POST** /company/companies/{id}/managementSummaryReports |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_delete**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_delete) | **DELETE** /company/companies/{id}/managementSummaryReports/{reportId} |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_get**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_get) | **GET** /company/companies/{id}/managementSummaryReports/{reportId} |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_patch**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_patch) | **PATCH** /company/companies/{id}/managementSummaryReports/{reportId} |
*ConnectWise::CompanyManagementSummaryReportsApi* | [**company_companies_id_management_summary_reports_report_id_put**](docs/CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_put) | **PUT** /company/companies/{id}/managementSummaryReports/{reportId} |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_count_get**](docs/CompanyNoteTypesApi.md#company_note_types_count_get) | **GET** /company/noteTypes/count |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_get**](docs/CompanyNoteTypesApi.md#company_note_types_get) | **GET** /company/noteTypes |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_id_delete**](docs/CompanyNoteTypesApi.md#company_note_types_id_delete) | **DELETE** /company/noteTypes/{id} |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_id_get**](docs/CompanyNoteTypesApi.md#company_note_types_id_get) | **GET** /company/noteTypes/{id} |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_id_patch**](docs/CompanyNoteTypesApi.md#company_note_types_id_patch) | **PATCH** /company/noteTypes/{id} |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_id_put**](docs/CompanyNoteTypesApi.md#company_note_types_id_put) | **PUT** /company/noteTypes/{id} |
*ConnectWise::CompanyNoteTypesApi* | [**company_note_types_post**](docs/CompanyNoteTypesApi.md#company_note_types_post) | **POST** /company/noteTypes |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_count_get**](docs/CompanyNotesApi.md#company_companies_id_notes_count_get) | **GET** /company/companies/{id}/notes/count |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_get**](docs/CompanyNotesApi.md#company_companies_id_notes_get) | **GET** /company/companies/{id}/notes |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_note_id_delete**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_delete) | **DELETE** /company/companies/{id}/notes/{noteId} |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_note_id_get**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_get) | **GET** /company/companies/{id}/notes/{noteId} |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_note_id_patch**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_patch) | **PATCH** /company/companies/{id}/notes/{noteId} |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_note_id_put**](docs/CompanyNotesApi.md#company_companies_id_notes_note_id_put) | **PUT** /company/companies/{id}/notes/{noteId} |
*ConnectWise::CompanyNotesApi* | [**company_companies_id_notes_post**](docs/CompanyNotesApi.md#company_companies_id_notes_post) | **POST** /company/companies/{id}/notes |
*ConnectWise::CompanyPickerItemsApi* | [**company_company_picker_items_clear_post**](docs/CompanyPickerItemsApi.md#company_company_picker_items_clear_post) | **POST** /company/companyPickerItems/clear |
*ConnectWise::CompanyPickerItemsApi* | [**company_company_picker_items_count_get**](docs/CompanyPickerItemsApi.md#company_company_picker_items_count_get) | **GET** /company/companyPickerItems/count |
*ConnectWise::CompanyPickerItemsApi* | [**company_company_picker_items_get**](docs/CompanyPickerItemsApi.md#company_company_picker_items_get) | **GET** /company/companyPickerItems |
*ConnectWise::CompanyPickerItemsApi* | [**company_company_picker_items_id_delete**](docs/CompanyPickerItemsApi.md#company_company_picker_items_id_delete) | **DELETE** /company/companyPickerItems/{id} |
*ConnectWise::CompanyPickerItemsApi* | [**company_company_picker_items_id_get**](docs/CompanyPickerItemsApi.md#company_company_picker_items_id_get) | **GET** /company/companyPickerItems/{id} |
*ConnectWise::CompanyPickerItemsApi* | [**company_company_picker_items_post**](docs/CompanyPickerItemsApi.md#company_company_picker_items_post) | **POST** /company/companyPickerItems |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_count_get**](docs/CompanySitesApi.md#company_companies_id_sites_count_get) | **GET** /company/companies/{id}/sites/count |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_get**](docs/CompanySitesApi.md#company_companies_id_sites_get) | **GET** /company/companies/{id}/sites |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_post**](docs/CompanySitesApi.md#company_companies_id_sites_post) | **POST** /company/companies/{id}/sites |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_site_id_delete**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_delete) | **DELETE** /company/companies/{id}/sites/{siteId} |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_site_id_get**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_get) | **GET** /company/companies/{id}/sites/{siteId} |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_site_id_patch**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_patch) | **PATCH** /company/companies/{id}/sites/{siteId} |
*ConnectWise::CompanySitesApi* | [**company_companies_id_sites_site_id_put**](docs/CompanySitesApi.md#company_companies_id_sites_site_id_put) | **PUT** /company/companies/{id}/sites/{siteId} |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_count_get**](docs/CompanyStatusesApi.md#company_companies_statuses_count_get) | **GET** /company/companies/statuses/count |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_get**](docs/CompanyStatusesApi.md#company_companies_statuses_get) | **GET** /company/companies/statuses |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_id_delete**](docs/CompanyStatusesApi.md#company_companies_statuses_id_delete) | **DELETE** /company/companies/statuses/{id} |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_id_get**](docs/CompanyStatusesApi.md#company_companies_statuses_id_get) | **GET** /company/companies/statuses/{id} |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_id_patch**](docs/CompanyStatusesApi.md#company_companies_statuses_id_patch) | **PATCH** /company/companies/statuses/{id} |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_id_put**](docs/CompanyStatusesApi.md#company_companies_statuses_id_put) | **PUT** /company/companies/statuses/{id} |
*ConnectWise::CompanyStatusesApi* | [**company_companies_statuses_post**](docs/CompanyStatusesApi.md#company_companies_statuses_post) | **POST** /company/companies/statuses |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_count_get**](docs/CompanyTeamsApi.md#company_companies_id_teams_count_get) | **GET** /company/companies/{id}/teams/count |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_get**](docs/CompanyTeamsApi.md#company_companies_id_teams_get) | **GET** /company/companies/{id}/teams |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_post**](docs/CompanyTeamsApi.md#company_companies_id_teams_post) | **POST** /company/companies/{id}/teams |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_delete**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_delete) | **DELETE** /company/companies/{id}/teams/{teamId} |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_get**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_get) | **GET** /company/companies/{id}/teams/{teamId} |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_patch**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_patch) | **PATCH** /company/companies/{id}/teams/{teamId} |
*ConnectWise::CompanyTeamsApi* | [**company_companies_id_teams_team_id_put**](docs/CompanyTeamsApi.md#company_companies_id_teams_team_id_put) | **PUT** /company/companies/{id}/teams/{teamId} |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_count_get**](docs/CompanyTypesApi.md#company_companies_types_count_get) | **GET** /company/companies/types/count |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_get**](docs/CompanyTypesApi.md#company_companies_types_get) | **GET** /company/companies/types |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_id_delete**](docs/CompanyTypesApi.md#company_companies_types_id_delete) | **DELETE** /company/companies/types/{id} |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_id_get**](docs/CompanyTypesApi.md#company_companies_types_id_get) | **GET** /company/companies/types/{id} |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_id_patch**](docs/CompanyTypesApi.md#company_companies_types_id_patch) | **PATCH** /company/companies/types/{id} |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_id_put**](docs/CompanyTypesApi.md#company_companies_types_id_put) | **PUT** /company/companies/types/{id} |
*ConnectWise::CompanyTypesApi* | [**company_companies_types_post**](docs/CompanyTypesApi.md#company_companies_types_post) | **POST** /company/companies/types |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_count_get**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_count_get) | **GET** /company/configurations/statuses/count |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_get**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_get) | **GET** /company/configurations/statuses |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_delete**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_delete) | **DELETE** /company/configurations/statuses/{id} |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_get**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_get) | **GET** /company/configurations/statuses/{id} |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_patch**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_patch) | **PATCH** /company/configurations/statuses/{id} |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_id_put**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_id_put) | **PUT** /company/configurations/statuses/{id} |
*ConnectWise::ConfigurationStatusesApi* | [**company_configurations_statuses_post**](docs/ConfigurationStatusesApi.md#company_configurations_statuses_post) | **POST** /company/configurations/statuses |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get) | **GET** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/count |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_get**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_get) | **GET** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete) | **DELETE** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get) | **GET** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch) | **PATCH** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put) | **PUT** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} |
*ConnectWise::ConfigurationTypeQuestionValuesApi* | [**company_configurations_types_configuration_type_idint_questions_question_idint_values_post**](docs/ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_post) | **POST** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_count_get**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_count_get) | **GET** /company/configurations/types/{id}/questions/count |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_get**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_get) | **GET** /company/configurations/types/{id}/questions |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_post**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_post) | **POST** /company/configurations/types/{id}/questions |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_delete**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_delete) | **DELETE** /company/configurations/types/{id}/questions/{questionId} |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_get**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_get) | **GET** /company/configurations/types/{id}/questions/{questionId} |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_patch**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_patch) | **PATCH** /company/configurations/types/{id}/questions/{questionId} |
*ConnectWise::ConfigurationTypeQuestionsApi* | [**company_configurations_types_id_questions_question_id_put**](docs/ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_put) | **PUT** /company/configurations/types/{id}/questions/{questionId} |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_count_get**](docs/ConfigurationTypesApi.md#company_configurations_types_count_get) | **GET** /company/configurations/types/count |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_get**](docs/ConfigurationTypesApi.md#company_configurations_types_get) | **GET** /company/configurations/types |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_id_delete**](docs/ConfigurationTypesApi.md#company_configurations_types_id_delete) | **DELETE** /company/configurations/types/{id} |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_id_get**](docs/ConfigurationTypesApi.md#company_configurations_types_id_get) | **GET** /company/configurations/types/{id} |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_id_patch**](docs/ConfigurationTypesApi.md#company_configurations_types_id_patch) | **PATCH** /company/configurations/types/{id} |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_id_put**](docs/ConfigurationTypesApi.md#company_configurations_types_id_put) | **PUT** /company/configurations/types/{id} |
*ConnectWise::ConfigurationTypesApi* | [**company_configurations_types_post**](docs/ConfigurationTypesApi.md#company_configurations_types_post) | **POST** /company/configurations/types |
*ConnectWise::ConfigurationsApi* | [**company_configurations_count_get**](docs/ConfigurationsApi.md#company_configurations_count_get) | **GET** /company/configurations/count |
*ConnectWise::ConfigurationsApi* | [**company_configurations_get**](docs/ConfigurationsApi.md#company_configurations_get) | **GET** /company/configurations |
*ConnectWise::ConfigurationsApi* | [**company_configurations_id_delete**](docs/ConfigurationsApi.md#company_configurations_id_delete) | **DELETE** /company/configurations/{id} |
*ConnectWise::ConfigurationsApi* | [**company_configurations_id_get**](docs/ConfigurationsApi.md#company_configurations_id_get) | **GET** /company/configurations/{id} |
*ConnectWise::ConfigurationsApi* | [**company_configurations_id_patch**](docs/ConfigurationsApi.md#company_configurations_id_patch) | **PATCH** /company/configurations/{id} |
*ConnectWise::ConfigurationsApi* | [**company_configurations_id_put**](docs/ConfigurationsApi.md#company_configurations_id_put) | **PUT** /company/configurations/{id} |
*ConnectWise::ConfigurationsApi* | [**company_configurations_post**](docs/ConfigurationsApi.md#company_configurations_post) | **POST** /company/configurations |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_count_get**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_count_get) | **GET** /system/connectwisehostedsetups/count |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_get**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_get) | **GET** /system/connectwisehostedsetups |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_delete**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_delete) | **DELETE** /system/connectwisehostedsetups/{id} |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_get**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_get) | **GET** /system/connectwisehostedsetups/{id} |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_patch**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_patch) | **PATCH** /system/connectwisehostedsetups/{id} |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_id_put**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_id_put) | **PUT** /system/connectwisehostedsetups/{id} |
*ConnectWise::ConnectWiseHostedSetupsApi* | [**system_connectwisehostedsetups_post**](docs/ConnectWiseHostedSetupsApi.md#system_connectwisehostedsetups_post) | **POST** /system/connectwisehostedsetups |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_delete**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_delete) | **DELETE** /company/contacts/{id}/communications/{communicationId} |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_get**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_get) | **GET** /company/contacts/{id}/communications/{communicationId} |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_patch**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_patch) | **PATCH** /company/contacts/{id}/communications/{communicationId} |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_communication_id_put**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_put) | **PUT** /company/contacts/{id}/communications/{communicationId} |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_count_get**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_count_get) | **GET** /company/contacts/{id}/communications/count |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_get**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_get) | **GET** /company/contacts/{id}/communications |
*ConnectWise::ContactCommunicationsApi* | [**company_contacts_id_communications_post**](docs/ContactCommunicationsApi.md#company_contacts_id_communications_post) | **POST** /company/contacts/{id}/communications |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_count_get**](docs/ContactDepartmentsApi.md#company_contacts_departments_count_get) | **GET** /company/contacts/departments/count |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_get**](docs/ContactDepartmentsApi.md#company_contacts_departments_get) | **GET** /company/contacts/departments |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_id_delete**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_delete) | **DELETE** /company/contacts/departments/{id} |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_id_get**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_get) | **GET** /company/contacts/departments/{id} |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_id_patch**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_patch) | **PATCH** /company/contacts/departments/{id} |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_id_put**](docs/ContactDepartmentsApi.md#company_contacts_departments_id_put) | **PUT** /company/contacts/departments/{id} |
*ConnectWise::ContactDepartmentsApi* | [**company_contacts_departments_post**](docs/ContactDepartmentsApi.md#company_contacts_departments_post) | **POST** /company/contacts/departments |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_count_get**](docs/ContactGroupsApi.md#company_contacts_id_groups_count_get) | **GET** /company/contacts/{id}/groups/count |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_get**](docs/ContactGroupsApi.md#company_contacts_id_groups_get) | **GET** /company/contacts/{id}/groups |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_groupid_delete**](docs/ContactGroupsApi.md#company_contacts_id_groups_groupid_delete) | **DELETE** /company/contacts/{id}/groups/{groupid} |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_groupid_get**](docs/ContactGroupsApi.md#company_contacts_id_groups_groupid_get) | **GET** /company/contacts/{id}/groups/{groupid} |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_groupid_patch**](docs/ContactGroupsApi.md#company_contacts_id_groups_groupid_patch) | **PATCH** /company/contacts/{id}/groups/{groupid} |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_groupid_put**](docs/ContactGroupsApi.md#company_contacts_id_groups_groupid_put) | **PUT** /company/contacts/{id}/groups/{groupid} |
*ConnectWise::ContactGroupsApi* | [**company_contacts_id_groups_post**](docs/ContactGroupsApi.md#company_contacts_id_groups_post) | **POST** /company/contacts/{id}/groups |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_count_get**](docs/ContactNotesApi.md#company_contacts_id_notes_count_get) | **GET** /company/contacts/{id}/notes/count |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_get**](docs/ContactNotesApi.md#company_contacts_id_notes_get) | **GET** /company/contacts/{id}/notes |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_note_id_delete**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_delete) | **DELETE** /company/contacts/{id}/notes/{noteId} |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_note_id_get**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_get) | **GET** /company/contacts/{id}/notes/{noteId} |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_note_id_patch**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_patch) | **PATCH** /company/contacts/{id}/notes/{noteId} |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_note_id_put**](docs/ContactNotesApi.md#company_contacts_id_notes_note_id_put) | **PUT** /company/contacts/{id}/notes/{noteId} |
*ConnectWise::ContactNotesApi* | [**company_contacts_id_notes_post**](docs/ContactNotesApi.md#company_contacts_id_notes_post) | **POST** /company/contacts/{id}/notes |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_count_get**](docs/ContactRelationshipsApi.md#company_contacts_relationships_count_get) | **GET** /company/contacts/relationships/count |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_get**](docs/ContactRelationshipsApi.md#company_contacts_relationships_get) | **GET** /company/contacts/relationships |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_id_delete**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_delete) | **DELETE** /company/contacts/relationships/{id} |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_id_get**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_get) | **GET** /company/contacts/relationships/{id} |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_id_patch**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_patch) | **PATCH** /company/contacts/relationships/{id} |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_id_put**](docs/ContactRelationshipsApi.md#company_contacts_relationships_id_put) | **PUT** /company/contacts/relationships/{id} |
*ConnectWise::ContactRelationshipsApi* | [**company_contacts_relationships_post**](docs/ContactRelationshipsApi.md#company_contacts_relationships_post) | **POST** /company/contacts/relationships |
*ConnectWise::ContactTracksApi* | [**company_contacts_id_tracks_count_get**](docs/ContactTracksApi.md#company_contacts_id_tracks_count_get) | **GET** /company/contacts/{id}/tracks/count |
*ConnectWise::ContactTracksApi* | [**company_contacts_id_tracks_get**](docs/ContactTracksApi.md#company_contacts_id_tracks_get) | **GET** /company/contacts/{id}/tracks |
*ConnectWise::ContactTracksApi* | [**company_contacts_id_tracks_post**](docs/ContactTracksApi.md#company_contacts_id_tracks_post) | **POST** /company/contacts/{id}/tracks |
*ConnectWise::ContactTracksApi* | [**company_contacts_id_tracks_track_id_delete**](docs/ContactTracksApi.md#company_contacts_id_tracks_track_id_delete) | **DELETE** /company/contacts/{id}/tracks/{trackId} |
*ConnectWise::ContactTracksApi* | [**company_contacts_id_tracks_track_id_get**](docs/ContactTracksApi.md#company_contacts_id_tracks_track_id_get) | **GET** /company/contacts/{id}/tracks/{trackId} |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_count_get**](docs/ContactTypesApi.md#company_contacts_types_count_get) | **GET** /company/contacts/types/count |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_get**](docs/ContactTypesApi.md#company_contacts_types_get) | **GET** /company/contacts/types |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_id_delete**](docs/ContactTypesApi.md#company_contacts_types_id_delete) | **DELETE** /company/contacts/types/{id} |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_id_get**](docs/ContactTypesApi.md#company_contacts_types_id_get) | **GET** /company/contacts/types/{id} |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_id_patch**](docs/ContactTypesApi.md#company_contacts_types_id_patch) | **PATCH** /company/contacts/types/{id} |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_id_put**](docs/ContactTypesApi.md#company_contacts_types_id_put) | **PUT** /company/contacts/types/{id} |
*ConnectWise::ContactTypesApi* | [**company_contacts_types_post**](docs/ContactTypesApi.md#company_contacts_types_post) | **POST** /company/contacts/types |
*ConnectWise::ContactsApi* | [**company_contacts_count_get**](docs/ContactsApi.md#company_contacts_count_get) | **GET** /company/contacts/count |
*ConnectWise::ContactsApi* | [**company_contacts_get**](docs/ContactsApi.md#company_contacts_get) | **GET** /company/contacts |
*ConnectWise::ContactsApi* | [**company_contacts_id_delete**](docs/ContactsApi.md#company_contacts_id_delete) | **DELETE** /company/contacts/{id} |
*ConnectWise::ContactsApi* | [**company_contacts_id_get**](docs/ContactsApi.md#company_contacts_id_get) | **GET** /company/contacts/{id} |
*ConnectWise::ContactsApi* | [**company_contacts_id_image_get**](docs/ContactsApi.md#company_contacts_id_image_get) | **GET** /company/contacts/{id}/image |
*ConnectWise::ContactsApi* | [**company_contacts_id_patch**](docs/ContactsApi.md#company_contacts_id_patch) | **PATCH** /company/contacts/{id} |
*ConnectWise::ContactsApi* | [**company_contacts_id_portal_security_get**](docs/ContactsApi.md#company_contacts_id_portal_security_get) | **GET** /company/contacts/{id}/portalSecurity |
*ConnectWise::ContactsApi* | [**company_contacts_id_put**](docs/ContactsApi.md#company_contacts_id_put) | **PUT** /company/contacts/{id} |
*ConnectWise::ContactsApi* | [**company_contacts_post**](docs/ContactsApi.md#company_contacts_post) | **POST** /company/contacts |
*ConnectWise::ContactsApi* | [**company_contacts_request_password_post**](docs/ContactsApi.md#company_contacts_request_password_post) | **POST** /company/contacts/requestPassword |
*ConnectWise::ContactsApi* | [**company_contacts_validate_portal_credentials_post**](docs/ContactsApi.md#company_contacts_validate_portal_credentials_post) | **POST** /company/contacts/validatePortalCredentials |
*ConnectWise::CorporateStructureLevelsApi* | [**system_my_company_corporate_structure_levels_count_get**](docs/CorporateStructureLevelsApi.md#system_my_company_corporate_structure_levels_count_get) | **GET** /system/myCompany/corporateStructureLevels/count |
*ConnectWise::CorporateStructureLevelsApi* | [**system_my_company_corporate_structure_levels_get**](docs/CorporateStructureLevelsApi.md#system_my_company_corporate_structure_levels_get) | **GET** /system/myCompany/corporateStructureLevels |
*ConnectWise::CorporateStructureLevelsApi* | [**system_my_company_corporate_structure_levels_id_get**](docs/CorporateStructureLevelsApi.md#system_my_company_corporate_structure_levels_id_get) | **GET** /system/myCompany/corporateStructureLevels/{id} |
*ConnectWise::CorporateStructuresApi* | [**system_my_company_corporate_structure_count_get**](docs/CorporateStructuresApi.md#system_my_company_corporate_structure_count_get) | **GET** /system/myCompany/corporateStructure/count |
*ConnectWise::CorporateStructuresApi* | [**system_my_company_corporate_structure_get**](docs/CorporateStructuresApi.md#system_my_company_corporate_structure_get) | **GET** /system/myCompany/corporateStructure |
*ConnectWise::CorporateStructuresApi* | [**system_my_company_corporate_structure_id_get**](docs/CorporateStructuresApi.md#system_my_company_corporate_structure_id_get) | **GET** /system/myCompany/corporateStructure/{id} |
*ConnectWise::CorporateStructuresApi* | [**system_my_company_corporate_structure_id_patch**](docs/CorporateStructuresApi.md#system_my_company_corporate_structure_id_patch) | **PATCH** /system/myCompany/corporateStructure/{id} |
*ConnectWise::CorporateStructuresApi* | [**system_my_company_corporate_structure_id_put**](docs/CorporateStructuresApi.md#system_my_company_corporate_structure_id_put) | **PUT** /system/myCompany/corporateStructure/{id} |
*ConnectWise::CountriesApi* | [**company_countries_count_get**](docs/CountriesApi.md#company_countries_count_get) | **GET** /company/countries/count |
*ConnectWise::CountriesApi* | [**company_countries_get**](docs/CountriesApi.md#company_countries_get) | **GET** /company/countries |
*ConnectWise::CountriesApi* | [**company_countries_id_delete**](docs/CountriesApi.md#company_countries_id_delete) | **DELETE** /company/countries/{id} |
*ConnectWise::CountriesApi* | [**company_countries_id_get**](docs/CountriesApi.md#company_countries_id_get) | **GET** /company/countries/{id} |
*ConnectWise::CountriesApi* | [**company_countries_id_patch**](docs/CountriesApi.md#company_countries_id_patch) | **PATCH** /company/countries/{id} |
*ConnectWise::CountriesApi* | [**company_countries_id_put**](docs/CountriesApi.md#company_countries_id_put) | **PUT** /company/countries/{id} |
*ConnectWise::CountriesApi* | [**company_countries_post**](docs/CountriesApi.md#company_countries_post) | **POST** /company/countries |
*ConnectWise::CrmsApi* | [**system_my_company_crm_count_get**](docs/CrmsApi.md#system_my_company_crm_count_get) | **GET** /system/myCompany/crm/count |
*ConnectWise::CrmsApi* | [**system_my_company_crm_get**](docs/CrmsApi.md#system_my_company_crm_get) | **GET** /system/myCompany/crm |
*ConnectWise::CrmsApi* | [**system_my_company_crm_id_get**](docs/CrmsApi.md#system_my_company_crm_id_get) | **GET** /system/myCompany/crm/{id} |
*ConnectWise::CrmsApi* | [**system_my_company_crm_id_patch**](docs/CrmsApi.md#system_my_company_crm_id_patch) | **PATCH** /system/myCompany/crm/{id} |
*ConnectWise::CrmsApi* | [**system_my_company_crm_id_put**](docs/CrmsApi.md#system_my_company_crm_id_put) | **PUT** /system/myCompany/crm/{id} |
*ConnectWise::CurrenciesApi* | [**finance_currencies_count_get**](docs/CurrenciesApi.md#finance_currencies_count_get) | **GET** /finance/currencies/count |
*ConnectWise::CurrenciesApi* | [**finance_currencies_get**](docs/CurrenciesApi.md#finance_currencies_get) | **GET** /finance/currencies |
*ConnectWise::CurrenciesApi* | [**finance_currencies_id_delete**](docs/CurrenciesApi.md#finance_currencies_id_delete) | **DELETE** /finance/currencies/{id} |
*ConnectWise::CurrenciesApi* | [**finance_currencies_id_get**](docs/CurrenciesApi.md#finance_currencies_id_get) | **GET** /finance/currencies/{id} |
*ConnectWise::CurrenciesApi* | [**finance_currencies_id_patch**](docs/CurrenciesApi.md#finance_currencies_id_patch) | **PATCH** /finance/currencies/{id} |
*ConnectWise::CurrenciesApi* | [**finance_currencies_id_put**](docs/CurrenciesApi.md#finance_currencies_id_put) | **PUT** /finance/currencies/{id} |
*ConnectWise::CurrenciesApi* | [**finance_currencies_post**](docs/CurrenciesApi.md#finance_currencies_post) | **POST** /finance/currencies |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_count_get**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_count_get) | **GET** /system/customReports/{id}/parameters/count |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_get**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_get) | **GET** /system/customReports/{id}/parameters |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_parameter_id_delete**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_delete) | **DELETE** /system/customReports/{id}/parameters/{parameterId} |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_parameter_id_get**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_get) | **GET** /system/customReports/{id}/parameters/{parameterId} |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_parameter_id_patch**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_patch) | **PATCH** /system/customReports/{id}/parameters/{parameterId} |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_parameter_id_put**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_put) | **PUT** /system/customReports/{id}/parameters/{parameterId} |
*ConnectWise::CustomReportParametersApi* | [**system_custom_reports_id_parameters_post**](docs/CustomReportParametersApi.md#system_custom_reports_id_parameters_post) | **POST** /system/customReports/{id}/parameters |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_count_get**](docs/CustomReportsApi.md#system_custom_reports_count_get) | **GET** /system/customReports/count |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_get**](docs/CustomReportsApi.md#system_custom_reports_get) | **GET** /system/customReports |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_id_delete**](docs/CustomReportsApi.md#system_custom_reports_id_delete) | **DELETE** /system/customReports/{id} |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_id_get**](docs/CustomReportsApi.md#system_custom_reports_id_get) | **GET** /system/customReports/{id} |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_id_patch**](docs/CustomReportsApi.md#system_custom_reports_id_patch) | **PATCH** /system/customReports/{id} |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_id_put**](docs/CustomReportsApi.md#system_custom_reports_id_put) | **PUT** /system/customReports/{id} |
*ConnectWise::CustomReportsApi* | [**system_custom_reports_post**](docs/CustomReportsApi.md#system_custom_reports_post) | **POST** /system/customReports |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_count_get**](docs/DeliveryMethodsApi.md#finance_delivery_methods_count_get) | **GET** /finance/deliveryMethods/count |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_get**](docs/DeliveryMethodsApi.md#finance_delivery_methods_get) | **GET** /finance/deliveryMethods |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_id_delete**](docs/DeliveryMethodsApi.md#finance_delivery_methods_id_delete) | **DELETE** /finance/deliveryMethods/{id} |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_id_get**](docs/DeliveryMethodsApi.md#finance_delivery_methods_id_get) | **GET** /finance/deliveryMethods/{id} |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_id_patch**](docs/DeliveryMethodsApi.md#finance_delivery_methods_id_patch) | **PATCH** /finance/deliveryMethods/{id} |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_id_put**](docs/DeliveryMethodsApi.md#finance_delivery_methods_id_put) | **PUT** /finance/deliveryMethods/{id} |
*ConnectWise::DeliveryMethodsApi* | [**finance_delivery_methods_post**](docs/DeliveryMethodsApi.md#finance_delivery_methods_post) | **POST** /finance/deliveryMethods |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_count_get**](docs/DepartmentLocationsApi.md#system_departments_id_locations_count_get) | **GET** /system/departments/{id}/locations/count |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_get**](docs/DepartmentLocationsApi.md#system_departments_id_locations_get) | **GET** /system/departments/{id}/locations |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_location_id_delete**](docs/DepartmentLocationsApi.md#system_departments_id_locations_location_id_delete) | **DELETE** /system/departments/{id}/locations/{locationId} |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_location_id_get**](docs/DepartmentLocationsApi.md#system_departments_id_locations_location_id_get) | **GET** /system/departments/{id}/locations/{locationId} |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_location_id_patch**](docs/DepartmentLocationsApi.md#system_departments_id_locations_location_id_patch) | **PATCH** /system/departments/{id}/locations/{locationId} |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_location_id_put**](docs/DepartmentLocationsApi.md#system_departments_id_locations_location_id_put) | **PUT** /system/departments/{id}/locations/{locationId} |
*ConnectWise::DepartmentLocationsApi* | [**system_departments_id_locations_post**](docs/DepartmentLocationsApi.md#system_departments_id_locations_post) | **POST** /system/departments/{id}/locations |
*ConnectWise::DepartmentsApi* | [**system_departments_count_get**](docs/DepartmentsApi.md#system_departments_count_get) | **GET** /system/departments/count |
*ConnectWise::DepartmentsApi* | [**system_departments_get**](docs/DepartmentsApi.md#system_departments_get) | **GET** /system/departments |
*ConnectWise::DepartmentsApi* | [**system_departments_id_delete**](docs/DepartmentsApi.md#system_departments_id_delete) | **DELETE** /system/departments/{id} |
*ConnectWise::DepartmentsApi* | [**system_departments_id_get**](docs/DepartmentsApi.md#system_departments_id_get) | **GET** /system/departments/{id} |
*ConnectWise::DepartmentsApi* | [**system_departments_id_patch**](docs/DepartmentsApi.md#system_departments_id_patch) | **PATCH** /system/departments/{id} |
*ConnectWise::DepartmentsApi* | [**system_departments_id_put**](docs/DepartmentsApi.md#system_departments_id_put) | **PUT** /system/departments/{id} |
*ConnectWise::DepartmentsApi* | [**system_departments_post**](docs/DepartmentsApi.md#system_departments_post) | **POST** /system/departments |
*ConnectWise::DocumentsApi* | [**system_documents_count_get**](docs/DocumentsApi.md#system_documents_count_get) | **GET** /system/documents/count |
*ConnectWise::DocumentsApi* | [**system_documents_get**](docs/DocumentsApi.md#system_documents_get) | **GET** /system/documents |
*ConnectWise::DocumentsApi* | [**system_documents_id_delete**](docs/DocumentsApi.md#system_documents_id_delete) | **DELETE** /system/documents/{id} |
*ConnectWise::DocumentsApi* | [**system_documents_id_download_get**](docs/DocumentsApi.md#system_documents_id_download_get) | **GET** /system/documents/{id}/download |
*ConnectWise::DocumentsApi* | [**system_documents_id_get**](docs/DocumentsApi.md#system_documents_id_get) | **GET** /system/documents/{id} |
*ConnectWise::DocumentsApi* | [**system_documents_id_post**](docs/DocumentsApi.md#system_documents_id_post) | **POST** /system/documents/{id} |
*ConnectWise::DocumentsApi* | [**system_documents_post**](docs/DocumentsApi.md#system_documents_post) | **POST** /system/documents |
*ConnectWise::DocumentsApi* | [**system_documents_uploadsample_get**](docs/DocumentsApi.md#system_documents_uploadsample_get) | **GET** /system/documents/uploadsample |
*ConnectWise::DocumentsSetupApi* | [**system_mycompany_documents_get**](docs/DocumentsSetupApi.md#system_mycompany_documents_get) | **GET** /system/mycompany/documents |
*ConnectWise::DocumentsSetupApi* | [**system_mycompany_documents_id_get**](docs/DocumentsSetupApi.md#system_mycompany_documents_id_get) | **GET** /system/mycompany/documents/{id} |
*ConnectWise::DocumentsSetupApi* | [**system_mycompany_documents_id_patch**](docs/DocumentsSetupApi.md#system_mycompany_documents_id_patch) | **PATCH** /system/mycompany/documents/{id} |
*ConnectWise::DocumentsSetupApi* | [**system_mycompany_documents_id_put**](docs/DocumentsSetupApi.md#system_mycompany_documents_id_put) | **PUT** /system/mycompany/documents/{id} |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/count |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_get**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_post**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_post) | **POST** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete) | **DELETE** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch) | **PATCH** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} |
*ConnectWise::EmailConnectorParsingRulesApi* | [**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put**](docs/EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put) | **PUT** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_count_get**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_count_get) | **GET** /system/emailConnectors/{id}/parsingStyles/count |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_get**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_get) | **GET** /system/emailConnectors/{id}/parsingStyles |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_post**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_post) | **POST** /system/emailConnectors/{id}/parsingStyles |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_style_id_delete**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_delete) | **DELETE** /system/emailConnectors/{id}/parsingStyles/{styleId} |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_style_id_get**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId} |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_style_id_patch**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_patch) | **PATCH** /system/emailConnectors/{id}/parsingStyles/{styleId} |
*ConnectWise::EmailConnectorParsingStylesApi* | [**system_email_connectors_id_parsing_styles_style_id_put**](docs/EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_put) | **PUT** /system/emailConnectors/{id}/parsingStyles/{styleId} |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_count_get**](docs/EmailConnectorsApi.md#system_email_connectors_count_get) | **GET** /system/emailConnectors/count |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_get**](docs/EmailConnectorsApi.md#system_email_connectors_get) | **GET** /system/emailConnectors |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_id_delete**](docs/EmailConnectorsApi.md#system_email_connectors_id_delete) | **DELETE** /system/emailConnectors/{id} |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_id_get**](docs/EmailConnectorsApi.md#system_email_connectors_id_get) | **GET** /system/emailConnectors/{id} |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_id_patch**](docs/EmailConnectorsApi.md#system_email_connectors_id_patch) | **PATCH** /system/emailConnectors/{id} |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_id_put**](docs/EmailConnectorsApi.md#system_email_connectors_id_put) | **PUT** /system/emailConnectors/{id} |
*ConnectWise::EmailConnectorsApi* | [**system_email_connectors_post**](docs/EmailConnectorsApi.md#system_email_connectors_post) | **POST** /system/emailConnectors |
*ConnectWise::EmailTokensApi* | [**system_email_tokens_count_get**](docs/EmailTokensApi.md#system_email_tokens_count_get) | **GET** /system/emailTokens/count |
*ConnectWise::EmailTokensApi* | [**system_email_tokens_get**](docs/EmailTokensApi.md#system_email_tokens_get) | **GET** /system/emailTokens |
*ConnectWise::EmailTokensApi* | [**system_email_tokens_id_get**](docs/EmailTokensApi.md#system_email_tokens_id_get) | **GET** /system/emailTokens/{id} |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_count_get**](docs/ExpenseEntriesApi.md#expense_entries_count_get) | **GET** /expense/entries/count |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_get**](docs/ExpenseEntriesApi.md#expense_entries_get) | **GET** /expense/entries |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_id_delete**](docs/ExpenseEntriesApi.md#expense_entries_id_delete) | **DELETE** /expense/entries/{id} |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_id_get**](docs/ExpenseEntriesApi.md#expense_entries_id_get) | **GET** /expense/entries/{id} |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_id_patch**](docs/ExpenseEntriesApi.md#expense_entries_id_patch) | **PATCH** /expense/entries/{id} |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_id_put**](docs/ExpenseEntriesApi.md#expense_entries_id_put) | **PUT** /expense/entries/{id} |
*ConnectWise::ExpenseEntriesApi* | [**expense_entries_post**](docs/ExpenseEntriesApi.md#expense_entries_post) | **POST** /expense/entries |
*ConnectWise::ExpenseReportsApi* | [**expense_reports_count_get**](docs/ExpenseReportsApi.md#expense_reports_count_get) | **GET** /expense/reports/count |
*ConnectWise::ExpenseReportsApi* | [**expense_reports_get**](docs/ExpenseReportsApi.md#expense_reports_get) | **GET** /expense/reports |
*ConnectWise::ExpenseReportsApi* | [**expense_reports_id_get**](docs/ExpenseReportsApi.md#expense_reports_id_get) | **GET** /expense/reports/{id} |
*ConnectWise::ExpenseReportsApi* | [**expense_reports_id_reverse_post**](docs/ExpenseReportsApi.md#expense_reports_id_reverse_post) | **POST** /expense/reports/{id}/reverse |
*ConnectWise::ExpenseReportsApi* | [**expense_reports_id_submit_post**](docs/ExpenseReportsApi.md#expense_reports_id_submit_post) | **POST** /expense/reports/{id}/submit |
*ConnectWise::ExpenseTypeExternalIntegrationReferencesApi* | [**expense_expense_type_external_integration_references_count_get**](docs/ExpenseTypeExternalIntegrationReferencesApi.md#expense_expense_type_external_integration_references_count_get) | **GET** /expense/expenseTypeExternalIntegrationReferences/count |
*ConnectWise::ExpenseTypeExternalIntegrationReferencesApi* | [**expense_expense_type_external_integration_references_get**](docs/ExpenseTypeExternalIntegrationReferencesApi.md#expense_expense_type_external_integration_references_get) | **GET** /expense/expenseTypeExternalIntegrationReferences |
*ConnectWise::ExpenseTypeExternalIntegrationReferencesApi* | [**expense_expense_type_external_integration_references_id_get**](docs/ExpenseTypeExternalIntegrationReferencesApi.md#expense_expense_type_external_integration_references_id_get) | **GET** /expense/expenseTypeExternalIntegrationReferences/{id} |
*ConnectWise::ExpenseTypesApi* | [**expense_types_count_get**](docs/ExpenseTypesApi.md#expense_types_count_get) | **GET** /expense/types/count |
*ConnectWise::ExpenseTypesApi* | [**expense_types_get**](docs/ExpenseTypesApi.md#expense_types_get) | **GET** /expense/types |
*ConnectWise::ExpenseTypesApi* | [**expense_types_id_delete**](docs/ExpenseTypesApi.md#expense_types_id_delete) | **DELETE** /expense/types/{id} |
*ConnectWise::ExpenseTypesApi* | [**expense_types_id_get**](docs/ExpenseTypesApi.md#expense_types_id_get) | **GET** /expense/types/{id} |
*ConnectWise::ExpenseTypesApi* | [**expense_types_id_patch**](docs/ExpenseTypesApi.md#expense_types_id_patch) | **PATCH** /expense/types/{id} |
*ConnectWise::ExpenseTypesApi* | [**expense_types_id_put**](docs/ExpenseTypesApi.md#expense_types_id_put) | **PUT** /expense/types/{id} |
*ConnectWise::ExpenseTypesApi* | [**expense_types_post**](docs/ExpenseTypesApi.md#expense_types_post) | **POST** /expense/types |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_delete**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_delete) | **DELETE** /marketing/groups/{id}/companies/{companyId} |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_get**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_get) | **GET** /marketing/groups/{id}/companies/{companyId} |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_patch**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_patch) | **PATCH** /marketing/groups/{id}/companies/{companyId} |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_company_id_put**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_company_id_put) | **PUT** /marketing/groups/{id}/companies/{companyId} |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_count_get**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_count_get) | **GET** /marketing/groups/{id}/companies/count |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_get**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_get) | **GET** /marketing/groups/{id}/companies |
*ConnectWise::GroupCompaniesApi* | [**marketing_groups_id_companies_post**](docs/GroupCompaniesApi.md#marketing_groups_id_companies_post) | **POST** /marketing/groups/{id}/companies |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_delete**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_delete) | **DELETE** /marketing/groups/{id}/contacts/{contactId} |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_get**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_get) | **GET** /marketing/groups/{id}/contacts/{contactId} |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_patch**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_patch) | **PATCH** /marketing/groups/{id}/contacts/{contactId} |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_contact_id_put**](docs/GroupContactsApi.md#marketing_groups_id_contacts_contact_id_put) | **PUT** /marketing/groups/{id}/contacts/{contactId} |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_count_get**](docs/GroupContactsApi.md#marketing_groups_id_contacts_count_get) | **GET** /marketing/groups/{id}/contacts/count |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_get**](docs/GroupContactsApi.md#marketing_groups_id_contacts_get) | **GET** /marketing/groups/{id}/contacts |
*ConnectWise::GroupContactsApi* | [**marketing_groups_id_contacts_post**](docs/GroupContactsApi.md#marketing_groups_id_contacts_post) | **POST** /marketing/groups/{id}/contacts |
*ConnectWise::GroupsApi* | [**marketing_groups_count_get**](docs/GroupsApi.md#marketing_groups_count_get) | **GET** /marketing/groups/count |
*ConnectWise::GroupsApi* | [**marketing_groups_get**](docs/GroupsApi.md#marketing_groups_get) | **GET** /marketing/groups |
*ConnectWise::GroupsApi* | [**marketing_groups_id_delete**](docs/GroupsApi.md#marketing_groups_id_delete) | **DELETE** /marketing/groups/{id} |
*ConnectWise::GroupsApi* | [**marketing_groups_id_get**](docs/GroupsApi.md#marketing_groups_id_get) | **GET** /marketing/groups/{id} |
*ConnectWise::GroupsApi* | [**marketing_groups_id_patch**](docs/GroupsApi.md#marketing_groups_id_patch) | **PATCH** /marketing/groups/{id} |
*ConnectWise::GroupsApi* | [**marketing_groups_id_put**](docs/GroupsApi.md#marketing_groups_id_put) | **PUT** /marketing/groups/{id} |
*ConnectWise::GroupsApi* | [**marketing_groups_post**](docs/GroupsApi.md#marketing_groups_post) | **POST** /marketing/groups |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_count_get**](docs/HolidayListsApi.md#system_holiday_lists_count_get) | **GET** /system/holidayLists/count |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_get**](docs/HolidayListsApi.md#system_holiday_lists_get) | **GET** /system/holidayLists |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_id_delete**](docs/HolidayListsApi.md#system_holiday_lists_id_delete) | **DELETE** /system/holidayLists/{id} |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_id_get**](docs/HolidayListsApi.md#system_holiday_lists_id_get) | **GET** /system/holidayLists/{id} |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_id_patch**](docs/HolidayListsApi.md#system_holiday_lists_id_patch) | **PATCH** /system/holidayLists/{id} |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_id_put**](docs/HolidayListsApi.md#system_holiday_lists_id_put) | **PUT** /system/holidayLists/{id} |
*ConnectWise::HolidayListsApi* | [**system_holiday_lists_post**](docs/HolidayListsApi.md#system_holiday_lists_post) | **POST** /system/holidayLists |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_count_get**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_count_get) | **GET** /system/holidayLists/{id}/holidays/count |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_get**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_get) | **GET** /system/holidayLists/{id}/holidays |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_holiday_id_delete**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_delete) | **DELETE** /system/holidayLists/{id}/holidays/{holidayId} |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_holiday_id_get**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_get) | **GET** /system/holidayLists/{id}/holidays/{holidayId} |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_holiday_id_patch**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_patch) | **PATCH** /system/holidayLists/{id}/holidays/{holidayId} |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_holiday_id_put**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_holiday_id_put) | **PUT** /system/holidayLists/{id}/holidays/{holidayId} |
*ConnectWise::HolidaysApi* | [**system_holiday_lists_id_holidays_post**](docs/HolidaysApi.md#system_holiday_lists_id_holidays_post) | **POST** /system/holidayLists/{id}/holidays |
*ConnectWise::ImapsApi* | [**system_imaps_count_get**](docs/ImapsApi.md#system_imaps_count_get) | **GET** /system/imaps/count |
*ConnectWise::ImapsApi* | [**system_imaps_get**](docs/ImapsApi.md#system_imaps_get) | **GET** /system/imaps |
*ConnectWise::ImapsApi* | [**system_imaps_id_get**](docs/ImapsApi.md#system_imaps_id_get) | **GET** /system/imaps/{id} |
*ConnectWise::ImpactsApi* | [**service_impacts_count_get**](docs/ImpactsApi.md#service_impacts_count_get) | **GET** /service/impacts/count |
*ConnectWise::ImpactsApi* | [**service_impacts_get**](docs/ImpactsApi.md#service_impacts_get) | **GET** /service/impacts |
*ConnectWise::ImpactsApi* | [**service_impacts_id_get**](docs/ImpactsApi.md#service_impacts_id_get) | **GET** /service/impacts/{id} |
*ConnectWise::ImpactsApi* | [**service_impacts_id_patch**](docs/ImpactsApi.md#service_impacts_id_patch) | **PATCH** /service/impacts/{id} |
*ConnectWise::ImpactsApi* | [**service_impacts_id_put**](docs/ImpactsApi.md#service_impacts_id_put) | **PUT** /service/impacts/{id} |
*ConnectWise::ImportsMassMaintenanceApi* | [**system_import_mass_maintenance_id_post**](docs/ImportsMassMaintenanceApi.md#system_import_mass_maintenance_id_post) | **POST** /system/importMassMaintenance/{id} |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_count_get**](docs/InOutBoardsApi.md#system_in_out_boards_count_get) | **GET** /system/inOutBoards/count |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_get**](docs/InOutBoardsApi.md#system_in_out_boards_get) | **GET** /system/inOutBoards |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_id_delete**](docs/InOutBoardsApi.md#system_in_out_boards_id_delete) | **DELETE** /system/inOutBoards/{id} |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_id_get**](docs/InOutBoardsApi.md#system_in_out_boards_id_get) | **GET** /system/inOutBoards/{id} |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_id_patch**](docs/InOutBoardsApi.md#system_in_out_boards_id_patch) | **PATCH** /system/inOutBoards/{id} |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_id_put**](docs/InOutBoardsApi.md#system_in_out_boards_id_put) | **PUT** /system/inOutBoards/{id} |
*ConnectWise::InOutBoardsApi* | [**system_in_out_boards_post**](docs/InOutBoardsApi.md#system_in_out_boards_post) | **POST** /system/inOutBoards |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_count_get**](docs/InOutTypesApi.md#system_in_out_types_count_get) | **GET** /system/inOutTypes/count |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_get**](docs/InOutTypesApi.md#system_in_out_types_get) | **GET** /system/inOutTypes |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_id_delete**](docs/InOutTypesApi.md#system_in_out_types_id_delete) | **DELETE** /system/inOutTypes/{id} |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_id_get**](docs/InOutTypesApi.md#system_in_out_types_id_get) | **GET** /system/inOutTypes/{id} |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_id_patch**](docs/InOutTypesApi.md#system_in_out_types_id_patch) | **PATCH** /system/inOutTypes/{id} |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_id_put**](docs/InOutTypesApi.md#system_in_out_types_id_put) | **PUT** /system/inOutTypes/{id} |
*ConnectWise::InOutTypesApi* | [**system_in_out_types_post**](docs/InOutTypesApi.md#system_in_out_types_post) | **POST** /system/inOutTypes |
*ConnectWise::InfoApi* | [**system_info_get**](docs/InfoApi.md#system_info_get) | **GET** /system/info |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_count_get**](docs/IntegratorLoginsApi.md#system_integratorlogins_count_get) | **GET** /system/integratorlogins/count |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_get**](docs/IntegratorLoginsApi.md#system_integratorlogins_get) | **GET** /system/integratorlogins |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_id_delete**](docs/IntegratorLoginsApi.md#system_integratorlogins_id_delete) | **DELETE** /system/integratorlogins/{id} |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_id_get**](docs/IntegratorLoginsApi.md#system_integratorlogins_id_get) | **GET** /system/integratorlogins/{id} |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_id_patch**](docs/IntegratorLoginsApi.md#system_integratorlogins_id_patch) | **PATCH** /system/integratorlogins/{id} |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_id_put**](docs/IntegratorLoginsApi.md#system_integratorlogins_id_put) | **PUT** /system/integratorlogins/{id} |
*ConnectWise::IntegratorLoginsApi* | [**system_integratorlogins_post**](docs/IntegratorLoginsApi.md#system_integratorlogins_post) | **POST** /system/integratorlogins |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_count_get**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_count_get) | **GET** /finance/invoiceEmailTemplates/count |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_get**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_get) | **GET** /finance/invoiceEmailTemplates |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_id_delete**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_delete) | **DELETE** /finance/invoiceEmailTemplates/{id} |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_id_get**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_get) | **GET** /finance/invoiceEmailTemplates/{id} |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_id_patch**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_patch) | **PATCH** /finance/invoiceEmailTemplates/{id} |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_id_put**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_put) | **PUT** /finance/invoiceEmailTemplates/{id} |
*ConnectWise::InvoiceEmailTemplatesApi* | [**finance_invoice_email_templates_post**](docs/InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_post) | **POST** /finance/invoiceEmailTemplates |
*ConnectWise::InvoicePaymentsApi* | [**finance_invoices_id_payments_get**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_get) | **GET** /finance/invoices/{id}/payments |
*ConnectWise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_delete**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_delete) | **DELETE** /finance/invoices/{id}/payments/{paymentId} |
*ConnectWise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_get**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_get) | **GET** /finance/invoices/{id}/payments/{paymentId} |
*ConnectWise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_patch**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_patch) | **PATCH** /finance/invoices/{id}/payments/{paymentId} |
*ConnectWise::InvoicePaymentsApi* | [**finance_invoices_id_payments_payment_id_put**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_put) | **PUT** /finance/invoices/{id}/payments/{paymentId} |
*ConnectWise::InvoicePaymentsApi* | [**finance_invoices_id_payments_post**](docs/InvoicePaymentsApi.md#finance_invoices_id_payments_post) | **POST** /finance/invoices/{id}/payments |
*ConnectWise::InvoiceTemplateSetupsApi* | [**finance_invoice_template_setups_count_get**](docs/InvoiceTemplateSetupsApi.md#finance_invoice_template_setups_count_get) | **GET** /finance/invoiceTemplateSetups/count |
*ConnectWise::InvoiceTemplateSetupsApi* | [**finance_invoice_template_setups_get**](docs/InvoiceTemplateSetupsApi.md#finance_invoice_template_setups_get) | **GET** /finance/invoiceTemplateSetups |
*ConnectWise::InvoiceTemplateSetupsApi* | [**finance_invoice_template_setups_id_get**](docs/InvoiceTemplateSetupsApi.md#finance_invoice_template_setups_id_get) | **GET** /finance/invoiceTemplateSetups/{id} |
*ConnectWise::InvoiceTemplatesApi* | [**finance_invoice_templates_count_get**](docs/InvoiceTemplatesApi.md#finance_invoice_templates_count_get) | **GET** /finance/invoiceTemplates/count |
*ConnectWise::InvoiceTemplatesApi* | [**finance_invoice_templates_get**](docs/InvoiceTemplatesApi.md#finance_invoice_templates_get) | **GET** /finance/invoiceTemplates |
*ConnectWise::InvoiceTemplatesApi* | [**finance_invoice_templates_id_get**](docs/InvoiceTemplatesApi.md#finance_invoice_templates_id_get) | **GET** /finance/invoiceTemplates/{id} |
*ConnectWise::InvoicesApi* | [**finance_invoices_count_get**](docs/InvoicesApi.md#finance_invoices_count_get) | **GET** /finance/invoices/count |
*ConnectWise::InvoicesApi* | [**finance_invoices_get**](docs/InvoicesApi.md#finance_invoices_get) | **GET** /finance/invoices |
*ConnectWise::InvoicesApi* | [**finance_invoices_id_delete**](docs/InvoicesApi.md#finance_invoices_id_delete) | **DELETE** /finance/invoices/{id} |
*ConnectWise::InvoicesApi* | [**finance_invoices_id_get**](docs/InvoicesApi.md#finance_invoices_id_get) | **GET** /finance/invoices/{id} |
*ConnectWise::InvoicesApi* | [**finance_invoices_id_patch**](docs/InvoicesApi.md#finance_invoices_id_patch) | **PATCH** /finance/invoices/{id} |
*ConnectWise::InvoicesApi* | [**finance_invoices_id_pdf_get**](docs/InvoicesApi.md#finance_invoices_id_pdf_get) | **GET** /finance/invoices/{id}/pdf |
*ConnectWise::InvoicesApi* | [**finance_invoices_id_put**](docs/InvoicesApi.md#finance_invoices_id_put) | **PUT** /finance/invoices/{id} |
*ConnectWise::InvoicesApi* | [**finance_invoices_post**](docs/InvoicesApi.md#finance_invoices_post) | **POST** /finance/invoices |
*ConnectWise::KPICategoriesApi* | [**system_kpi_categories_count_get**](docs/KPICategoriesApi.md#system_kpi_categories_count_get) | **GET** /system/kpiCategories/count |
*ConnectWise::KPICategoriesApi* | [**system_kpi_categories_get**](docs/KPICategoriesApi.md#system_kpi_categories_get) | **GET** /system/kpiCategories |
*ConnectWise::KPICategoriesApi* | [**system_kpi_categories_id_get**](docs/KPICategoriesApi.md#system_kpi_categories_id_get) | **GET** /system/kpiCategories/{id} |
*ConnectWise::KPIsApi* | [**system_kpis_count_get**](docs/KPIsApi.md#system_kpis_count_get) | **GET** /system/kpis/count |
*ConnectWise::KPIsApi* | [**system_kpis_get**](docs/KPIsApi.md#system_kpis_get) | **GET** /system/kpis |
*ConnectWise::KPIsApi* | [**system_kpis_id_get**](docs/KPIsApi.md#system_kpis_id_get) | **GET** /system/kpis/{id} |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_count_get**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_count_get) | **GET** /service/knowledgeBaseArticles/count |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_get**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_get) | **GET** /service/knowledgeBaseArticles |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_delete**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_delete) | **DELETE** /service/knowledgeBaseArticles/{id} |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_get**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_get) | **GET** /service/knowledgeBaseArticles/{id} |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_patch**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_patch) | **PATCH** /service/knowledgeBaseArticles/{id} |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_id_put**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_put) | **PUT** /service/knowledgeBaseArticles/{id} |
*ConnectWise::KnowledgeBaseArticlesApi* | [**service_knowledge_base_articles_post**](docs/KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_post) | **POST** /service/knowledgeBaseArticles |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_count_get**](docs/LdapConfigurationsApi.md#system_ldap_configurations_count_get) | **GET** /system/ldapConfigurations/count |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_get**](docs/LdapConfigurationsApi.md#system_ldap_configurations_get) | **GET** /system/ldapConfigurations |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_id_delete**](docs/LdapConfigurationsApi.md#system_ldap_configurations_id_delete) | **DELETE** /system/ldapConfigurations/{id} |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_id_get**](docs/LdapConfigurationsApi.md#system_ldap_configurations_id_get) | **GET** /system/ldapConfigurations/{id} |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_id_patch**](docs/LdapConfigurationsApi.md#system_ldap_configurations_id_patch) | **PATCH** /system/ldapConfigurations/{id} |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_id_put**](docs/LdapConfigurationsApi.md#system_ldap_configurations_id_put) | **PUT** /system/ldapConfigurations/{id} |
*ConnectWise::LdapConfigurationsApi* | [**system_ldap_configurations_post**](docs/LdapConfigurationsApi.md#system_ldap_configurations_post) | **POST** /system/ldapConfigurations |
*ConnectWise::LegacyCampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_count_get**](docs/LegacyCampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_count_get) | **GET** /marketing/campaigns/types/{id}/subTypes/count |
*ConnectWise::LegacyCampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_get**](docs/LegacyCampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_get) | **GET** /marketing/campaigns/types/{id}/subTypes |
*ConnectWise::LegacyCampaignSubTypesApi* | [**marketing_campaigns_types_id_sub_types_sub_type_id_get**](docs/LegacyCampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_get) | **GET** /marketing/campaigns/types/{id}/subTypes/{subTypeId} |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_count_get**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_count_get) | **GET** /procurement/categories/{id}/subcategories/count |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_get**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_get) | **GET** /procurement/categories/{id}/subcategories |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_post**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_post) | **POST** /procurement/categories/{id}/subcategories |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_delete**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_delete) | **DELETE** /procurement/categories/{id}/subcategories/{subcategoryID} |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_get**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_get) | **GET** /procurement/categories/{id}/subcategories/{subcategoryID} |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_patch**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_patch) | **PATCH** /procurement/categories/{id}/subcategories/{subcategoryID} |
*ConnectWise::LegacySubCategoriesApi* | [**procurement_categories_id_subcategories_subcategory_id_put**](docs/LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_put) | **PUT** /procurement/categories/{id}/subcategories/{subcategoryID} |
*ConnectWise::LinksApi* | [**system_links_count_get**](docs/LinksApi.md#system_links_count_get) | **GET** /system/links/count |
*ConnectWise::LinksApi* | [**system_links_get**](docs/LinksApi.md#system_links_get) | **GET** /system/links |
*ConnectWise::LinksApi* | [**system_links_id_delete**](docs/LinksApi.md#system_links_id_delete) | **DELETE** /system/links/{id} |
*ConnectWise::LinksApi* | [**system_links_id_get**](docs/LinksApi.md#system_links_id_get) | **GET** /system/links/{id} |
*ConnectWise::LinksApi* | [**system_links_id_patch**](docs/LinksApi.md#system_links_id_patch) | **PATCH** /system/links/{id} |
*ConnectWise::LinksApi* | [**system_links_id_put**](docs/LinksApi.md#system_links_id_put) | **PUT** /system/links/{id} |
*ConnectWise::LinksApi* | [**system_links_post**](docs/LinksApi.md#system_links_post) | **POST** /system/links |
*ConnectWise::LocationDepartmentsApi* | [**system_locations_id_departments_count_get**](docs/LocationDepartmentsApi.md#system_locations_id_departments_count_get) | **GET** /system/locations/{id}/departments/count |
*ConnectWise::LocationDepartmentsApi* | [**system_locations_id_departments_get**](docs/LocationDepartmentsApi.md#system_locations_id_departments_get) | **GET** /system/locations/{id}/departments |
*ConnectWise::LocationDepartmentsApi* | [**system_locations_parent_id_departments_id_get**](docs/LocationDepartmentsApi.md#system_locations_parent_id_departments_id_get) | **GET** /system/locations/{parentId}/departments/{id} |
*ConnectWise::LocationWorkRolesApi* | [**system_locations_id_work_roles_count_get**](docs/LocationWorkRolesApi.md#system_locations_id_work_roles_count_get) | **GET** /system/locations/{id}/workRoles/count |
*ConnectWise::LocationWorkRolesApi* | [**system_locations_id_work_roles_get**](docs/LocationWorkRolesApi.md#system_locations_id_work_roles_get) | **GET** /system/locations/{id}/workRoles |
*ConnectWise::LocationWorkRolesApi* | [**system_locations_parent_id_work_roles_id_get**](docs/LocationWorkRolesApi.md#system_locations_parent_id_work_roles_id_get) | **GET** /system/locations/{parentId}/workRoles/{id} |
*ConnectWise::LocationsApi* | [**system_locations_count_get**](docs/LocationsApi.md#system_locations_count_get) | **GET** /system/locations/count |
*ConnectWise::LocationsApi* | [**system_locations_get**](docs/LocationsApi.md#system_locations_get) | **GET** /system/locations |
*ConnectWise::LocationsApi* | [**system_locations_id_delete**](docs/LocationsApi.md#system_locations_id_delete) | **DELETE** /system/locations/{id} |
*ConnectWise::LocationsApi* | [**system_locations_id_get**](docs/LocationsApi.md#system_locations_id_get) | **GET** /system/locations/{id} |
*ConnectWise::LocationsApi* | [**system_locations_id_patch**](docs/LocationsApi.md#system_locations_id_patch) | **PATCH** /system/locations/{id} |
*ConnectWise::LocationsApi* | [**system_locations_id_put**](docs/LocationsApi.md#system_locations_id_put) | **PUT** /system/locations/{id} |
*ConnectWise::LocationsApi* | [**system_locations_post**](docs/LocationsApi.md#system_locations_post) | **POST** /system/locations |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_count_get**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_count_get) | **GET** /company/managedDevicesIntegrations/{id}/crossReferences/count |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_cross_reference_id_delete**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_cross_reference_id_get**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_get) | **GET** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_cross_reference_id_patch**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_cross_reference_id_put**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_put) | **PUT** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_get**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_get) | **GET** /company/managedDevicesIntegrations/{id}/crossReferences |
*ConnectWise::ManagedDevicesIntegrationCrossReferencesApi* | [**company_managed_devices_integrations_id_cross_references_post**](docs/ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_post) | **POST** /company/managedDevicesIntegrations/{id}/crossReferences |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_count_get**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_count_get) | **GET** /company/managedDevicesIntegrations/{id}/logins/count |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_get**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_get) | **GET** /company/managedDevicesIntegrations/{id}/logins |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_login_id_delete**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id}/logins/{loginID} |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_login_id_get**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_get) | **GET** /company/managedDevicesIntegrations/{id}/logins/{loginID} |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_login_id_patch**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id}/logins/{loginID} |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_login_id_put**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_put) | **PUT** /company/managedDevicesIntegrations/{id}/logins/{loginID} |
*ConnectWise::ManagedDevicesIntegrationLoginsApi* | [**company_managed_devices_integrations_id_logins_post**](docs/ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_post) | **POST** /company/managedDevicesIntegrations/{id}/logins |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_count_get**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_count_get) | **GET** /company/managedDevicesIntegrations/{id}/notifications/count |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_get**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_get) | **GET** /company/managedDevicesIntegrations/{id}/notifications |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_notification_id_delete**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_notification_id_get**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_get) | **GET** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_notification_id_patch**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_notification_id_put**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_put) | **PUT** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} |
*ConnectWise::ManagedDevicesIntegrationNotificationsApi* | [**company_managed_devices_integrations_id_notifications_post**](docs/ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_post) | **POST** /company/managedDevicesIntegrations/{id}/notifications |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_count_get**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_count_get) | **GET** /company/managedDevicesIntegrations/count |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_get**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_get) | **GET** /company/managedDevicesIntegrations |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_id_delete**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id} |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_id_get**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_get) | **GET** /company/managedDevicesIntegrations/{id} |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_id_patch**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id} |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_id_put**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_put) | **PUT** /company/managedDevicesIntegrations/{id} |
*ConnectWise::ManagedDevicesIntegrationsApi* | [**company_managed_devices_integrations_post**](docs/ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_post) | **POST** /company/managedDevicesIntegrations |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_count_get**](docs/ManagementBackupsApi.md#company_management_backups_count_get) | **GET** /company/managementBackups/count |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_get**](docs/ManagementBackupsApi.md#company_management_backups_get) | **GET** /company/managementBackups |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_id_delete**](docs/ManagementBackupsApi.md#company_management_backups_id_delete) | **DELETE** /company/managementBackups/{id} |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_id_get**](docs/ManagementBackupsApi.md#company_management_backups_id_get) | **GET** /company/managementBackups/{id} |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_id_patch**](docs/ManagementBackupsApi.md#company_management_backups_id_patch) | **PATCH** /company/managementBackups/{id} |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_id_put**](docs/ManagementBackupsApi.md#company_management_backups_id_put) | **PUT** /company/managementBackups/{id} |
*ConnectWise::ManagementBackupsApi* | [**company_management_backups_post**](docs/ManagementBackupsApi.md#company_management_backups_post) | **POST** /company/managementBackups |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_count_get**](docs/ManagementEmailsApi.md#company_management_emails_count_get) | **GET** /company/managementEmails/count |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_get**](docs/ManagementEmailsApi.md#company_management_emails_get) | **GET** /company/managementEmails |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_id_delete**](docs/ManagementEmailsApi.md#company_management_emails_id_delete) | **DELETE** /company/managementEmails/{id} |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_id_get**](docs/ManagementEmailsApi.md#company_management_emails_id_get) | **GET** /company/managementEmails/{id} |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_id_patch**](docs/ManagementEmailsApi.md#company_management_emails_id_patch) | **PATCH** /company/managementEmails/{id} |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_id_put**](docs/ManagementEmailsApi.md#company_management_emails_id_put) | **PUT** /company/managementEmails/{id} |
*ConnectWise::ManagementEmailsApi* | [**company_management_emails_post**](docs/ManagementEmailsApi.md#company_management_emails_post) | **POST** /company/managementEmails |
*ConnectWise::ManagementExecuteManagedItSyncsApi* | [**company_management_id_execute_managed_it_sync_post**](docs/ManagementExecuteManagedItSyncsApi.md#company_management_id_execute_managed_it_sync_post) | **POST** /company/management/{id}/executeManagedItSync |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_count_get**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_count_get) | **GET** /company/managementItSolutions/{id}/managementProducts/count |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_get**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_get) | **GET** /company/managementItSolutions/{id}/managementProducts |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_management_product_id_delete**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_delete) | **DELETE** /company/managementItSolutions/{id}/managementProducts/{managementProductID} |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_management_product_id_get**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_get) | **GET** /company/managementItSolutions/{id}/managementProducts/{managementProductID} |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_management_product_id_patch**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_patch) | **PATCH** /company/managementItSolutions/{id}/managementProducts/{managementProductID} |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_management_product_id_put**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_put) | **PUT** /company/managementItSolutions/{id}/managementProducts/{managementProductID} |
*ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi* | [**company_management_it_solutions_id_management_products_post**](docs/ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_post) | **POST** /company/managementItSolutions/{id}/managementProducts |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_count_get**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_count_get) | **GET** /company/managementItSolutions/count |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_get**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_get) | **GET** /company/managementItSolutions |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_id_delete**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_id_delete) | **DELETE** /company/managementItSolutions/{id} |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_id_get**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_id_get) | **GET** /company/managementItSolutions/{id} |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_id_patch**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_id_patch) | **PATCH** /company/managementItSolutions/{id} |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_id_put**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_id_put) | **PUT** /company/managementItSolutions/{id} |
*ConnectWise::ManagementItSolutionsApi* | [**company_management_it_solutions_post**](docs/ManagementItSolutionsApi.md#company_management_it_solutions_post) | **POST** /company/managementItSolutions |
*ConnectWise::ManagementLogsApi* | [**company_management_id_log_download_get**](docs/ManagementLogsApi.md#company_management_id_log_download_get) | **GET** /company/management/{id}/log/download |
*ConnectWise::ManagementLogsApi* | [**company_management_id_logs_get**](docs/ManagementLogsApi.md#company_management_id_logs_get) | **GET** /company/management/{id}/logs |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_count_get**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_count_get) | **GET** /system/managementNetworkSecurities/count |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_get**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_get) | **GET** /system/managementNetworkSecurities |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_id_delete**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_id_delete) | **DELETE** /system/managementNetworkSecurities/{id} |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_id_get**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_id_get) | **GET** /system/managementNetworkSecurities/{id} |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_id_patch**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_id_patch) | **PATCH** /system/managementNetworkSecurities/{id} |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_id_put**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_id_put) | **PUT** /system/managementNetworkSecurities/{id} |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_post**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_post) | **POST** /system/managementNetworkSecurities |
*ConnectWise::ManagementNetworksSecurityApi* | [**system_management_network_securities_test_credentials_get**](docs/ManagementNetworksSecurityApi.md#system_management_network_securities_test_credentials_get) | **GET** /system/managementNetworkSecurities/testCredentials |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_count_get**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_count_get) | **GET** /company/management/{id}/managementReportNotifications/count |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_get**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_get) | **GET** /company/management/{id}/managementReportNotifications |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_management_report_notification_id_delete**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_delete) | **DELETE** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_management_report_notification_id_get**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_get) | **GET** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_management_report_notification_id_patch**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_patch) | **PATCH** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_management_report_notification_id_put**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_put) | **PUT** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} |
*ConnectWise::ManagementReportNotificationsApi* | [**company_management_id_management_report_notifications_post**](docs/ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_post) | **POST** /company/management/{id}/managementReportNotifications |
*ConnectWise::ManagementsApi* | [**company_management_count_get**](docs/ManagementsApi.md#company_management_count_get) | **GET** /company/management/count |
*ConnectWise::ManagementsApi* | [**company_management_get**](docs/ManagementsApi.md#company_management_get) | **GET** /company/management |
*ConnectWise::ManagementsApi* | [**company_management_id_get**](docs/ManagementsApi.md#company_management_id_get) | **GET** /company/management/{id} |
*ConnectWise::ManagementsApi* | [**company_management_id_patch**](docs/ManagementsApi.md#company_management_id_patch) | **PATCH** /company/management/{id} |
*ConnectWise::ManagementsApi* | [**company_management_id_put**](docs/ManagementsApi.md#company_management_id_put) | **PUT** /company/management/{id} |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_count_get**](docs/ManufacturersApi.md#procurement_manufacturers_count_get) | **GET** /procurement/manufacturers/count |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_get**](docs/ManufacturersApi.md#procurement_manufacturers_get) | **GET** /procurement/manufacturers |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_id_delete**](docs/ManufacturersApi.md#procurement_manufacturers_id_delete) | **DELETE** /procurement/manufacturers/{id} |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_id_get**](docs/ManufacturersApi.md#procurement_manufacturers_id_get) | **GET** /procurement/manufacturers/{id} |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_id_patch**](docs/ManufacturersApi.md#procurement_manufacturers_id_patch) | **PATCH** /procurement/manufacturers/{id} |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_id_put**](docs/ManufacturersApi.md#procurement_manufacturers_id_put) | **PUT** /procurement/manufacturers/{id} |
*ConnectWise::ManufacturersApi* | [**procurement_manufacturers_post**](docs/ManufacturersApi.md#procurement_manufacturers_post) | **POST** /procurement/manufacturers |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_count_get**](docs/MarketDescriptionsApi.md#company_market_descriptions_count_get) | **GET** /company/marketDescriptions/count |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_get**](docs/MarketDescriptionsApi.md#company_market_descriptions_get) | **GET** /company/marketDescriptions |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_id_delete**](docs/MarketDescriptionsApi.md#company_market_descriptions_id_delete) | **DELETE** /company/marketDescriptions/{id} |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_id_get**](docs/MarketDescriptionsApi.md#company_market_descriptions_id_get) | **GET** /company/marketDescriptions/{id} |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_id_patch**](docs/MarketDescriptionsApi.md#company_market_descriptions_id_patch) | **PATCH** /company/marketDescriptions/{id} |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_id_put**](docs/MarketDescriptionsApi.md#company_market_descriptions_id_put) | **PUT** /company/marketDescriptions/{id} |
*ConnectWise::MarketDescriptionsApi* | [**company_market_descriptions_post**](docs/MarketDescriptionsApi.md#company_market_descriptions_post) | **POST** /company/marketDescriptions |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_accrual_id_delete**](docs/MemberAccrualsApi.md#system_members_id_accruals_accrual_id_delete) | **DELETE** /system/members/{id}/accruals/{accrualId} |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_accrual_id_get**](docs/MemberAccrualsApi.md#system_members_id_accruals_accrual_id_get) | **GET** /system/members/{id}/accruals/{accrualId} |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_accrual_id_patch**](docs/MemberAccrualsApi.md#system_members_id_accruals_accrual_id_patch) | **PATCH** /system/members/{id}/accruals/{accrualId} |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_accrual_id_put**](docs/MemberAccrualsApi.md#system_members_id_accruals_accrual_id_put) | **PUT** /system/members/{id}/accruals/{accrualId} |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_count_get**](docs/MemberAccrualsApi.md#system_members_id_accruals_count_get) | **GET** /system/members/{id}/accruals/count |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_get**](docs/MemberAccrualsApi.md#system_members_id_accruals_get) | **GET** /system/members/{id}/accruals |
*ConnectWise::MemberAccrualsApi* | [**system_members_id_accruals_post**](docs/MemberAccrualsApi.md#system_members_id_accruals_post) | **POST** /system/members/{id}/accruals |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_cert_id_delete**](docs/MemberCertificationsApi.md#system_members_id_certifications_cert_id_delete) | **DELETE** /system/members/{id}/certifications/{certId} |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_cert_id_get**](docs/MemberCertificationsApi.md#system_members_id_certifications_cert_id_get) | **GET** /system/members/{id}/certifications/{certId} |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_cert_id_patch**](docs/MemberCertificationsApi.md#system_members_id_certifications_cert_id_patch) | **PATCH** /system/members/{id}/certifications/{certId} |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_cert_id_put**](docs/MemberCertificationsApi.md#system_members_id_certifications_cert_id_put) | **PUT** /system/members/{id}/certifications/{certId} |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_count_get**](docs/MemberCertificationsApi.md#system_members_id_certifications_count_get) | **GET** /system/members/{id}/certifications/count |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_get**](docs/MemberCertificationsApi.md#system_members_id_certifications_get) | **GET** /system/members/{id}/certifications |
*ConnectWise::MemberCertificationsApi* | [**system_members_id_certifications_post**](docs/MemberCertificationsApi.md#system_members_id_certifications_post) | **POST** /system/members/{id}/certifications |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_count_get**](docs/MemberDelegationsApi.md#system_members_id_delegations_count_get) | **GET** /system/members/{id}/delegations/count |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_delegation_id_delete**](docs/MemberDelegationsApi.md#system_members_id_delegations_delegation_id_delete) | **DELETE** /system/members/{id}/delegations/{delegationId} |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_delegation_id_get**](docs/MemberDelegationsApi.md#system_members_id_delegations_delegation_id_get) | **GET** /system/members/{id}/delegations/{delegationId} |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_delegation_id_patch**](docs/MemberDelegationsApi.md#system_members_id_delegations_delegation_id_patch) | **PATCH** /system/members/{id}/delegations/{delegationId} |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_delegation_id_put**](docs/MemberDelegationsApi.md#system_members_id_delegations_delegation_id_put) | **PUT** /system/members/{id}/delegations/{delegationId} |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_get**](docs/MemberDelegationsApi.md#system_members_id_delegations_get) | **GET** /system/members/{id}/delegations |
*ConnectWise::MemberDelegationsApi* | [**system_members_id_delegations_post**](docs/MemberDelegationsApi.md#system_members_id_delegations_post) | **POST** /system/members/{id}/delegations |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_count_get**](docs/MemberSkillsApi.md#system_members_id_skills_count_get) | **GET** /system/members/{id}/skills/count |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_get**](docs/MemberSkillsApi.md#system_members_id_skills_get) | **GET** /system/members/{id}/skills |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_post**](docs/MemberSkillsApi.md#system_members_id_skills_post) | **POST** /system/members/{id}/skills |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_skill_id_delete**](docs/MemberSkillsApi.md#system_members_id_skills_skill_id_delete) | **DELETE** /system/members/{id}/skills/{skillId} |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_skill_id_get**](docs/MemberSkillsApi.md#system_members_id_skills_skill_id_get) | **GET** /system/members/{id}/skills/{skillId} |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_skill_id_patch**](docs/MemberSkillsApi.md#system_members_id_skills_skill_id_patch) | **PATCH** /system/members/{id}/skills/{skillId} |
*ConnectWise::MemberSkillsApi* | [**system_members_id_skills_skill_id_put**](docs/MemberSkillsApi.md#system_members_id_skills_skill_id_put) | **PUT** /system/members/{id}/skills/{skillId} |
*ConnectWise::MemberTypesApi* | [**system_members_types_count_get**](docs/MemberTypesApi.md#system_members_types_count_get) | **GET** /system/members/types/count |
*ConnectWise::MemberTypesApi* | [**system_members_types_get**](docs/MemberTypesApi.md#system_members_types_get) | **GET** /system/members/types |
*ConnectWise::MemberTypesApi* | [**system_members_types_id_delete**](docs/MemberTypesApi.md#system_members_types_id_delete) | **DELETE** /system/members/types/{id} |
*ConnectWise::MemberTypesApi* | [**system_members_types_id_get**](docs/MemberTypesApi.md#system_members_types_id_get) | **GET** /system/members/types/{id} |
*ConnectWise::MemberTypesApi* | [**system_members_types_id_patch**](docs/MemberTypesApi.md#system_members_types_id_patch) | **PATCH** /system/members/types/{id} |
*ConnectWise::MemberTypesApi* | [**system_members_types_id_put**](docs/MemberTypesApi.md#system_members_types_id_put) | **PUT** /system/members/types/{id} |
*ConnectWise::MemberTypesApi* | [**system_members_types_post**](docs/MemberTypesApi.md#system_members_types_post) | **POST** /system/members/types |
*ConnectWise::MembersApi* | [**system_members_count_get**](docs/MembersApi.md#system_members_count_get) | **GET** /system/members/count |
*ConnectWise::MembersApi* | [**system_members_get**](docs/MembersApi.md#system_members_get) | **GET** /system/members |
*ConnectWise::MembersApi* | [**system_members_id_deactivate_post**](docs/MembersApi.md#system_members_id_deactivate_post) | **POST** /system/members/{id}/deactivate |
*ConnectWise::MembersApi* | [**system_members_id_get**](docs/MembersApi.md#system_members_id_get) | **GET** /system/members/{id} |
*ConnectWise::MembersApi* | [**system_members_id_patch**](docs/MembersApi.md#system_members_id_patch) | **PATCH** /system/members/{id} |
*ConnectWise::MembersApi* | [**system_members_id_put**](docs/MembersApi.md#system_members_id_put) | **PUT** /system/members/{id} |
*ConnectWise::MembersApi* | [**system_members_id_unused_time_sheets_delete**](docs/MembersApi.md#system_members_id_unused_time_sheets_delete) | **DELETE** /system/members/{id}/unusedTimeSheets |
*ConnectWise::MembersApi* | [**system_members_member_identifier_tokens_post**](docs/MembersApi.md#system_members_member_identifier_tokens_post) | **POST** /system/members/{memberIdentifier}/tokens |
*ConnectWise::MembersApi* | [**system_members_post**](docs/MembersApi.md#system_members_post) | **POST** /system/members |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_count_get**](docs/MenuEntriesApi.md#system_menuentries_count_get) | **GET** /system/menuentries/count |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_get**](docs/MenuEntriesApi.md#system_menuentries_get) | **GET** /system/menuentries |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_id_delete**](docs/MenuEntriesApi.md#system_menuentries_id_delete) | **DELETE** /system/menuentries/{id} |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_id_get**](docs/MenuEntriesApi.md#system_menuentries_id_get) | **GET** /system/menuentries/{id} |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_id_image_get**](docs/MenuEntriesApi.md#system_menuentries_id_image_get) | **GET** /system/menuentries/{id}/image |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_id_image_post**](docs/MenuEntriesApi.md#system_menuentries_id_image_post) | **POST** /system/menuentries/{id}/image |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_id_patch**](docs/MenuEntriesApi.md#system_menuentries_id_patch) | **PATCH** /system/menuentries/{id} |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_id_put**](docs/MenuEntriesApi.md#system_menuentries_id_put) | **PUT** /system/menuentries/{id} |
*ConnectWise::MenuEntriesApi* | [**system_menuentries_post**](docs/MenuEntriesApi.md#system_menuentries_post) | **POST** /system/menuentries |
*ConnectWise::MenuEntryLocationsApi* | [**system_menu_entries_id_locations_count_get**](docs/MenuEntryLocationsApi.md#system_menu_entries_id_locations_count_get) | **GET** /system/menuEntries/{id}/locations/count |
*ConnectWise::MenuEntryLocationsApi* | [**system_menu_entries_id_locations_get**](docs/MenuEntryLocationsApi.md#system_menu_entries_id_locations_get) | **GET** /system/menuEntries/{id}/locations |
*ConnectWise::MenuEntryLocationsApi* | [**system_menu_entries_id_locations_location_id_delete**](docs/MenuEntryLocationsApi.md#system_menu_entries_id_locations_location_id_delete) | **DELETE** /system/menuEntries/{id}/locations/{locationId} |
*ConnectWise::MenuEntryLocationsApi* | [**system_menu_entries_id_locations_location_id_get**](docs/MenuEntryLocationsApi.md#system_menu_entries_id_locations_location_id_get) | **GET** /system/menuEntries/{id}/locations/{locationId} |
*ConnectWise::MenuEntryLocationsApi* | [**system_menu_entries_id_locations_post**](docs/MenuEntryLocationsApi.md#system_menu_entries_id_locations_post) | **POST** /system/menuEntries/{id}/locations |
*ConnectWise::MyCompanyPurchasingsApi* | [**system_mycompany_purchasing_count_get**](docs/MyCompanyPurchasingsApi.md#system_mycompany_purchasing_count_get) | **GET** /system/mycompany/purchasing/count |
*ConnectWise::MyCompanyPurchasingsApi* | [**system_mycompany_purchasing_get**](docs/MyCompanyPurchasingsApi.md#system_mycompany_purchasing_get) | **GET** /system/mycompany/purchasing |
*ConnectWise::MyCompanyPurchasingsApi* | [**system_mycompany_purchasing_id_get**](docs/MyCompanyPurchasingsApi.md#system_mycompany_purchasing_id_get) | **GET** /system/mycompany/purchasing/{id} |
*ConnectWise::MyCompanyPurchasingsApi* | [**system_mycompany_purchasing_id_patch**](docs/MyCompanyPurchasingsApi.md#system_mycompany_purchasing_id_patch) | **PATCH** /system/mycompany/purchasing/{id} |
*ConnectWise::MyCompanyPurchasingsApi* | [**system_mycompany_purchasing_id_put**](docs/MyCompanyPurchasingsApi.md#system_mycompany_purchasing_id_put) | **PUT** /system/mycompany/purchasing/{id} |
*ConnectWise::NotificationRecipientsApi* | [**system_notification_recipients_count_get**](docs/NotificationRecipientsApi.md#system_notification_recipients_count_get) | **GET** /system/notificationRecipients/count |
*ConnectWise::NotificationRecipientsApi* | [**system_notification_recipients_get**](docs/NotificationRecipientsApi.md#system_notification_recipients_get) | **GET** /system/notificationRecipients |
*ConnectWise::NotificationRecipientsApi* | [**system_notification_recipients_id_get**](docs/NotificationRecipientsApi.md#system_notification_recipients_id_get) | **GET** /system/notificationRecipients/{id} |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_count_get**](docs/OpportunitiesApi.md#sales_opportunities_count_get) | **GET** /sales/opportunities/count |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_get**](docs/OpportunitiesApi.md#sales_opportunities_get) | **GET** /sales/opportunities |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_agreement_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_agreement_post) | **POST** /sales/opportunities/{id}/convertToAgreement |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_project_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_project_post) | **POST** /sales/opportunities/{id}/convertToProject |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_sales_order_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_sales_order_post) | **POST** /sales/opportunities/{id}/convertToSalesOrder |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_convert_to_service_ticket_post**](docs/OpportunitiesApi.md#sales_opportunities_id_convert_to_service_ticket_post) | **POST** /sales/opportunities/{id}/convertToServiceTicket |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_delete**](docs/OpportunitiesApi.md#sales_opportunities_id_delete) | **DELETE** /sales/opportunities/{id} |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_get**](docs/OpportunitiesApi.md#sales_opportunities_id_get) | **GET** /sales/opportunities/{id} |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_patch**](docs/OpportunitiesApi.md#sales_opportunities_id_patch) | **PATCH** /sales/opportunities/{id} |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_id_put**](docs/OpportunitiesApi.md#sales_opportunities_id_put) | **PUT** /sales/opportunities/{id} |
*ConnectWise::OpportunitiesApi* | [**sales_opportunities_post**](docs/OpportunitiesApi.md#sales_opportunities_post) | **POST** /sales/opportunities |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_delete**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_delete) | **DELETE** /sales/opportunities/{id}/contacts/{contactId} |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_get**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_get) | **GET** /sales/opportunities/{id}/contacts/{contactId} |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_patch**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_patch) | **PATCH** /sales/opportunities/{id}/contacts/{contactId} |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_contact_id_put**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_put) | **PUT** /sales/opportunities/{id}/contacts/{contactId} |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_count_get**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_count_get) | **GET** /sales/opportunities/{id}/contacts/count |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_get**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_get) | **GET** /sales/opportunities/{id}/contacts |
*ConnectWise::OpportunityContactsApi* | [**sales_opportunities_id_contacts_post**](docs/OpportunityContactsApi.md#sales_opportunities_id_contacts_post) | **POST** /sales/opportunities/{id}/contacts |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_count_get**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_count_get) | **GET** /sales/opportunities/{id}/forecast/count |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_delete**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_delete) | **DELETE** /sales/opportunities/{id}/forecast/{forecastId} |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_get**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_get) | **GET** /sales/opportunities/{id}/forecast/{forecastId} |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_patch**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_patch) | **PATCH** /sales/opportunities/{id}/forecast/{forecastId} |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_forecast_id_put**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_put) | **PUT** /sales/opportunities/{id}/forecast/{forecastId} |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_get**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_get) | **GET** /sales/opportunities/{id}/forecast |
*ConnectWise::OpportunityForecastsApi* | [**sales_opportunities_id_forecast_post**](docs/OpportunityForecastsApi.md#sales_opportunities_id_forecast_post) | **POST** /sales/opportunities/{id}/forecast |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_count_get**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_count_get) | **GET** /sales/opportunities/{id}/notes/count |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_get**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_get) | **GET** /sales/opportunities/{id}/notes |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_delete**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_delete) | **DELETE** /sales/opportunities/{id}/notes/{noteId} |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_get**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_get) | **GET** /sales/opportunities/{id}/notes/{noteId} |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_patch**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_patch) | **PATCH** /sales/opportunities/{id}/notes/{noteId} |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_note_id_put**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_put) | **PUT** /sales/opportunities/{id}/notes/{noteId} |
*ConnectWise::OpportunityNotesApi* | [**sales_opportunities_id_notes_post**](docs/OpportunityNotesApi.md#sales_opportunities_id_notes_post) | **POST** /sales/opportunities/{id}/notes |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_count_get**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_count_get) | **GET** /sales/opportunities/ratings/count |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_get**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_get) | **GET** /sales/opportunities/ratings |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_delete**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_delete) | **DELETE** /sales/opportunities/ratings/{id} |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_get**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_get) | **GET** /sales/opportunities/ratings/{id} |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_patch**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_patch) | **PATCH** /sales/opportunities/ratings/{id} |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_id_put**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_id_put) | **PUT** /sales/opportunities/ratings/{id} |
*ConnectWise::OpportunityRatingsApi* | [**sales_opportunities_ratings_post**](docs/OpportunityRatingsApi.md#sales_opportunities_ratings_post) | **POST** /sales/opportunities/ratings |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_count_get**](docs/OpportunityStagesApi.md#sales_stages_count_get) | **GET** /sales/stages/count |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_get**](docs/OpportunityStagesApi.md#sales_stages_get) | **GET** /sales/stages |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_id_delete**](docs/OpportunityStagesApi.md#sales_stages_id_delete) | **DELETE** /sales/stages/{id} |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_id_get**](docs/OpportunityStagesApi.md#sales_stages_id_get) | **GET** /sales/stages/{id} |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_id_patch**](docs/OpportunityStagesApi.md#sales_stages_id_patch) | **PATCH** /sales/stages/{id} |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_id_put**](docs/OpportunityStagesApi.md#sales_stages_id_put) | **PUT** /sales/stages/{id} |
*ConnectWise::OpportunityStagesApi* | [**sales_stages_post**](docs/OpportunityStagesApi.md#sales_stages_post) | **POST** /sales/stages |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_count_get**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_count_get) | **GET** /sales/opportunities/statuses/count |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_get**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_get) | **GET** /sales/opportunities/statuses |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_delete**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_delete) | **DELETE** /sales/opportunities/statuses/{id} |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_get**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_get) | **GET** /sales/opportunities/statuses/{id} |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_patch**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_patch) | **PATCH** /sales/opportunities/statuses/{id} |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_id_put**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_id_put) | **PUT** /sales/opportunities/statuses/{id} |
*ConnectWise::OpportunityStatusesApi* | [**sales_opportunities_statuses_post**](docs/OpportunityStatusesApi.md#sales_opportunities_statuses_post) | **POST** /sales/opportunities/statuses |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_count_get**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_count_get) | **GET** /sales/opportunities/{id}/team/count |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_get**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_get) | **GET** /sales/opportunities/{id}/team |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_post**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_post) | **POST** /sales/opportunities/{id}/team |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_delete**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_delete) | **DELETE** /sales/opportunities/{id}/team/{teamId} |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_get**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_get) | **GET** /sales/opportunities/{id}/team/{teamId} |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_patch**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_patch) | **PATCH** /sales/opportunities/{id}/team/{teamId} |
*ConnectWise::OpportunityTeamsApi* | [**sales_opportunities_id_team_team_id_put**](docs/OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_put) | **PUT** /sales/opportunities/{id}/team/{teamId} |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_count_get**](docs/OpportunityTypesApi.md#sales_opportunities_types_count_get) | **GET** /sales/opportunities/types/count |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_get**](docs/OpportunityTypesApi.md#sales_opportunities_types_get) | **GET** /sales/opportunities/types |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_id_delete**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_delete) | **DELETE** /sales/opportunities/types/{id} |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_id_get**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_get) | **GET** /sales/opportunities/types/{id} |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_id_patch**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_patch) | **PATCH** /sales/opportunities/types/{id} |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_id_put**](docs/OpportunityTypesApi.md#sales_opportunities_types_id_put) | **PUT** /sales/opportunities/types/{id} |
*ConnectWise::OpportunityTypesApi* | [**sales_opportunities_types_post**](docs/OpportunityTypesApi.md#sales_opportunities_types_post) | **POST** /sales/opportunities/types |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_count_get**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_count_get) | **GET** /sales/orders/statuses/{id}/notifications/count |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_get**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_get) | **GET** /sales/orders/statuses/{id}/notifications |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_notification_id_delete**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_delete) | **DELETE** /sales/orders/statuses/{id}/notifications/{notificationId} |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_notification_id_get**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_get) | **GET** /sales/orders/statuses/{id}/notifications/{notificationId} |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_notification_id_patch**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_patch) | **PATCH** /sales/orders/statuses/{id}/notifications/{notificationId} |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_notification_id_put**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_put) | **PUT** /sales/orders/statuses/{id}/notifications/{notificationId} |
*ConnectWise::OrderStatusNotificationsApi* | [**sales_orders_statuses_id_notifications_post**](docs/OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_post) | **POST** /sales/orders/statuses/{id}/notifications |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_count_get**](docs/OrderStatusesApi.md#sales_orders_statuses_count_get) | **GET** /sales/orders/statuses/count |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_get**](docs/OrderStatusesApi.md#sales_orders_statuses_get) | **GET** /sales/orders/statuses |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_id_delete**](docs/OrderStatusesApi.md#sales_orders_statuses_id_delete) | **DELETE** /sales/orders/statuses/{id} |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_id_get**](docs/OrderStatusesApi.md#sales_orders_statuses_id_get) | **GET** /sales/orders/statuses/{id} |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_id_patch**](docs/OrderStatusesApi.md#sales_orders_statuses_id_patch) | **PATCH** /sales/orders/statuses/{id} |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_id_put**](docs/OrderStatusesApi.md#sales_orders_statuses_id_put) | **PUT** /sales/orders/statuses/{id} |
*ConnectWise::OrderStatusesApi* | [**sales_orders_statuses_post**](docs/OrderStatusesApi.md#sales_orders_statuses_post) | **POST** /sales/orders/statuses |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_count_get**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_count_get) | **GET** /sales/orders/statuses/{id}/emailtemplates/count |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_email_template_id_delete**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_delete) | **DELETE** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_email_template_id_get**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_get) | **GET** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_email_template_id_patch**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_patch) | **PATCH** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_email_template_id_put**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_put) | **PUT** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_get**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_get) | **GET** /sales/orders/statuses/{id}/emailtemplates |
*ConnectWise::OrderStatusesEmailTemplateApi* | [**sales_orders_statuses_id_emailtemplates_post**](docs/OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_post) | **POST** /sales/orders/statuses/{id}/emailtemplates |
*ConnectWise::OrdersApi* | [**sales_orders_count_get**](docs/OrdersApi.md#sales_orders_count_get) | **GET** /sales/orders/count |
*ConnectWise::OrdersApi* | [**sales_orders_get**](docs/OrdersApi.md#sales_orders_get) | **GET** /sales/orders |
*ConnectWise::OrdersApi* | [**sales_orders_id_delete**](docs/OrdersApi.md#sales_orders_id_delete) | **DELETE** /sales/orders/{id} |
*ConnectWise::OrdersApi* | [**sales_orders_id_get**](docs/OrdersApi.md#sales_orders_id_get) | **GET** /sales/orders/{id} |
*ConnectWise::OrdersApi* | [**sales_orders_id_patch**](docs/OrdersApi.md#sales_orders_id_patch) | **PATCH** /sales/orders/{id} |
*ConnectWise::OrdersApi* | [**sales_orders_id_put**](docs/OrdersApi.md#sales_orders_id_put) | **PUT** /sales/orders/{id} |
*ConnectWise::OrdersApi* | [**sales_orders_post**](docs/OrdersApi.md#sales_orders_post) | **POST** /sales/orders |
*ConnectWise::OthersApi* | [**system_my_company_other_count_get**](docs/OthersApi.md#system_my_company_other_count_get) | **GET** /system/myCompany/other/count |
*ConnectWise::OthersApi* | [**system_my_company_other_get**](docs/OthersApi.md#system_my_company_other_get) | **GET** /system/myCompany/other |
*ConnectWise::OthersApi* | [**system_my_company_other_id_get**](docs/OthersApi.md#system_my_company_other_id_get) | **GET** /system/myCompany/other/{id} |
*ConnectWise::OthersApi* | [**system_my_company_other_id_patch**](docs/OthersApi.md#system_my_company_other_id_patch) | **PATCH** /system/myCompany/other/{id} |
*ConnectWise::OthersApi* | [**system_my_company_other_id_put**](docs/OthersApi.md#system_my_company_other_id_put) | **PUT** /system/myCompany/other/{id} |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_count_get**](docs/OwnershipTypesApi.md#company_ownership_types_count_get) | **GET** /company/ownershipTypes/count |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_get**](docs/OwnershipTypesApi.md#company_ownership_types_get) | **GET** /company/ownershipTypes |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_id_delete**](docs/OwnershipTypesApi.md#company_ownership_types_id_delete) | **DELETE** /company/ownershipTypes/{id} |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_id_get**](docs/OwnershipTypesApi.md#company_ownership_types_id_get) | **GET** /company/ownershipTypes/{id} |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_id_patch**](docs/OwnershipTypesApi.md#company_ownership_types_id_patch) | **PATCH** /company/ownershipTypes/{id} |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_id_put**](docs/OwnershipTypesApi.md#company_ownership_types_id_put) | **PUT** /company/ownershipTypes/{id} |
*ConnectWise::OwnershipTypesApi* | [**company_ownership_types_post**](docs/OwnershipTypesApi.md#company_ownership_types_post) | **POST** /company/ownershipTypes |
*ConnectWise::ParsingTypesApi* | [**system_parsing_types_count_get**](docs/ParsingTypesApi.md#system_parsing_types_count_get) | **GET** /system/parsingTypes/count |
*ConnectWise::ParsingTypesApi* | [**system_parsing_types_get**](docs/ParsingTypesApi.md#system_parsing_types_get) | **GET** /system/parsingTypes |
*ConnectWise::ParsingTypesApi* | [**system_parsing_types_id_get**](docs/ParsingTypesApi.md#system_parsing_types_id_get) | **GET** /system/parsingTypes/{id} |
*ConnectWise::ParsingVariablesApi* | [**system_parsing_variables_count_get**](docs/ParsingVariablesApi.md#system_parsing_variables_count_get) | **GET** /system/parsingVariables/count |
*ConnectWise::ParsingVariablesApi* | [**system_parsing_variables_get**](docs/ParsingVariablesApi.md#system_parsing_variables_get) | **GET** /system/parsingVariables |
*ConnectWise::ParsingVariablesApi* | [**system_parsing_variables_id_get**](docs/ParsingVariablesApi.md#system_parsing_variables_id_get) | **GET** /system/parsingVariables/{id} |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_count_get**](docs/PaymentTypesApi.md#expense_payment_types_count_get) | **GET** /expense/paymentTypes/count |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_get**](docs/PaymentTypesApi.md#expense_payment_types_get) | **GET** /expense/paymentTypes |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_id_delete**](docs/PaymentTypesApi.md#expense_payment_types_id_delete) | **DELETE** /expense/paymentTypes/{id} |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_id_get**](docs/PaymentTypesApi.md#expense_payment_types_id_get) | **GET** /expense/paymentTypes/{id} |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_id_patch**](docs/PaymentTypesApi.md#expense_payment_types_id_patch) | **PATCH** /expense/paymentTypes/{id} |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_id_put**](docs/PaymentTypesApi.md#expense_payment_types_id_put) | **PUT** /expense/paymentTypes/{id} |
*ConnectWise::PaymentTypesApi* | [**expense_payment_types_post**](docs/PaymentTypesApi.md#expense_payment_types_post) | **POST** /expense/paymentTypes |
*ConnectWise::PortalCalendarsApi* | [**system_mycompany_portalcalendars_count_get**](docs/PortalCalendarsApi.md#system_mycompany_portalcalendars_count_get) | **GET** /system/mycompany/portalcalendars/count |
*ConnectWise::PortalCalendarsApi* | [**system_mycompany_portalcalendars_get**](docs/PortalCalendarsApi.md#system_mycompany_portalcalendars_get) | **GET** /system/mycompany/portalcalendars |
*ConnectWise::PortalCalendarsApi* | [**system_mycompany_portalcalendars_id_get**](docs/PortalCalendarsApi.md#system_mycompany_portalcalendars_id_get) | **GET** /system/mycompany/portalcalendars/{id} |
*ConnectWise::PortalCalendarsApi* | [**system_mycompany_portalcalendars_id_patch**](docs/PortalCalendarsApi.md#system_mycompany_portalcalendars_id_patch) | **PATCH** /system/mycompany/portalcalendars/{id} |
*ConnectWise::PortalCalendarsApi* | [**system_mycompany_portalcalendars_id_put**](docs/PortalCalendarsApi.md#system_mycompany_portalcalendars_id_put) | **PUT** /system/mycompany/portalcalendars/{id} |
*ConnectWise::PortalConfigurationInvoiceSetupsApi* | [**system_portal_configurations_id_invoice_setups_count_get**](docs/PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_count_get) | **GET** /system/portalConfigurations/{id}/invoiceSetups/count |
*ConnectWise::PortalConfigurationInvoiceSetupsApi* | [**system_portal_configurations_id_invoice_setups_get**](docs/PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_get) | **GET** /system/portalConfigurations/{id}/invoiceSetups |
*ConnectWise::PortalConfigurationInvoiceSetupsApi* | [**system_portal_configurations_id_invoice_setups_invoice_setup_id_get**](docs/PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_get) | **GET** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId} |
*ConnectWise::PortalConfigurationInvoiceSetupsApi* | [**system_portal_configurations_id_invoice_setups_invoice_setup_id_patch**](docs/PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_patch) | **PATCH** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId} |
*ConnectWise::PortalConfigurationInvoiceSetupsApi* | [**system_portal_configurations_id_invoice_setups_invoice_setup_id_put**](docs/PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_put) | **PUT** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId} |
*ConnectWise::PortalConfigurationInvoiceSetupsApi* | [**system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post**](docs/PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post) | **POST** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId}/testTransaction |
*ConnectWise::PortalConfigurationOpportunitySetupsApi* | [**system_portal_configurations_id_opportunity_setups_get**](docs/PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_get) | **GET** /system/portalConfigurations/{id}/opportunitySetups |
*ConnectWise::PortalConfigurationOpportunitySetupsApi* | [**system_portal_configurations_id_opportunity_setups_patch**](docs/PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_patch) | **PATCH** /system/portalConfigurations/{id}/opportunitySetups |
*ConnectWise::PortalConfigurationOpportunitySetupsApi* | [**system_portal_configurations_id_opportunity_setups_portal_configuration_id_get**](docs/PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_portal_configuration_id_get) | **GET** /system/portalConfigurations/{id}/opportunitySetups/{portalConfigurationId} |
*ConnectWise::PortalConfigurationOpportunitySetupsApi* | [**system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch**](docs/PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch) | **PATCH** /system/portalConfigurations/{id}/opportunitySetups/{portalConfigurationId} |
*ConnectWise::PortalConfigurationOpportunitySetupsApi* | [**system_portal_configurations_id_opportunity_setups_put**](docs/PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_put) | **PUT** /system/portalConfigurations/{id}/opportunitySetups |
*ConnectWise::PortalConfigurationPasswordEmailSetupsApi* | [**system_portal_configurations_id_password_email_setups_get**](docs/PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_get) | **GET** /system/portalConfigurations/{id}/passwordEmailSetups |
*ConnectWise::PortalConfigurationPasswordEmailSetupsApi* | [**system_portal_configurations_id_password_email_setups_password_email_setup_id_get**](docs/PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_password_email_setup_id_get) | **GET** /system/portalConfigurations/{id}/passwordEmailSetups/{passwordEmailSetupId} |
*ConnectWise::PortalConfigurationPasswordEmailSetupsApi* | [**system_portal_configurations_id_password_email_setups_password_email_setup_id_patch**](docs/PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_password_email_setup_id_patch) | **PATCH** /system/portalConfigurations/{id}/passwordEmailSetups/{passwordEmailSetupId} |
*ConnectWise::PortalConfigurationPasswordEmailSetupsApi* | [**system_portal_configurations_id_password_email_setups_password_email_setup_id_put**](docs/PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_password_email_setup_id_put) | **PUT** /system/portalConfigurations/{id}/passwordEmailSetups/{passwordEmailSetupId} |
*ConnectWise::PortalConfigurationProjectSetupsApi* | [**system_portal_configurations_id_project_setups_count_get**](docs/PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_count_get) | **GET** /system/portalConfigurations/{id}/projectSetups/count |
*ConnectWise::PortalConfigurationProjectSetupsApi* | [**system_portal_configurations_id_project_setups_get**](docs/PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_get) | **GET** /system/portalConfigurations/{id}/projectSetups |
*ConnectWise::PortalConfigurationProjectSetupsApi* | [**system_portal_configurations_id_project_setups_portal_configuration_id_get**](docs/PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_portal_configuration_id_get) | **GET** /system/portalConfigurations/{id}/projectSetups/{portalConfigurationId} |
*ConnectWise::PortalConfigurationProjectSetupsApi* | [**system_portal_configurations_id_project_setups_portal_configuration_id_patch**](docs/PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_portal_configuration_id_patch) | **PATCH** /system/portalConfigurations/{id}/projectSetups/{portalConfigurationId} |
*ConnectWise::PortalConfigurationProjectSetupsApi* | [**system_portal_configurations_id_project_setups_portal_configuration_id_put**](docs/PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_portal_configuration_id_put) | **PUT** /system/portalConfigurations/{id}/projectSetups/{portalConfigurationId} |
*ConnectWise::PortalConfigurationServiceSetupsApi* | [**system_portal_configurations_id_service_setups_count_get**](docs/PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_count_get) | **GET** /system/portalConfigurations/{id}/serviceSetups/count |
*ConnectWise::PortalConfigurationServiceSetupsApi* | [**system_portal_configurations_id_service_setups_get**](docs/PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_get) | **GET** /system/portalConfigurations/{id}/serviceSetups |
*ConnectWise::PortalConfigurationServiceSetupsApi* | [**system_portal_configurations_id_service_setups_service_setup_id_get**](docs/PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_service_setup_id_get) | **GET** /system/portalConfigurations/{id}/serviceSetups/{serviceSetupId} |
*ConnectWise::PortalConfigurationServiceSetupsApi* | [**system_portal_configurations_id_service_setups_service_setup_id_patch**](docs/PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_service_setup_id_patch) | **PATCH** /system/portalConfigurations/{id}/serviceSetups/{serviceSetupId} |
*ConnectWise::PortalConfigurationServiceSetupsApi* | [**system_portal_configurations_id_service_setups_service_setup_id_put**](docs/PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_service_setup_id_put) | **PUT** /system/portalConfigurations/{id}/serviceSetups/{serviceSetupId} |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_count_get**](docs/PortalConfigurationsApi.md#system_portal_configurations_count_get) | **GET** /system/portalConfigurations/count |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_get**](docs/PortalConfigurationsApi.md#system_portal_configurations_get) | **GET** /system/portalConfigurations |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_id_delete**](docs/PortalConfigurationsApi.md#system_portal_configurations_id_delete) | **DELETE** /system/portalConfigurations/{id} |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_id_get**](docs/PortalConfigurationsApi.md#system_portal_configurations_id_get) | **GET** /system/portalConfigurations/{id} |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_id_patch**](docs/PortalConfigurationsApi.md#system_portal_configurations_id_patch) | **PATCH** /system/portalConfigurations/{id} |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_id_portal_image_get**](docs/PortalConfigurationsApi.md#system_portal_configurations_id_portal_image_get) | **GET** /system/portalConfigurations/{id}/portalImage |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_id_put**](docs/PortalConfigurationsApi.md#system_portal_configurations_id_put) | **PUT** /system/portalConfigurations/{id} |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_id_report_image_get**](docs/PortalConfigurationsApi.md#system_portal_configurations_id_report_image_get) | **GET** /system/portalConfigurations/{id}/reportImage |
*ConnectWise::PortalConfigurationsApi* | [**system_portal_configurations_post**](docs/PortalConfigurationsApi.md#system_portal_configurations_post) | **POST** /system/portalConfigurations |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_count_get**](docs/PortalReportsApi.md#system_portal_reports_count_get) | **GET** /system/portalReports/count |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_get**](docs/PortalReportsApi.md#system_portal_reports_get) | **GET** /system/portalReports |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_id_delete**](docs/PortalReportsApi.md#system_portal_reports_id_delete) | **DELETE** /system/portalReports/{id} |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_id_get**](docs/PortalReportsApi.md#system_portal_reports_id_get) | **GET** /system/portalReports/{id} |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_id_patch**](docs/PortalReportsApi.md#system_portal_reports_id_patch) | **PATCH** /system/portalReports/{id} |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_id_put**](docs/PortalReportsApi.md#system_portal_reports_id_put) | **PUT** /system/portalReports/{id} |
*ConnectWise::PortalReportsApi* | [**system_portal_reports_post**](docs/PortalReportsApi.md#system_portal_reports_post) | **POST** /system/portalReports |
*ConnectWise::PortalSecuritiesApi* | [**system_portal_securities_count_get**](docs/PortalSecuritiesApi.md#system_portal_securities_count_get) | **GET** /system/portalSecurities/count |
*ConnectWise::PortalSecuritiesApi* | [**system_portal_securities_get**](docs/PortalSecuritiesApi.md#system_portal_securities_get) | **GET** /system/portalSecurities |
*ConnectWise::PortalSecuritiesApi* | [**system_portal_securities_id_get**](docs/PortalSecuritiesApi.md#system_portal_securities_id_get) | **GET** /system/portalSecurities/{id} |
*ConnectWise::PortalSecuritiesApi* | [**system_portal_securities_id_patch**](docs/PortalSecuritiesApi.md#system_portal_securities_id_patch) | **PATCH** /system/portalSecurities/{id} |
*ConnectWise::PortalSecuritiesApi* | [**system_portal_securities_id_put**](docs/PortalSecuritiesApi.md#system_portal_securities_id_put) | **PUT** /system/portalSecurities/{id} |
*ConnectWise::PortalSecurityLevelsApi* | [**system_portal_security_levels_count_get**](docs/PortalSecurityLevelsApi.md#system_portal_security_levels_count_get) | **GET** /system/portalSecurityLevels/count |
*ConnectWise::PortalSecurityLevelsApi* | [**system_portal_security_levels_get**](docs/PortalSecurityLevelsApi.md#system_portal_security_levels_get) | **GET** /system/portalSecurityLevels |
*ConnectWise::PortalSecurityLevelsApi* | [**system_portal_security_levels_id_get**](docs/PortalSecurityLevelsApi.md#system_portal_security_levels_id_get) | **GET** /system/portalSecurityLevels/{id} |
*ConnectWise::PortalSecurityLevelsApi* | [**system_portal_security_levels_id_patch**](docs/PortalSecurityLevelsApi.md#system_portal_security_levels_id_patch) | **PATCH** /system/portalSecurityLevels/{id} |
*ConnectWise::PortalSecurityLevelsApi* | [**system_portal_security_levels_id_put**](docs/PortalSecurityLevelsApi.md#system_portal_security_levels_id_put) | **PUT** /system/portalSecurityLevels/{id} |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_delete) | **DELETE** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_patch) | **PATCH** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_break_id_put) | **PUT** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/{breakId} |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_count_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks/count |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_get**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_get) | **GET** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks |
*ConnectWise::PricingBreaksApi* | [**procurement_pricingschedules_sched_id_details_detail_id_breaks_post**](docs/PricingBreaksApi.md#procurement_pricingschedules_sched_id_details_detail_id_breaks_post) | **POST** /procurement/pricingschedules/{schedId}/details/{detailId}/breaks |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_count_get**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_count_get) | **GET** /procurement/pricingschedules/{id}/details/count |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_delete**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_delete) | **DELETE** /procurement/pricingschedules/{id}/details/{detailID} |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_get**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_get) | **GET** /procurement/pricingschedules/{id}/details/{detailID} |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_patch**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_patch) | **PATCH** /procurement/pricingschedules/{id}/details/{detailID} |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_detail_id_put**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_detail_id_put) | **PUT** /procurement/pricingschedules/{id}/details/{detailID} |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_get**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_get) | **GET** /procurement/pricingschedules/{id}/details |
*ConnectWise::PricingDetailsApi* | [**procurement_pricingschedules_id_details_post**](docs/PricingDetailsApi.md#procurement_pricingschedules_id_details_post) | **POST** /procurement/pricingschedules/{id}/details |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_count_get**](docs/PricingSchedulesApi.md#procurement_pricingschedules_count_get) | **GET** /procurement/pricingschedules/count |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_get**](docs/PricingSchedulesApi.md#procurement_pricingschedules_get) | **GET** /procurement/pricingschedules |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_id_delete**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_delete) | **DELETE** /procurement/pricingschedules/{id} |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_id_get**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_get) | **GET** /procurement/pricingschedules/{id} |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_id_patch**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_patch) | **PATCH** /procurement/pricingschedules/{id} |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_id_put**](docs/PricingSchedulesApi.md#procurement_pricingschedules_id_put) | **PUT** /procurement/pricingschedules/{id} |
*ConnectWise::PricingSchedulesApi* | [**procurement_pricingschedules_post**](docs/PricingSchedulesApi.md#procurement_pricingschedules_post) | **POST** /procurement/pricingschedules |
*ConnectWise::PrioritiesApi* | [**service_priorities_count_get**](docs/PrioritiesApi.md#service_priorities_count_get) | **GET** /service/priorities/count |
*ConnectWise::PrioritiesApi* | [**service_priorities_get**](docs/PrioritiesApi.md#service_priorities_get) | **GET** /service/priorities |
*ConnectWise::PrioritiesApi* | [**service_priorities_id_delete**](docs/PrioritiesApi.md#service_priorities_id_delete) | **DELETE** /service/priorities/{id} |
*ConnectWise::PrioritiesApi* | [**service_priorities_id_get**](docs/PrioritiesApi.md#service_priorities_id_get) | **GET** /service/priorities/{id} |
*ConnectWise::PrioritiesApi* | [**service_priorities_id_image_get**](docs/PrioritiesApi.md#service_priorities_id_image_get) | **GET** /service/priorities/{id}/image |
*ConnectWise::PrioritiesApi* | [**service_priorities_id_patch**](docs/PrioritiesApi.md#service_priorities_id_patch) | **PATCH** /service/priorities/{id} |
*ConnectWise::PrioritiesApi* | [**service_priorities_id_put**](docs/PrioritiesApi.md#service_priorities_id_put) | **PUT** /service/priorities/{id} |
*ConnectWise::PrioritiesApi* | [**service_priorities_post**](docs/PrioritiesApi.md#service_priorities_post) | **POST** /service/priorities |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_component_id_delete**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_delete) | **DELETE** /procurement/products/{id}/components/{componentId} |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_component_id_get**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_get) | **GET** /procurement/products/{id}/components/{componentId} |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_component_id_patch**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_patch) | **PATCH** /procurement/products/{id}/components/{componentId} |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_component_id_put**](docs/ProductComponentsApi.md#procurement_products_id_components_component_id_put) | **PUT** /procurement/products/{id}/components/{componentId} |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_count_get**](docs/ProductComponentsApi.md#procurement_products_id_components_count_get) | **GET** /procurement/products/{id}/components/count |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_get**](docs/ProductComponentsApi.md#procurement_products_id_components_get) | **GET** /procurement/products/{id}/components |
*ConnectWise::ProductComponentsApi* | [**procurement_products_id_components_post**](docs/ProductComponentsApi.md#procurement_products_id_components_post) | **POST** /procurement/products/{id}/components |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_count_get**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_count_get) | **GET** /procurement/products/{id}/pickingShippingDetails/count |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_get**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_get) | **GET** /procurement/products/{id}/pickingShippingDetails |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_delete) | **DELETE** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_get) | **GET** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_patch) | **PATCH** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_picking_shipping_detail_id_put) | **PUT** /procurement/products/{id}/pickingShippingDetails/{pickingShippingDetailId} |
*ConnectWise::ProductPickingShippingDetailsApi* | [**procurement_products_id_picking_shipping_details_post**](docs/ProductPickingShippingDetailsApi.md#procurement_products_id_picking_shipping_details_post) | **POST** /procurement/products/{id}/pickingShippingDetails |
*ConnectWise::ProductTypesApi* | [**procurement_types_count_get**](docs/ProductTypesApi.md#procurement_types_count_get) | **GET** /procurement/types/count |
*ConnectWise::ProductTypesApi* | [**procurement_types_get**](docs/ProductTypesApi.md#procurement_types_get) | **GET** /procurement/types |
*ConnectWise::ProductTypesApi* | [**procurement_types_id_delete**](docs/ProductTypesApi.md#procurement_types_id_delete) | **DELETE** /procurement/types/{id} |
*ConnectWise::ProductTypesApi* | [**procurement_types_id_get**](docs/ProductTypesApi.md#procurement_types_id_get) | **GET** /procurement/types/{id} |
*ConnectWise::ProductTypesApi* | [**procurement_types_id_patch**](docs/ProductTypesApi.md#procurement_types_id_patch) | **PATCH** /procurement/types/{id} |
*ConnectWise::ProductTypesApi* | [**procurement_types_id_put**](docs/ProductTypesApi.md#procurement_types_id_put) | **PUT** /procurement/types/{id} |
*ConnectWise::ProductTypesApi* | [**procurement_types_post**](docs/ProductTypesApi.md#procurement_types_post) | **POST** /procurement/types |
*ConnectWise::ProductsItemApi* | [**procurement_products_count_get**](docs/ProductsItemApi.md#procurement_products_count_get) | **GET** /procurement/products/count |
*ConnectWise::ProductsItemApi* | [**procurement_products_get**](docs/ProductsItemApi.md#procurement_products_get) | **GET** /procurement/products |
*ConnectWise::ProductsItemApi* | [**procurement_products_id_delete**](docs/ProductsItemApi.md#procurement_products_id_delete) | **DELETE** /procurement/products/{id} |
*ConnectWise::ProductsItemApi* | [**procurement_products_id_get**](docs/ProductsItemApi.md#procurement_products_id_get) | **GET** /procurement/products/{id} |
*ConnectWise::ProductsItemApi* | [**procurement_products_id_patch**](docs/ProductsItemApi.md#procurement_products_id_patch) | **PATCH** /procurement/products/{id} |
*ConnectWise::ProductsItemApi* | [**procurement_products_id_put**](docs/ProductsItemApi.md#procurement_products_id_put) | **PUT** /procurement/products/{id} |
*ConnectWise::ProductsItemApi* | [**procurement_products_post**](docs/ProductsItemApi.md#procurement_products_post) | **POST** /procurement/products |
*ConnectWise::ProjectContactsApi* | [**project_projects_id_contacts_contact_id_delete**](docs/ProjectContactsApi.md#project_projects_id_contacts_contact_id_delete) | **DELETE** /project/projects/{id}/contacts/{contactId} |
*ConnectWise::ProjectContactsApi* | [**project_projects_id_contacts_contact_id_get**](docs/ProjectContactsApi.md#project_projects_id_contacts_contact_id_get) | **GET** /project/projects/{id}/contacts/{contactId} |
*ConnectWise::ProjectContactsApi* | [**project_projects_id_contacts_get**](docs/ProjectContactsApi.md#project_projects_id_contacts_get) | **GET** /project/projects/{id}/contacts |
*ConnectWise::ProjectContactsApi* | [**project_projects_id_contacts_post**](docs/ProjectContactsApi.md#project_projects_id_contacts_post) | **POST** /project/projects/{id}/contacts |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_count_get**](docs/ProjectNotesApi.md#project_projects_id_notes_count_get) | **GET** /project/projects/{id}/notes/count |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_get**](docs/ProjectNotesApi.md#project_projects_id_notes_get) | **GET** /project/projects/{id}/notes |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_note_id_delete**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_delete) | **DELETE** /project/projects/{id}/notes/{noteId} |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_note_id_get**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_get) | **GET** /project/projects/{id}/notes/{noteId} |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_note_id_patch**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_patch) | **PATCH** /project/projects/{id}/notes/{noteId} |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_note_id_put**](docs/ProjectNotesApi.md#project_projects_id_notes_note_id_put) | **PUT** /project/projects/{id}/notes/{noteId} |
*ConnectWise::ProjectNotesApi* | [**project_projects_id_notes_post**](docs/ProjectNotesApi.md#project_projects_id_notes_post) | **POST** /project/projects/{id}/notes |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_count_get**](docs/ProjectPhasesApi.md#project_projects_id_phases_count_get) | **GET** /project/projects/{id}/phases/count |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_get**](docs/ProjectPhasesApi.md#project_projects_id_phases_get) | **GET** /project/projects/{id}/phases |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_delete**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_delete) | **DELETE** /project/projects/{id}/phases/{phaseId} |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_get**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_get) | **GET** /project/projects/{id}/phases/{phaseId} |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_patch**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_patch) | **PATCH** /project/projects/{id}/phases/{phaseId} |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_phase_id_put**](docs/ProjectPhasesApi.md#project_projects_id_phases_phase_id_put) | **PUT** /project/projects/{id}/phases/{phaseId} |
*ConnectWise::ProjectPhasesApi* | [**project_projects_id_phases_post**](docs/ProjectPhasesApi.md#project_projects_id_phases_post) | **POST** /project/projects/{id}/phases |
*ConnectWise::ProjectSecurityRoleSettingsApi* | [**system_project_security_roles_id_settings_count_get**](docs/ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_count_get) | **GET** /system/projectSecurityRoles/{id}/settings/count |
*ConnectWise::ProjectSecurityRoleSettingsApi* | [**system_project_security_roles_id_settings_get**](docs/ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_get) | **GET** /system/projectSecurityRoles/{id}/settings |
*ConnectWise::ProjectSecurityRoleSettingsApi* | [**system_project_security_roles_id_settings_setting_id_get**](docs/ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_setting_id_get) | **GET** /system/projectSecurityRoles/{id}/settings/{settingId} |
*ConnectWise::ProjectSecurityRoleSettingsApi* | [**system_project_security_roles_id_settings_setting_id_patch**](docs/ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_setting_id_patch) | **PATCH** /system/projectSecurityRoles/{id}/settings/{settingId} |
*ConnectWise::ProjectSecurityRoleSettingsApi* | [**system_project_security_roles_id_settings_setting_id_put**](docs/ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_setting_id_put) | **PUT** /system/projectSecurityRoles/{id}/settings/{settingId} |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_count_get**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_count_get) | **GET** /system/projectSecurityRoles/count |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_get**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_get) | **GET** /system/projectSecurityRoles |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_id_delete**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_id_delete) | **DELETE** /system/projectSecurityRoles/{id} |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_id_get**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_id_get) | **GET** /system/projectSecurityRoles/{id} |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_id_patch**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_id_patch) | **PATCH** /system/projectSecurityRoles/{id} |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_id_put**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_id_put) | **PUT** /system/projectSecurityRoles/{id} |
*ConnectWise::ProjectSecurityRolesApi* | [**system_project_security_roles_post**](docs/ProjectSecurityRolesApi.md#system_project_security_roles_post) | **POST** /system/projectSecurityRoles |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_count_get**](docs/ProjectStatusesApi.md#project_statuses_count_get) | **GET** /project/statuses/count |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_get**](docs/ProjectStatusesApi.md#project_statuses_get) | **GET** /project/statuses |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_id_delete**](docs/ProjectStatusesApi.md#project_statuses_id_delete) | **DELETE** /project/statuses/{id} |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_id_get**](docs/ProjectStatusesApi.md#project_statuses_id_get) | **GET** /project/statuses/{id} |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_id_patch**](docs/ProjectStatusesApi.md#project_statuses_id_patch) | **PATCH** /project/statuses/{id} |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_id_put**](docs/ProjectStatusesApi.md#project_statuses_id_put) | **PUT** /project/statuses/{id} |
*ConnectWise::ProjectStatusesApi* | [**project_statuses_post**](docs/ProjectStatusesApi.md#project_statuses_post) | **POST** /project/statuses |
*ConnectWise::ProjectTypesApi* | [**system_project_types_count_get**](docs/ProjectTypesApi.md#system_project_types_count_get) | **GET** /system/projectTypes/count |
*ConnectWise::ProjectTypesApi* | [**system_project_types_get**](docs/ProjectTypesApi.md#system_project_types_get) | **GET** /system/projectTypes |
*ConnectWise::ProjectTypesApi* | [**system_project_types_id_get**](docs/ProjectTypesApi.md#system_project_types_id_get) | **GET** /system/projectTypes/{id} |
*ConnectWise::ProjectsApi* | [**project_projects_count_get**](docs/ProjectsApi.md#project_projects_count_get) | **GET** /project/projects/count |
*ConnectWise::ProjectsApi* | [**project_projects_get**](docs/ProjectsApi.md#project_projects_get) | **GET** /project/projects |
*ConnectWise::ProjectsApi* | [**project_projects_id_delete**](docs/ProjectsApi.md#project_projects_id_delete) | **DELETE** /project/projects/{id} |
*ConnectWise::ProjectsApi* | [**project_projects_id_get**](docs/ProjectsApi.md#project_projects_id_get) | **GET** /project/projects/{id} |
*ConnectWise::ProjectsApi* | [**project_projects_id_patch**](docs/ProjectsApi.md#project_projects_id_patch) | **PATCH** /project/projects/{id} |
*ConnectWise::ProjectsApi* | [**project_projects_id_put**](docs/ProjectsApi.md#project_projects_id_put) | **PUT** /project/projects/{id} |
*ConnectWise::ProjectsApi* | [**project_projects_post**](docs/ProjectsApi.md#project_projects_post) | **POST** /project/projects |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_count_get**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_count_get) | **GET** /project/projects/{id}/teamMembers/count |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_get**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_get) | **GET** /project/projects/{id}/teamMembers |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_post**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_post) | **POST** /project/projects/{id}/teamMembers |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_team_member_id_delete**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_team_member_id_delete) | **DELETE** /project/projects/{id}/teamMembers/{teamMemberId} |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_team_member_id_get**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_team_member_id_get) | **GET** /project/projects/{id}/teamMembers/{teamMemberId} |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_team_member_id_patch**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_team_member_id_patch) | **PATCH** /project/projects/{id}/teamMembers/{teamMemberId} |
*ConnectWise::ProjectsTeammembersApi* | [**project_projects_id_team_members_team_member_id_put**](docs/ProjectsTeammembersApi.md#project_projects_id_team_members_team_member_id_put) | **PUT** /project/projects/{id}/teamMembers/{teamMemberId} |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_count_get**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_count_get) | **GET** /procurement/purchaseorders/{id}/lineitems/count |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_get**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_get) | **GET** /procurement/purchaseorders/{id}/lineitems |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_delete**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_delete) | **DELETE** /procurement/purchaseorders/{id}/lineitems/{lineItemId} |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_get**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_get) | **GET** /procurement/purchaseorders/{id}/lineitems/{lineItemId} |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_patch**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_patch) | **PATCH** /procurement/purchaseorders/{id}/lineitems/{lineItemId} |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_line_item_id_put**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_line_item_id_put) | **PUT** /procurement/purchaseorders/{id}/lineitems/{lineItemId} |
*ConnectWise::PurchaseOrderLineItemsApi* | [**procurement_purchaseorders_id_lineitems_post**](docs/PurchaseOrderLineItemsApi.md#procurement_purchaseorders_id_lineitems_post) | **POST** /procurement/purchaseorders/{id}/lineitems |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_count_get**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_count_get) | **GET** /procurement/purchaseorderstatuses/{id}/emailtemplates/count |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete) | **DELETE** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get) | **GET** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch) | **PATCH** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put) | **PUT** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_get**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_get) | **GET** /procurement/purchaseorderstatuses/{id}/emailtemplates |
*ConnectWise::PurchaseOrderStatusEmailTemplatesApi* | [**procurement_purchaseorderstatuses_id_emailtemplates_post**](docs/PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_post) | **POST** /procurement/purchaseorderstatuses/{id}/emailtemplates |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_count_get**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_count_get) | **GET** /procurement/purchaseorderstatuses/{id}/notifications/count |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_get**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_get) | **GET** /procurement/purchaseorderstatuses/{id}/notifications |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_notification_id_delete**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_delete) | **DELETE** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_notification_id_get**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_get) | **GET** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_notification_id_patch**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_patch) | **PATCH** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_notification_id_put**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_put) | **PUT** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} |
*ConnectWise::PurchaseOrderStatusNotificationsApi* | [**procurement_purchaseorderstatuses_id_notifications_post**](docs/PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_post) | **POST** /procurement/purchaseorderstatuses/{id}/notifications |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_count_get**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_count_get) | **GET** /procurement/purchaseorderstatuses/count |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_get**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_get) | **GET** /procurement/purchaseorderstatuses |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_id_delete**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_delete) | **DELETE** /procurement/purchaseorderstatuses/{id} |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_id_get**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_get) | **GET** /procurement/purchaseorderstatuses/{id} |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_id_patch**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_patch) | **PATCH** /procurement/purchaseorderstatuses/{id} |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_id_put**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_id_put) | **PUT** /procurement/purchaseorderstatuses/{id} |
*ConnectWise::PurchaseOrderStatusesApi* | [**procurement_purchaseorderstatuses_post**](docs/PurchaseOrderStatusesApi.md#procurement_purchaseorderstatuses_post) | **POST** /procurement/purchaseorderstatuses |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_count_get**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_count_get) | **GET** /procurement/purchaseorders/count |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_get**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_get) | **GET** /procurement/purchaseorders |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_delete**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_delete) | **DELETE** /procurement/purchaseorders/{id} |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_get**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_get) | **GET** /procurement/purchaseorders/{id} |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_patch**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_patch) | **PATCH** /procurement/purchaseorders/{id} |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_id_put**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_id_put) | **PUT** /procurement/purchaseorders/{id} |
*ConnectWise::PurchaseOrdersApi* | [**procurement_purchaseorders_post**](docs/PurchaseOrdersApi.md#procurement_purchaseorders_post) | **POST** /procurement/purchaseorders |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_count_get**](docs/RMAActionsApi.md#procurement_rma_actions_count_get) | **GET** /procurement/rmaActions/count |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_get**](docs/RMAActionsApi.md#procurement_rma_actions_get) | **GET** /procurement/rmaActions |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_id_delete**](docs/RMAActionsApi.md#procurement_rma_actions_id_delete) | **DELETE** /procurement/rmaActions/{id} |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_id_get**](docs/RMAActionsApi.md#procurement_rma_actions_id_get) | **GET** /procurement/rmaActions/{id} |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_id_patch**](docs/RMAActionsApi.md#procurement_rma_actions_id_patch) | **PATCH** /procurement/rmaActions/{id} |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_id_put**](docs/RMAActionsApi.md#procurement_rma_actions_id_put) | **PUT** /procurement/rmaActions/{id} |
*ConnectWise::RMAActionsApi* | [**procurement_rma_actions_post**](docs/RMAActionsApi.md#procurement_rma_actions_post) | **POST** /procurement/rmaActions |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_count_get**](docs/RMADispositionsApi.md#procurement_rma_dispositions_count_get) | **GET** /procurement/RMADispositions/count |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_get**](docs/RMADispositionsApi.md#procurement_rma_dispositions_get) | **GET** /procurement/RMADispositions |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_id_delete**](docs/RMADispositionsApi.md#procurement_rma_dispositions_id_delete) | **DELETE** /procurement/RMADispositions/{id} |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_id_get**](docs/RMADispositionsApi.md#procurement_rma_dispositions_id_get) | **GET** /procurement/RMADispositions/{id} |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_id_patch**](docs/RMADispositionsApi.md#procurement_rma_dispositions_id_patch) | **PATCH** /procurement/RMADispositions/{id} |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_id_put**](docs/RMADispositionsApi.md#procurement_rma_dispositions_id_put) | **PUT** /procurement/RMADispositions/{id} |
*ConnectWise::RMADispositionsApi* | [**procurement_rma_dispositions_post**](docs/RMADispositionsApi.md#procurement_rma_dispositions_post) | **POST** /procurement/RMADispositions |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_count_get**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_count_get) | **GET** /system/reportCards/{id}/details/count |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_detail_id_delete**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_delete) | **DELETE** /system/reportCards/{id}/details/{detailId} |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_detail_id_get**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_get) | **GET** /system/reportCards/{id}/details/{detailId} |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_detail_id_patch**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_patch) | **PATCH** /system/reportCards/{id}/details/{detailId} |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_detail_id_put**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_put) | **PUT** /system/reportCards/{id}/details/{detailId} |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_get**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_get) | **GET** /system/reportCards/{id}/details |
*ConnectWise::ReportCardDetailsApi* | [**system_report_cards_id_details_post**](docs/ReportCardDetailsApi.md#system_report_cards_id_details_post) | **POST** /system/reportCards/{id}/details |
*ConnectWise::ReportCardsApi* | [**system_report_cards_count_get**](docs/ReportCardsApi.md#system_report_cards_count_get) | **GET** /system/reportCards/count |
*ConnectWise::ReportCardsApi* | [**system_report_cards_get**](docs/ReportCardsApi.md#system_report_cards_get) | **GET** /system/reportCards |
*ConnectWise::ReportCardsApi* | [**system_report_cards_id_delete**](docs/ReportCardsApi.md#system_report_cards_id_delete) | **DELETE** /system/reportCards/{id} |
*ConnectWise::ReportCardsApi* | [**system_report_cards_id_get**](docs/ReportCardsApi.md#system_report_cards_id_get) | **GET** /system/reportCards/{id} |
*ConnectWise::ReportCardsApi* | [**system_report_cards_id_patch**](docs/ReportCardsApi.md#system_report_cards_id_patch) | **PATCH** /system/reportCards/{id} |
*ConnectWise::ReportCardsApi* | [**system_report_cards_id_put**](docs/ReportCardsApi.md#system_report_cards_id_put) | **PUT** /system/reportCards/{id} |
*ConnectWise::ReportCardsApi* | [**system_report_cards_post**](docs/ReportCardsApi.md#system_report_cards_post) | **POST** /system/reportCards |
*ConnectWise::ReportingServicesApi* | [**system_mycompany_reporting_services_get**](docs/ReportingServicesApi.md#system_mycompany_reporting_services_get) | **GET** /system/mycompany/reportingServices |
*ConnectWise::ReportingServicesApi* | [**system_mycompany_reporting_services_id_get**](docs/ReportingServicesApi.md#system_mycompany_reporting_services_id_get) | **GET** /system/mycompany/reportingServices/{id} |
*ConnectWise::ReportingServicesApi* | [**system_mycompany_reporting_services_id_patch**](docs/ReportingServicesApi.md#system_mycompany_reporting_services_id_patch) | **PATCH** /system/mycompany/reportingServices/{id} |
*ConnectWise::ReportingServicesApi* | [**system_mycompany_reporting_services_id_put**](docs/ReportingServicesApi.md#system_mycompany_reporting_services_id_put) | **PUT** /system/mycompany/reportingServices/{id} |
*ConnectWise::ReportingServicesApi* | [**system_mycompany_reporting_services_id_test_connection_post**](docs/ReportingServicesApi.md#system_mycompany_reporting_services_id_test_connection_post) | **POST** /system/mycompany/reportingServices/{id}/testConnection |
*ConnectWise::ReportsApi* | [**system_reports_get**](docs/ReportsApi.md#system_reports_get) | **GET** /system/reports |
*ConnectWise::ReportsApi* | [**system_reports_report_name_columns_get**](docs/ReportsApi.md#system_reports_report_name_columns_get) | **GET** /system/reports/{reportName}/columns |
*ConnectWise::ReportsApi* | [**system_reports_report_name_count_get**](docs/ReportsApi.md#system_reports_report_name_count_get) | **GET** /system/reports/{reportName}/count |
*ConnectWise::ReportsApi* | [**system_reports_report_name_get**](docs/ReportsApi.md#system_reports_report_name_get) | **GET** /system/reports/{reportName} |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_email_templates_get**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_email_templates_get) | **GET** /procurement/rmaStatuses/{id}/emailTemplates |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_emailtemplates_count_get**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_count_get) | **GET** /procurement/rmaStatuses/{id}/emailtemplates/count |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_emailtemplates_email_template_id_delete**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_delete) | **DELETE** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_emailtemplates_email_template_id_get**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_get) | **GET** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_emailtemplates_email_template_id_patch**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_patch) | **PATCH** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_emailtemplates_email_template_id_put**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_put) | **PUT** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} |
*ConnectWise::RmaStatusEmailTemplatesApi* | [**procurement_rma_statuses_id_emailtemplates_post**](docs/RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_post) | **POST** /procurement/rmaStatuses/{id}/emailtemplates |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_count_get**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_count_get) | **GET** /procurement/rmaStatuses/{id}/notifications/count |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_get**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_get) | **GET** /procurement/rmaStatuses/{id}/notifications |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_notification_id_delete**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_delete) | **DELETE** /procurement/rmaStatuses/{id}/notifications/{notificationId} |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_notification_id_get**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_get) | **GET** /procurement/rmaStatuses/{id}/notifications/{notificationId} |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_notification_id_patch**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_patch) | **PATCH** /procurement/rmaStatuses/{id}/notifications/{notificationId} |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_notification_id_put**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_put) | **PUT** /procurement/rmaStatuses/{id}/notifications/{notificationId} |
*ConnectWise::RmaStatusNotificationsApi* | [**procurement_rma_statuses_id_notifications_post**](docs/RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_post) | **POST** /procurement/rmaStatuses/{id}/notifications |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_count_get**](docs/RmaStatusesApi.md#procurement_rma_statuses_count_get) | **GET** /procurement/rmaStatuses/count |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_get**](docs/RmaStatusesApi.md#procurement_rma_statuses_get) | **GET** /procurement/rmaStatuses |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_id_delete**](docs/RmaStatusesApi.md#procurement_rma_statuses_id_delete) | **DELETE** /procurement/rmaStatuses/{id} |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_id_get**](docs/RmaStatusesApi.md#procurement_rma_statuses_id_get) | **GET** /procurement/rmaStatuses/{id} |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_id_patch**](docs/RmaStatusesApi.md#procurement_rma_statuses_id_patch) | **PATCH** /procurement/rmaStatuses/{id} |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_id_put**](docs/RmaStatusesApi.md#procurement_rma_statuses_id_put) | **PUT** /procurement/rmaStatuses/{id} |
*ConnectWise::RmaStatusesApi* | [**procurement_rma_statuses_post**](docs/RmaStatusesApi.md#procurement_rma_statuses_post) | **POST** /procurement/rmaStatuses |
*ConnectWise::RolesApi* | [**sales_roles_count_get**](docs/RolesApi.md#sales_roles_count_get) | **GET** /sales/roles/count |
*ConnectWise::RolesApi* | [**sales_roles_get**](docs/RolesApi.md#sales_roles_get) | **GET** /sales/roles |
*ConnectWise::RolesApi* | [**sales_roles_id_delete**](docs/RolesApi.md#sales_roles_id_delete) | **DELETE** /sales/roles/{id} |
*ConnectWise::RolesApi* | [**sales_roles_id_get**](docs/RolesApi.md#sales_roles_id_get) | **GET** /sales/roles/{id} |
*ConnectWise::RolesApi* | [**sales_roles_id_patch**](docs/RolesApi.md#sales_roles_id_patch) | **PATCH** /sales/roles/{id} |
*ConnectWise::RolesApi* | [**sales_roles_id_put**](docs/RolesApi.md#sales_roles_id_put) | **PUT** /sales/roles/{id} |
*ConnectWise::RolesApi* | [**sales_roles_post**](docs/RolesApi.md#sales_roles_post) | **POST** /sales/roles |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_count_get**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_count_get) | **GET** /service/SLAs/{id}/priorities/count |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_get**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_get) | **GET** /service/SLAs/{id}/priorities |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_post**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_post) | **POST** /service/SLAs/{id}/priorities |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_priority_id_delete**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_delete) | **DELETE** /service/SLAs/{id}/priorities/{priorityId} |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_priority_id_get**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_get) | **GET** /service/SLAs/{id}/priorities/{priorityId} |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_priority_id_patch**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_patch) | **PATCH** /service/SLAs/{id}/priorities/{priorityId} |
*ConnectWise::SLAPrioritiesApi* | [**service_sl_as_id_priorities_priority_id_put**](docs/SLAPrioritiesApi.md#service_sl_as_id_priorities_priority_id_put) | **PUT** /service/SLAs/{id}/priorities/{priorityId} |
*ConnectWise::SLAsApi* | [**service_sl_as_count_get**](docs/SLAsApi.md#service_sl_as_count_get) | **GET** /service/SLAs/count |
*ConnectWise::SLAsApi* | [**service_sl_as_get**](docs/SLAsApi.md#service_sl_as_get) | **GET** /service/SLAs |
*ConnectWise::SLAsApi* | [**service_sl_as_id_delete**](docs/SLAsApi.md#service_sl_as_id_delete) | **DELETE** /service/SLAs/{id} |
*ConnectWise::SLAsApi* | [**service_sl_as_id_get**](docs/SLAsApi.md#service_sl_as_id_get) | **GET** /service/SLAs/{id} |
*ConnectWise::SLAsApi* | [**service_sl_as_id_patch**](docs/SLAsApi.md#service_sl_as_id_patch) | **PATCH** /service/SLAs/{id} |
*ConnectWise::SLAsApi* | [**service_sl_as_id_put**](docs/SLAsApi.md#service_sl_as_id_put) | **PUT** /service/SLAs/{id} |
*ConnectWise::SLAsApi* | [**service_sl_as_post**](docs/SLAsApi.md#service_sl_as_post) | **POST** /service/SLAs |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_count_get**](docs/SalesProbabilitiesApi.md#sales_probabilities_count_get) | **GET** /sales/probabilities/count |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_get**](docs/SalesProbabilitiesApi.md#sales_probabilities_get) | **GET** /sales/probabilities |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_id_delete**](docs/SalesProbabilitiesApi.md#sales_probabilities_id_delete) | **DELETE** /sales/probabilities/{id} |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_id_get**](docs/SalesProbabilitiesApi.md#sales_probabilities_id_get) | **GET** /sales/probabilities/{id} |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_id_patch**](docs/SalesProbabilitiesApi.md#sales_probabilities_id_patch) | **PATCH** /sales/probabilities/{id} |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_id_put**](docs/SalesProbabilitiesApi.md#sales_probabilities_id_put) | **PUT** /sales/probabilities/{id} |
*ConnectWise::SalesProbabilitiesApi* | [**sales_probabilities_post**](docs/SalesProbabilitiesApi.md#sales_probabilities_post) | **POST** /sales/probabilities |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_count_get**](docs/SalesQuotasApi.md#sales_quotas_count_get) | **GET** /sales/quotas/count |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_get**](docs/SalesQuotasApi.md#sales_quotas_get) | **GET** /sales/quotas |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_id_delete**](docs/SalesQuotasApi.md#sales_quotas_id_delete) | **DELETE** /sales/quotas/{id} |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_id_get**](docs/SalesQuotasApi.md#sales_quotas_id_get) | **GET** /sales/quotas/{id} |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_id_patch**](docs/SalesQuotasApi.md#sales_quotas_id_patch) | **PATCH** /sales/quotas/{id} |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_id_put**](docs/SalesQuotasApi.md#sales_quotas_id_put) | **PUT** /sales/quotas/{id} |
*ConnectWise::SalesQuotasApi* | [**sales_quotas_post**](docs/SalesQuotasApi.md#sales_quotas_post) | **POST** /sales/quotas |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_count_get**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_count_get) | **GET** /system/salesTeams/{id}/members/count |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_get**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_get) | **GET** /system/salesTeams/{id}/members |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_post**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_post) | **POST** /system/salesTeams/{id}/members |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_sales_team_member_id_delete**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_delete) | **DELETE** /system/salesTeams/{id}/members/{salesTeamMemberId} |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_sales_team_member_id_get**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_get) | **GET** /system/salesTeams/{id}/members/{salesTeamMemberId} |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_sales_team_member_id_patch**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_patch) | **PATCH** /system/salesTeams/{id}/members/{salesTeamMemberId} |
*ConnectWise::SalesTeamMembersApi* | [**system_sales_teams_id_members_sales_team_member_id_put**](docs/SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_put) | **PUT** /system/salesTeams/{id}/members/{salesTeamMemberId} |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_count_get**](docs/SalesTeamsApi.md#system_sales_teams_count_get) | **GET** /system/salesTeams/count |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_get**](docs/SalesTeamsApi.md#system_sales_teams_get) | **GET** /system/salesTeams |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_id_delete**](docs/SalesTeamsApi.md#system_sales_teams_id_delete) | **DELETE** /system/salesTeams/{id} |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_id_get**](docs/SalesTeamsApi.md#system_sales_teams_id_get) | **GET** /system/salesTeams/{id} |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_id_patch**](docs/SalesTeamsApi.md#system_sales_teams_id_patch) | **PATCH** /system/salesTeams/{id} |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_id_put**](docs/SalesTeamsApi.md#system_sales_teams_id_put) | **PUT** /system/salesTeams/{id} |
*ConnectWise::SalesTeamsApi* | [**system_sales_teams_post**](docs/SalesTeamsApi.md#system_sales_teams_post) | **POST** /system/salesTeams |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_count_get**](docs/ScheduleColorsApi.md#schedule_colors_count_get) | **GET** /schedule/colors/count |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_get**](docs/ScheduleColorsApi.md#schedule_colors_get) | **GET** /schedule/colors |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_id_clear_post**](docs/ScheduleColorsApi.md#schedule_colors_id_clear_post) | **POST** /schedule/colors/{id}/clear |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_id_get**](docs/ScheduleColorsApi.md#schedule_colors_id_get) | **GET** /schedule/colors/{id} |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_id_patch**](docs/ScheduleColorsApi.md#schedule_colors_id_patch) | **PATCH** /schedule/colors/{id} |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_id_put**](docs/ScheduleColorsApi.md#schedule_colors_id_put) | **PUT** /schedule/colors/{id} |
*ConnectWise::ScheduleColorsApi* | [**schedule_colors_reset_post**](docs/ScheduleColorsApi.md#schedule_colors_reset_post) | **POST** /schedule/colors/reset |
*ConnectWise::ScheduleDetailsApi* | [**schedule_entries_id_details_count_get**](docs/ScheduleDetailsApi.md#schedule_entries_id_details_count_get) | **GET** /schedule/entries/{id}/details/count |
*ConnectWise::ScheduleDetailsApi* | [**schedule_entries_id_details_detail_id_get**](docs/ScheduleDetailsApi.md#schedule_entries_id_details_detail_id_get) | **GET** /schedule/entries/{id}/details/{detailId} |
*ConnectWise::ScheduleDetailsApi* | [**schedule_entries_id_details_get**](docs/ScheduleDetailsApi.md#schedule_entries_id_details_get) | **GET** /schedule/entries/{id}/details |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_count_get**](docs/ScheduleEntriesApi.md#schedule_entries_count_get) | **GET** /schedule/entries/count |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_get**](docs/ScheduleEntriesApi.md#schedule_entries_get) | **GET** /schedule/entries |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_id_delete**](docs/ScheduleEntriesApi.md#schedule_entries_id_delete) | **DELETE** /schedule/entries/{id} |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_id_get**](docs/ScheduleEntriesApi.md#schedule_entries_id_get) | **GET** /schedule/entries/{id} |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_id_patch**](docs/ScheduleEntriesApi.md#schedule_entries_id_patch) | **PATCH** /schedule/entries/{id} |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_id_put**](docs/ScheduleEntriesApi.md#schedule_entries_id_put) | **PUT** /schedule/entries/{id} |
*ConnectWise::ScheduleEntriesApi* | [**schedule_entries_post**](docs/ScheduleEntriesApi.md#schedule_entries_post) | **POST** /schedule/entries |
*ConnectWise::ScheduleReminderTimesApi* | [**schedule_reminder_times_count_get**](docs/ScheduleReminderTimesApi.md#schedule_reminder_times_count_get) | **GET** /schedule/reminderTimes/count |
*ConnectWise::ScheduleReminderTimesApi* | [**schedule_reminder_times_get**](docs/ScheduleReminderTimesApi.md#schedule_reminder_times_get) | **GET** /schedule/reminderTimes |
*ConnectWise::ScheduleReminderTimesApi* | [**schedule_reminder_times_id_get**](docs/ScheduleReminderTimesApi.md#schedule_reminder_times_id_get) | **GET** /schedule/reminderTimes/{id} |
*ConnectWise::ScheduleReminderTimesApi* | [**schedule_reminder_times_id_patch**](docs/ScheduleReminderTimesApi.md#schedule_reminder_times_id_patch) | **PATCH** /schedule/reminderTimes/{id} |
*ConnectWise::ScheduleReminderTimesApi* | [**schedule_reminder_times_id_put**](docs/ScheduleReminderTimesApi.md#schedule_reminder_times_id_put) | **PUT** /schedule/reminderTimes/{id} |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_count_get**](docs/ScheduleStatusesApi.md#schedule_statuses_count_get) | **GET** /schedule/statuses/count |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_get**](docs/ScheduleStatusesApi.md#schedule_statuses_get) | **GET** /schedule/statuses |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_id_delete**](docs/ScheduleStatusesApi.md#schedule_statuses_id_delete) | **DELETE** /schedule/statuses/{id} |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_id_get**](docs/ScheduleStatusesApi.md#schedule_statuses_id_get) | **GET** /schedule/statuses/{id} |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_id_patch**](docs/ScheduleStatusesApi.md#schedule_statuses_id_patch) | **PATCH** /schedule/statuses/{id} |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_id_put**](docs/ScheduleStatusesApi.md#schedule_statuses_id_put) | **PUT** /schedule/statuses/{id} |
*ConnectWise::ScheduleStatusesApi* | [**schedule_statuses_post**](docs/ScheduleStatusesApi.md#schedule_statuses_post) | **POST** /schedule/statuses |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_count_get**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_count_get) | **GET** /time/schedulestopwatches/count |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_get**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_get) | **GET** /time/schedulestopwatches |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_id_delete**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_id_delete) | **DELETE** /time/schedulestopwatches/{id} |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_id_get**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_id_get) | **GET** /time/schedulestopwatches/{id} |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_id_patch**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_id_patch) | **PATCH** /time/schedulestopwatches/{id} |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_id_put**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_id_put) | **PUT** /time/schedulestopwatches/{id} |
*ConnectWise::ScheduleStopwatchesApi* | [**time_schedulestopwatches_post**](docs/ScheduleStopwatchesApi.md#time_schedulestopwatches_post) | **POST** /time/schedulestopwatches |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_count_get**](docs/ScheduleTypesApi.md#schedule_types_count_get) | **GET** /schedule/types/count |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_get**](docs/ScheduleTypesApi.md#schedule_types_get) | **GET** /schedule/types |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_id_delete**](docs/ScheduleTypesApi.md#schedule_types_id_delete) | **DELETE** /schedule/types/{id} |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_id_get**](docs/ScheduleTypesApi.md#schedule_types_id_get) | **GET** /schedule/types/{id} |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_id_patch**](docs/ScheduleTypesApi.md#schedule_types_id_patch) | **PATCH** /schedule/types/{id} |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_id_put**](docs/ScheduleTypesApi.md#schedule_types_id_put) | **PUT** /schedule/types/{id} |
*ConnectWise::ScheduleTypesApi* | [**schedule_types_post**](docs/ScheduleTypesApi.md#schedule_types_post) | **POST** /schedule/types |
*ConnectWise::SecurityRoleSettingsApi* | [**system_security_roles_id_settings_count_get**](docs/SecurityRoleSettingsApi.md#system_security_roles_id_settings_count_get) | **GET** /system/securityRoles/{id}/settings/count |
*ConnectWise::SecurityRoleSettingsApi* | [**system_security_roles_id_settings_get**](docs/SecurityRoleSettingsApi.md#system_security_roles_id_settings_get) | **GET** /system/securityRoles/{id}/settings |
*ConnectWise::SecurityRoleSettingsApi* | [**system_security_roles_id_settings_settings_id_get**](docs/SecurityRoleSettingsApi.md#system_security_roles_id_settings_settings_id_get) | **GET** /system/securityRoles/{id}/settings/{settingsId} |
*ConnectWise::SecurityRolesApi* | [**system_securityroles_count_get**](docs/SecurityRolesApi.md#system_securityroles_count_get) | **GET** /system/securityroles/count |
*ConnectWise::SecurityRolesApi* | [**system_securityroles_get**](docs/SecurityRolesApi.md#system_securityroles_get) | **GET** /system/securityroles |
*ConnectWise::SecurityRolesApi* | [**system_securityroles_id_delete**](docs/SecurityRolesApi.md#system_securityroles_id_delete) | **DELETE** /system/securityroles/{id} |
*ConnectWise::SecurityRolesApi* | [**system_securityroles_id_get**](docs/SecurityRolesApi.md#system_securityroles_id_get) | **GET** /system/securityroles/{id} |
*ConnectWise::SecurityRolesApi* | [**system_securityroles_post**](docs/SecurityRolesApi.md#system_securityroles_post) | **POST** /system/securityroles |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_count_get**](docs/ServiceEmailTemplatesApi.md#service_email_templates_count_get) | **GET** /service/emailTemplates/count |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_get**](docs/ServiceEmailTemplatesApi.md#service_email_templates_get) | **GET** /service/emailTemplates |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_id_delete**](docs/ServiceEmailTemplatesApi.md#service_email_templates_id_delete) | **DELETE** /service/emailTemplates/{id} |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_id_get**](docs/ServiceEmailTemplatesApi.md#service_email_templates_id_get) | **GET** /service/emailTemplates/{id} |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_id_patch**](docs/ServiceEmailTemplatesApi.md#service_email_templates_id_patch) | **PATCH** /service/emailTemplates/{id} |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_id_put**](docs/ServiceEmailTemplatesApi.md#service_email_templates_id_put) | **PUT** /service/emailTemplates/{id} |
*ConnectWise::ServiceEmailTemplatesApi* | [**service_email_templates_post**](docs/ServiceEmailTemplatesApi.md#service_email_templates_post) | **POST** /service/emailTemplates |
*ConnectWise::ServiceLocationsApi* | [**service_locations_count_get**](docs/ServiceLocationsApi.md#service_locations_count_get) | **GET** /service/locations/count |
*ConnectWise::ServiceLocationsApi* | [**service_locations_get**](docs/ServiceLocationsApi.md#service_locations_get) | **GET** /service/locations |
*ConnectWise::ServiceLocationsApi* | [**service_locations_id_delete**](docs/ServiceLocationsApi.md#service_locations_id_delete) | **DELETE** /service/locations/{id} |
*ConnectWise::ServiceLocationsApi* | [**service_locations_id_get**](docs/ServiceLocationsApi.md#service_locations_id_get) | **GET** /service/locations/{id} |
*ConnectWise::ServiceLocationsApi* | [**service_locations_id_patch**](docs/ServiceLocationsApi.md#service_locations_id_patch) | **PATCH** /service/locations/{id} |
*ConnectWise::ServiceLocationsApi* | [**service_locations_id_put**](docs/ServiceLocationsApi.md#service_locations_id_put) | **PUT** /service/locations/{id} |
*ConnectWise::ServiceLocationsApi* | [**service_locations_post**](docs/ServiceLocationsApi.md#service_locations_post) | **POST** /service/locations |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_count_get**](docs/ServiceSignoffsApi.md#service_service_signoff_count_get) | **GET** /service/serviceSignoff/count |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_get**](docs/ServiceSignoffsApi.md#service_service_signoff_get) | **GET** /service/serviceSignoff |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_id_delete**](docs/ServiceSignoffsApi.md#service_service_signoff_id_delete) | **DELETE** /service/serviceSignoff/{id} |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_id_get**](docs/ServiceSignoffsApi.md#service_service_signoff_id_get) | **GET** /service/serviceSignoff/{id} |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_id_patch**](docs/ServiceSignoffsApi.md#service_service_signoff_id_patch) | **PATCH** /service/serviceSignoff/{id} |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_id_put**](docs/ServiceSignoffsApi.md#service_service_signoff_id_put) | **PUT** /service/serviceSignoff/{id} |
*ConnectWise::ServiceSignoffsApi* | [**service_service_signoff_post**](docs/ServiceSignoffsApi.md#service_service_signoff_post) | **POST** /service/serviceSignoff |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_count_get**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_count_get) | **GET** /service/surveys/{id}/questions/count |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_get**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_get) | **GET** /service/surveys/{id}/questions |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_post**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_post) | **POST** /service/surveys/{id}/questions |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_question_id_delete**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_delete) | **DELETE** /service/surveys/{id}/questions/{questionId} |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_question_id_get**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_get) | **GET** /service/surveys/{id}/questions/{questionId} |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_question_id_patch**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_patch) | **PATCH** /service/surveys/{id}/questions/{questionId} |
*ConnectWise::ServiceSurveyQuestionsApi* | [**service_surveys_id_questions_question_id_put**](docs/ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_put) | **PUT** /service/surveys/{id}/questions/{questionId} |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_count_get**](docs/ServiceSurveysApi.md#service_surveys_count_get) | **GET** /service/surveys/count |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_get**](docs/ServiceSurveysApi.md#service_surveys_get) | **GET** /service/surveys |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_id_delete**](docs/ServiceSurveysApi.md#service_surveys_id_delete) | **DELETE** /service/surveys/{id} |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_id_get**](docs/ServiceSurveysApi.md#service_surveys_id_get) | **GET** /service/surveys/{id} |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_id_patch**](docs/ServiceSurveysApi.md#service_surveys_id_patch) | **PATCH** /service/surveys/{id} |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_id_put**](docs/ServiceSurveysApi.md#service_surveys_id_put) | **PUT** /service/surveys/{id} |
*ConnectWise::ServiceSurveysApi* | [**service_surveys_post**](docs/ServiceSurveysApi.md#service_surveys_post) | **POST** /service/surveys |
*ConnectWise::ServiceTeamsApi* | [**service_teams_count_get**](docs/ServiceTeamsApi.md#service_teams_count_get) | **GET** /service/teams/count |
*ConnectWise::ServiceTeamsApi* | [**service_teams_get**](docs/ServiceTeamsApi.md#service_teams_get) | **GET** /service/teams |
*ConnectWise::ServiceTeamsApi* | [**service_teams_id_get**](docs/ServiceTeamsApi.md#service_teams_id_get) | **GET** /service/teams/{id} |
*ConnectWise::ServiceTemplatesApi* | [**service_templates_count_get**](docs/ServiceTemplatesApi.md#service_templates_count_get) | **GET** /service/templates/count |
*ConnectWise::ServiceTemplatesApi* | [**service_templates_get**](docs/ServiceTemplatesApi.md#service_templates_get) | **GET** /service/templates |
*ConnectWise::ServiceTemplatesApi* | [**service_templates_id_get**](docs/ServiceTemplatesApi.md#service_templates_id_get) | **GET** /service/templates/{id} |
*ConnectWise::ServicesApi* | [**system_mycompany_services_get**](docs/ServicesApi.md#system_mycompany_services_get) | **GET** /system/mycompany/services |
*ConnectWise::ServicesApi* | [**system_mycompany_services_id_get**](docs/ServicesApi.md#system_mycompany_services_id_get) | **GET** /system/mycompany/services/{id} |
*ConnectWise::ServicesApi* | [**system_mycompany_services_id_patch**](docs/ServicesApi.md#system_mycompany_services_id_patch) | **PATCH** /system/mycompany/services/{id} |
*ConnectWise::ServicesApi* | [**system_mycompany_services_id_put**](docs/ServicesApi.md#system_mycompany_services_id_put) | **PUT** /system/mycompany/services/{id} |
*ConnectWise::SetupScreensApi* | [**system_setup_screens_count_get**](docs/SetupScreensApi.md#system_setup_screens_count_get) | **GET** /system/setupScreens/count |
*ConnectWise::SetupScreensApi* | [**system_setup_screens_get**](docs/SetupScreensApi.md#system_setup_screens_get) | **GET** /system/setupScreens |
*ConnectWise::SetupScreensApi* | [**system_setup_screens_id_get**](docs/SetupScreensApi.md#system_setup_screens_id_get) | **GET** /system/setupScreens/{id} |
*ConnectWise::SeveritiesApi* | [**service_severities_count_get**](docs/SeveritiesApi.md#service_severities_count_get) | **GET** /service/severities/count |
*ConnectWise::SeveritiesApi* | [**service_severities_get**](docs/SeveritiesApi.md#service_severities_get) | **GET** /service/severities |
*ConnectWise::SeveritiesApi* | [**service_severities_id_get**](docs/SeveritiesApi.md#service_severities_id_get) | **GET** /service/severities/{id} |
*ConnectWise::SeveritiesApi* | [**service_severities_id_patch**](docs/SeveritiesApi.md#service_severities_id_patch) | **PATCH** /service/severities/{id} |
*ConnectWise::SeveritiesApi* | [**service_severities_id_put**](docs/SeveritiesApi.md#service_severities_id_put) | **PUT** /service/severities/{id} |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_count_get**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_count_get) | **GET** /procurement/shipmentmethods/count |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_get**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_get) | **GET** /procurement/shipmentmethods |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_delete**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_delete) | **DELETE** /procurement/shipmentmethods/{id} |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_get**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_get) | **GET** /procurement/shipmentmethods/{id} |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_patch**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_patch) | **PATCH** /procurement/shipmentmethods/{id} |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_id_put**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_id_put) | **PUT** /procurement/shipmentmethods/{id} |
*ConnectWise::ShipmentMethodsApi* | [**procurement_shipmentmethods_post**](docs/ShipmentMethodsApi.md#procurement_shipmentmethods_post) | **POST** /procurement/shipmentmethods |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_count_get**](docs/SkillCategoriesApi.md#system_skill_categories_count_get) | **GET** /system/skillCategories/count |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_get**](docs/SkillCategoriesApi.md#system_skill_categories_get) | **GET** /system/skillCategories |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_id_delete**](docs/SkillCategoriesApi.md#system_skill_categories_id_delete) | **DELETE** /system/skillCategories/{id} |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_id_get**](docs/SkillCategoriesApi.md#system_skill_categories_id_get) | **GET** /system/skillCategories/{id} |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_id_patch**](docs/SkillCategoriesApi.md#system_skill_categories_id_patch) | **PATCH** /system/skillCategories/{id} |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_id_put**](docs/SkillCategoriesApi.md#system_skill_categories_id_put) | **PUT** /system/skillCategories/{id} |
*ConnectWise::SkillCategoriesApi* | [**system_skill_categories_post**](docs/SkillCategoriesApi.md#system_skill_categories_post) | **POST** /system/skillCategories |
*ConnectWise::SkillsApi* | [**system_skills_count_get**](docs/SkillsApi.md#system_skills_count_get) | **GET** /system/skills/count |
*ConnectWise::SkillsApi* | [**system_skills_get**](docs/SkillsApi.md#system_skills_get) | **GET** /system/skills |
*ConnectWise::SkillsApi* | [**system_skills_id_delete**](docs/SkillsApi.md#system_skills_id_delete) | **DELETE** /system/skills/{id} |
*ConnectWise::SkillsApi* | [**system_skills_id_get**](docs/SkillsApi.md#system_skills_id_get) | **GET** /system/skills/{id} |
*ConnectWise::SkillsApi* | [**system_skills_id_patch**](docs/SkillsApi.md#system_skills_id_patch) | **PATCH** /system/skills/{id} |
*ConnectWise::SkillsApi* | [**system_skills_id_put**](docs/SkillsApi.md#system_skills_id_put) | **PUT** /system/skills/{id} |
*ConnectWise::SkillsApi* | [**system_skills_post**](docs/SkillsApi.md#system_skills_post) | **POST** /system/skills |
*ConnectWise::SourcesApi* | [**service_sources_count_get**](docs/SourcesApi.md#service_sources_count_get) | **GET** /service/sources/count |
*ConnectWise::SourcesApi* | [**service_sources_get**](docs/SourcesApi.md#service_sources_get) | **GET** /service/sources |
*ConnectWise::SourcesApi* | [**service_sources_id_delete**](docs/SourcesApi.md#service_sources_id_delete) | **DELETE** /service/sources/{id} |
*ConnectWise::SourcesApi* | [**service_sources_id_get**](docs/SourcesApi.md#service_sources_id_get) | **GET** /service/sources/{id} |
*ConnectWise::SourcesApi* | [**service_sources_id_patch**](docs/SourcesApi.md#service_sources_id_patch) | **PATCH** /service/sources/{id} |
*ConnectWise::SourcesApi* | [**service_sources_id_put**](docs/SourcesApi.md#service_sources_id_put) | **PUT** /service/sources/{id} |
*ConnectWise::SourcesApi* | [**service_sources_post**](docs/SourcesApi.md#service_sources_post) | **POST** /service/sources |
*ConnectWise::StatesApi* | [**system_states_count_get**](docs/StatesApi.md#system_states_count_get) | **GET** /system/states/count |
*ConnectWise::StatesApi* | [**system_states_get**](docs/StatesApi.md#system_states_get) | **GET** /system/states |
*ConnectWise::StatesApi* | [**system_states_id_get**](docs/StatesApi.md#system_states_id_get) | **GET** /system/states/{id} |
*ConnectWise::StatesApi* | [**system_states_post**](docs/StatesApi.md#system_states_post) | **POST** /system/states |
*ConnectWise::StatusExternalIntegrationReferencesApi* | [**service_status_external_integration_references_count_get**](docs/StatusExternalIntegrationReferencesApi.md#service_status_external_integration_references_count_get) | **GET** /service/statusExternalIntegrationReferences/count |
*ConnectWise::StatusExternalIntegrationReferencesApi* | [**service_status_external_integration_references_get**](docs/StatusExternalIntegrationReferencesApi.md#service_status_external_integration_references_get) | **GET** /service/statusExternalIntegrationReferences |
*ConnectWise::StatusExternalIntegrationReferencesApi* | [**service_status_external_integration_references_id_get**](docs/StatusExternalIntegrationReferencesApi.md#service_status_external_integration_references_id_get) | **GET** /service/statusExternalIntegrationReferences/{id} |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_count_get**](docs/SubCategoriesApi.md#procurement_subcategories_count_get) | **GET** /procurement/subcategories/count |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_get**](docs/SubCategoriesApi.md#procurement_subcategories_get) | **GET** /procurement/subcategories |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_id_delete**](docs/SubCategoriesApi.md#procurement_subcategories_id_delete) | **DELETE** /procurement/subcategories/{id} |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_id_get**](docs/SubCategoriesApi.md#procurement_subcategories_id_get) | **GET** /procurement/subcategories/{id} |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_id_patch**](docs/SubCategoriesApi.md#procurement_subcategories_id_patch) | **PATCH** /procurement/subcategories/{id} |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_id_put**](docs/SubCategoriesApi.md#procurement_subcategories_id_put) | **PUT** /procurement/subcategories/{id} |
*ConnectWise::SubCategoriesApi* | [**procurement_subcategories_post**](docs/SubCategoriesApi.md#procurement_subcategories_post) | **POST** /procurement/subcategories |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_count_get**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_count_get) | **GET** /service/surveys/{surveyID}/questions/{questionID}/options/count |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_get**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_get) | **GET** /service/surveys/{surveyID}/questions/{questionID}/options |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_oid_delete**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_delete) | **DELETE** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_oid_get**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_get) | **GET** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_oid_patch**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_patch) | **PATCH** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_oid_put**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_put) | **PUT** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} |
*ConnectWise::SurveyOptionsApi* | [**service_surveys_survey_id_questions_question_id_options_post**](docs/SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_post) | **POST** /service/surveys/{surveyID}/questions/{questionID}/options |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_count_get**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_count_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId}/values/count |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_get**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId}/values |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_post**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_post) | **POST** /system/surveys/{id}/questions/{surveyQuestionId}/values |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete) | **DELETE** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch) | **PATCH** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} |
*ConnectWise::SurveyQuestionValuesApi* | [**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put**](docs/SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put) | **PUT** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} |
*ConnectWise::SurveyQuestionsApi* | [**system_surveys_id_questions_get**](docs/SurveyQuestionsApi.md#system_surveys_id_questions_get) | **GET** /system/surveys/{id}/questions |
*ConnectWise::SurveyQuestionsApi* | [**system_surveys_id_questions_post**](docs/SurveyQuestionsApi.md#system_surveys_id_questions_post) | **POST** /system/surveys/{id}/questions |
*ConnectWise::SurveyQuestionsApi* | [**system_surveys_id_questions_survey_question_id_delete**](docs/SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_delete) | **DELETE** /system/surveys/{id}/questions/{surveyQuestionId} |
*ConnectWise::SurveyQuestionsApi* | [**system_surveys_id_questions_survey_question_id_get**](docs/SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId} |
*ConnectWise::SurveyQuestionsApi* | [**system_surveys_id_questions_survey_question_id_patch**](docs/SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_patch) | **PATCH** /system/surveys/{id}/questions/{surveyQuestionId} |
*ConnectWise::SurveyQuestionsApi* | [**system_surveys_id_questions_survey_question_id_put**](docs/SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_put) | **PUT** /system/surveys/{id}/questions/{surveyQuestionId} |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_count_get**](docs/SurveyResultsApi.md#service_surveys_id_results_count_get) | **GET** /service/surveys/{id}/results/count |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_get**](docs/SurveyResultsApi.md#service_surveys_id_results_get) | **GET** /service/surveys/{id}/results |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_post**](docs/SurveyResultsApi.md#service_surveys_id_results_post) | **POST** /service/surveys/{id}/results |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_result_id_delete**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_delete) | **DELETE** /service/surveys/{id}/results/{resultId} |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_result_id_get**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_get) | **GET** /service/surveys/{id}/results/{resultId} |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_result_id_patch**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_patch) | **PATCH** /service/surveys/{id}/results/{resultId} |
*ConnectWise::SurveyResultsApi* | [**service_surveys_id_results_result_id_put**](docs/SurveyResultsApi.md#service_surveys_id_results_result_id_put) | **PUT** /service/surveys/{id}/results/{resultId} |
*ConnectWise::SurveysApi* | [**system_surveys_count_get**](docs/SurveysApi.md#system_surveys_count_get) | **GET** /system/surveys/count |
*ConnectWise::SurveysApi* | [**system_surveys_get**](docs/SurveysApi.md#system_surveys_get) | **GET** /system/surveys |
*ConnectWise::SurveysApi* | [**system_surveys_id_delete**](docs/SurveysApi.md#system_surveys_id_delete) | **DELETE** /system/surveys/{id} |
*ConnectWise::SurveysApi* | [**system_surveys_id_get**](docs/SurveysApi.md#system_surveys_id_get) | **GET** /system/surveys/{id} |
*ConnectWise::SurveysApi* | [**system_surveys_id_patch**](docs/SurveysApi.md#system_surveys_id_patch) | **PATCH** /system/surveys/{id} |
*ConnectWise::SurveysApi* | [**system_surveys_id_put**](docs/SurveysApi.md#system_surveys_id_put) | **PUT** /system/surveys/{id} |
*ConnectWise::SurveysApi* | [**system_surveys_post**](docs/SurveysApi.md#system_surveys_post) | **POST** /system/surveys |
*ConnectWise::SystemTracksApi* | [**system_tracks_count_get**](docs/SystemTracksApi.md#system_tracks_count_get) | **GET** /system/tracks/count |
*ConnectWise::SystemTracksApi* | [**system_tracks_get**](docs/SystemTracksApi.md#system_tracks_get) | **GET** /system/tracks |
*ConnectWise::SystemTracksApi* | [**system_tracks_id_delete**](docs/SystemTracksApi.md#system_tracks_id_delete) | **DELETE** /system/tracks/{id} |
*ConnectWise::SystemTracksApi* | [**system_tracks_id_get**](docs/SystemTracksApi.md#system_tracks_id_get) | **GET** /system/tracks/{id} |
*ConnectWise::SystemTracksApi* | [**system_tracks_id_patch**](docs/SystemTracksApi.md#system_tracks_id_patch) | **PATCH** /system/tracks/{id} |
*ConnectWise::SystemTracksApi* | [**system_tracks_id_put**](docs/SystemTracksApi.md#system_tracks_id_put) | **PUT** /system/tracks/{id} |
*ConnectWise::SystemTracksApi* | [**system_tracks_post**](docs/SystemTracksApi.md#system_tracks_post) | **POST** /system/tracks |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_count_get**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_count_get) | **GET** /finance/taxCodes/{id}/expenseTypeExemptions/count |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete) | **DELETE** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get) | **GET** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch) | **PATCH** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put) | **PUT** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_get**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_get) | **GET** /finance/taxCodes/{id}/expenseTypeExemptions |
*ConnectWise::TaxCodeExpenseTypeExemptionsApi* | [**finance_tax_codes_id_expense_type_exemptions_post**](docs/TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_post) | **POST** /finance/taxCodes/{id}/expenseTypeExemptions |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_count_get**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_count_get) | **GET** /finance/taxCodes/{id}/productTypeExemptions/count |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_get**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_get) | **GET** /finance/taxCodes/{id}/productTypeExemptions |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_post**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_post) | **POST** /finance/taxCodes/{id}/productTypeExemptions |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete) | **DELETE** /finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId} |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get) | **GET** /finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId} |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch) | **PATCH** /finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId} |
*ConnectWise::TaxCodeProductTypeExemptionsApi* | [**finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put**](docs/TaxCodeProductTypeExemptionsApi.md#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put) | **PUT** /finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId} |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_count_get**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_count_get) | **GET** /finance/taxCodes/{id}/workRoleExemptions/count |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_get**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_get) | **GET** /finance/taxCodes/{id}/workRoleExemptions |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_post**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_post) | **POST** /finance/taxCodes/{id}/workRoleExemptions |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete) | **DELETE** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get) | **GET** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch) | **PATCH** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} |
*ConnectWise::TaxCodeWorkRoleExemptionsApi* | [**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put**](docs/TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put) | **PUT** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_count_get**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_count_get) | **GET** /finance/taxCodes/{id}/taxCodeXRefs/count |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_get**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_get) | **GET** /finance/taxCodes/{id}/taxCodeXRefs |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_post**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_post) | **POST** /finance/taxCodes/{id}/taxCodeXRefs |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete) | **DELETE** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get) | **GET** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch) | **PATCH** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} |
*ConnectWise::TaxCodeXRefsApi* | [**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put**](docs/TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put) | **PUT** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_count_get**](docs/TaxCodesApi.md#finance_tax_codes_count_get) | **GET** /finance/taxCodes/count |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_get**](docs/TaxCodesApi.md#finance_tax_codes_get) | **GET** /finance/taxCodes |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_id_delete**](docs/TaxCodesApi.md#finance_tax_codes_id_delete) | **DELETE** /finance/taxCodes/{id} |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_id_get**](docs/TaxCodesApi.md#finance_tax_codes_id_get) | **GET** /finance/taxCodes/{id} |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_id_patch**](docs/TaxCodesApi.md#finance_tax_codes_id_patch) | **PATCH** /finance/taxCodes/{id} |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_id_put**](docs/TaxCodesApi.md#finance_tax_codes_id_put) | **PUT** /finance/taxCodes/{id} |
*ConnectWise::TaxCodesApi* | [**finance_tax_codes_post**](docs/TaxCodesApi.md#finance_tax_codes_post) | **POST** /finance/taxCodes |
*ConnectWise::TaxIntegrationsApi* | [**system_tax_integrations_count_get**](docs/TaxIntegrationsApi.md#system_tax_integrations_count_get) | **GET** /system/taxIntegrations/count |
*ConnectWise::TaxIntegrationsApi* | [**system_tax_integrations_get**](docs/TaxIntegrationsApi.md#system_tax_integrations_get) | **GET** /system/taxIntegrations |
*ConnectWise::TaxIntegrationsApi* | [**system_tax_integrations_id_get**](docs/TaxIntegrationsApi.md#system_tax_integrations_id_get) | **GET** /system/taxIntegrations/{id} |
*ConnectWise::TeamMembersApi* | [**service_team_members_count_get**](docs/TeamMembersApi.md#service_team_members_count_get) | **GET** /service/teamMembers/count |
*ConnectWise::TeamMembersApi* | [**service_team_members_get**](docs/TeamMembersApi.md#service_team_members_get) | **GET** /service/teamMembers |
*ConnectWise::TeamMembersApi* | [**service_team_members_id_delete**](docs/TeamMembersApi.md#service_team_members_id_delete) | **DELETE** /service/teamMembers/{id} |
*ConnectWise::TeamMembersApi* | [**service_team_members_id_get**](docs/TeamMembersApi.md#service_team_members_id_get) | **GET** /service/teamMembers/{id} |
*ConnectWise::TeamMembersApi* | [**service_team_members_post**](docs/TeamMembersApi.md#service_team_members_post) | **POST** /service/teamMembers |
*ConnectWise::TeamRolesApi* | [**company_team_roles_count_get**](docs/TeamRolesApi.md#company_team_roles_count_get) | **GET** /company/teamRoles/count |
*ConnectWise::TeamRolesApi* | [**company_team_roles_get**](docs/TeamRolesApi.md#company_team_roles_get) | **GET** /company/teamRoles |
*ConnectWise::TeamRolesApi* | [**company_team_roles_id_delete**](docs/TeamRolesApi.md#company_team_roles_id_delete) | **DELETE** /company/teamRoles/{id} |
*ConnectWise::TeamRolesApi* | [**company_team_roles_id_get**](docs/TeamRolesApi.md#company_team_roles_id_get) | **GET** /company/teamRoles/{id} |
*ConnectWise::TeamRolesApi* | [**company_team_roles_id_patch**](docs/TeamRolesApi.md#company_team_roles_id_patch) | **PATCH** /company/teamRoles/{id} |
*ConnectWise::TeamRolesApi* | [**company_team_roles_id_put**](docs/TeamRolesApi.md#company_team_roles_id_put) | **PUT** /company/teamRoles/{id} |
*ConnectWise::TeamRolesApi* | [**company_team_roles_post**](docs/TeamRolesApi.md#company_team_roles_post) | **POST** /company/teamRoles |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_count_get**](docs/TicketNotesApi.md#service_tickets_id_notes_count_get) | **GET** /service/tickets/{id}/notes/count |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_get**](docs/TicketNotesApi.md#service_tickets_id_notes_get) | **GET** /service/tickets/{id}/notes |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_note_id_delete**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_delete) | **DELETE** /service/tickets/{id}/notes/{noteId} |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_note_id_get**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_get) | **GET** /service/tickets/{id}/notes/{noteId} |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_note_id_patch**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_patch) | **PATCH** /service/tickets/{id}/notes/{noteId} |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_note_id_put**](docs/TicketNotesApi.md#service_tickets_id_notes_note_id_put) | **PUT** /service/tickets/{id}/notes/{noteId} |
*ConnectWise::TicketNotesApi* | [**service_tickets_id_notes_post**](docs/TicketNotesApi.md#service_tickets_id_notes_post) | **POST** /service/tickets/{id}/notes |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_count_get**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_count_get) | **GET** /time/ticketstopwatches/count |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_get**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_get) | **GET** /time/ticketstopwatches |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_id_delete**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_id_delete) | **DELETE** /time/ticketstopwatches/{id} |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_id_get**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_id_get) | **GET** /time/ticketstopwatches/{id} |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_id_patch**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_id_patch) | **PATCH** /time/ticketstopwatches/{id} |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_id_put**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_id_put) | **PUT** /time/ticketstopwatches/{id} |
*ConnectWise::TicketStopwatchesApi* | [**time_ticketstopwatches_post**](docs/TicketStopwatchesApi.md#time_ticketstopwatches_post) | **POST** /time/ticketstopwatches |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_count_get**](docs/TicketSyncsApi.md#system_ticket_syncs_count_get) | **GET** /system/ticketSyncs/count |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_get**](docs/TicketSyncsApi.md#system_ticket_syncs_get) | **GET** /system/ticketSyncs |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_id_delete**](docs/TicketSyncsApi.md#system_ticket_syncs_id_delete) | **DELETE** /system/ticketSyncs/{id} |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_id_get**](docs/TicketSyncsApi.md#system_ticket_syncs_id_get) | **GET** /system/ticketSyncs/{id} |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_id_patch**](docs/TicketSyncsApi.md#system_ticket_syncs_id_patch) | **PATCH** /system/ticketSyncs/{id} |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_id_put**](docs/TicketSyncsApi.md#system_ticket_syncs_id_put) | **PUT** /system/ticketSyncs/{id} |
*ConnectWise::TicketSyncsApi* | [**system_ticket_syncs_post**](docs/TicketSyncsApi.md#system_ticket_syncs_post) | **POST** /system/ticketSyncs |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_count_get**](docs/TicketTasksApi.md#service_tickets_id_tasks_count_get) | **GET** /service/tickets/{id}/tasks/count |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_get**](docs/TicketTasksApi.md#service_tickets_id_tasks_get) | **GET** /service/tickets/{id}/tasks |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_post**](docs/TicketTasksApi.md#service_tickets_id_tasks_post) | **POST** /service/tickets/{id}/tasks |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_delete**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_delete) | **DELETE** /service/tickets/{id}/tasks/{taskId} |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_get**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_get) | **GET** /service/tickets/{id}/tasks/{taskId} |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_patch**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_patch) | **PATCH** /service/tickets/{id}/tasks/{taskId} |
*ConnectWise::TicketTasksApi* | [**service_tickets_id_tasks_task_id_put**](docs/TicketTasksApi.md#service_tickets_id_tasks_task_id_put) | **PUT** /service/tickets/{id}/tasks/{taskId} |
*ConnectWise::TicketsApi* | [**service_tickets_count_get**](docs/TicketsApi.md#service_tickets_count_get) | **GET** /service/tickets/count |
*ConnectWise::TicketsApi* | [**service_tickets_get**](docs/TicketsApi.md#service_tickets_get) | **GET** /service/tickets |
*ConnectWise::TicketsApi* | [**service_tickets_id_activities_count_get**](docs/TicketsApi.md#service_tickets_id_activities_count_get) | **GET** /service/tickets/{id}/activities/count |
*ConnectWise::TicketsApi* | [**service_tickets_id_activities_get**](docs/TicketsApi.md#service_tickets_id_activities_get) | **GET** /service/tickets/{id}/activities |
*ConnectWise::TicketsApi* | [**service_tickets_id_configurations_config_id_delete**](docs/TicketsApi.md#service_tickets_id_configurations_config_id_delete) | **DELETE** /service/tickets/{id}/configurations/{configId} |
*ConnectWise::TicketsApi* | [**service_tickets_id_configurations_config_id_get**](docs/TicketsApi.md#service_tickets_id_configurations_config_id_get) | **GET** /service/tickets/{id}/configurations/{configId} |
*ConnectWise::TicketsApi* | [**service_tickets_id_configurations_count_get**](docs/TicketsApi.md#service_tickets_id_configurations_count_get) | **GET** /service/tickets/{id}/configurations/count |
*ConnectWise::TicketsApi* | [**service_tickets_id_configurations_get**](docs/TicketsApi.md#service_tickets_id_configurations_get) | **GET** /service/tickets/{id}/configurations |
*ConnectWise::TicketsApi* | [**service_tickets_id_configurations_post**](docs/TicketsApi.md#service_tickets_id_configurations_post) | **POST** /service/tickets/{id}/configurations |
*ConnectWise::TicketsApi* | [**service_tickets_id_delete**](docs/TicketsApi.md#service_tickets_id_delete) | **DELETE** /service/tickets/{id} |
*ConnectWise::TicketsApi* | [**service_tickets_id_documents_count_get**](docs/TicketsApi.md#service_tickets_id_documents_count_get) | **GET** /service/tickets/{id}/documents/count |
*ConnectWise::TicketsApi* | [**service_tickets_id_documents_get**](docs/TicketsApi.md#service_tickets_id_documents_get) | **GET** /service/tickets/{id}/documents |
*ConnectWise::TicketsApi* | [**service_tickets_id_get**](docs/TicketsApi.md#service_tickets_id_get) | **GET** /service/tickets/{id} |
*ConnectWise::TicketsApi* | [**service_tickets_id_merge_post**](docs/TicketsApi.md#service_tickets_id_merge_post) | **POST** /service/tickets/{id}/merge |
*ConnectWise::TicketsApi* | [**service_tickets_id_patch**](docs/TicketsApi.md#service_tickets_id_patch) | **PATCH** /service/tickets/{id} |
*ConnectWise::TicketsApi* | [**service_tickets_id_products_count_get**](docs/TicketsApi.md#service_tickets_id_products_count_get) | **GET** /service/tickets/{id}/products/count |
*ConnectWise::TicketsApi* | [**service_tickets_id_products_get**](docs/TicketsApi.md#service_tickets_id_products_get) | **GET** /service/tickets/{id}/products |
*ConnectWise::TicketsApi* | [**service_tickets_id_put**](docs/TicketsApi.md#service_tickets_id_put) | **PUT** /service/tickets/{id} |
*ConnectWise::TicketsApi* | [**service_tickets_id_scheduleentries_count_get**](docs/TicketsApi.md#service_tickets_id_scheduleentries_count_get) | **GET** /service/tickets/{id}/scheduleentries/count |
*ConnectWise::TicketsApi* | [**service_tickets_id_scheduleentries_get**](docs/TicketsApi.md#service_tickets_id_scheduleentries_get) | **GET** /service/tickets/{id}/scheduleentries |
*ConnectWise::TicketsApi* | [**service_tickets_id_timeentries_count_get**](docs/TicketsApi.md#service_tickets_id_timeentries_count_get) | **GET** /service/tickets/{id}/timeentries/count |
*ConnectWise::TicketsApi* | [**service_tickets_id_timeentries_get**](docs/TicketsApi.md#service_tickets_id_timeentries_get) | **GET** /service/tickets/{id}/timeentries |
*ConnectWise::TicketsApi* | [**service_tickets_post**](docs/TicketsApi.md#service_tickets_post) | **POST** /service/tickets |
*ConnectWise::TicketsApi* | [**service_tickets_search_post**](docs/TicketsApi.md#service_tickets_search_post) | **POST** /service/tickets/search |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_count_get**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_count_get) | **GET** /time/accruals/{id}/details/count |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_detail_id_delete**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_delete) | **DELETE** /time/accruals/{id}/details/{detailId} |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_detail_id_get**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_get) | **GET** /time/accruals/{id}/details/{detailId} |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_detail_id_patch**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_patch) | **PATCH** /time/accruals/{id}/details/{detailId} |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_detail_id_put**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_detail_id_put) | **PUT** /time/accruals/{id}/details/{detailId} |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_get**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_get) | **GET** /time/accruals/{id}/details |
*ConnectWise::TimeAccrualDetailsApi* | [**time_accruals_id_details_post**](docs/TimeAccrualDetailsApi.md#time_accruals_id_details_post) | **POST** /time/accruals/{id}/details |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_count_get**](docs/TimeAccrualsApi.md#time_accruals_count_get) | **GET** /time/accruals/count |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_get**](docs/TimeAccrualsApi.md#time_accruals_get) | **GET** /time/accruals |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_id_delete**](docs/TimeAccrualsApi.md#time_accruals_id_delete) | **DELETE** /time/accruals/{id} |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_id_get**](docs/TimeAccrualsApi.md#time_accruals_id_get) | **GET** /time/accruals/{id} |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_id_patch**](docs/TimeAccrualsApi.md#time_accruals_id_patch) | **PATCH** /time/accruals/{id} |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_id_put**](docs/TimeAccrualsApi.md#time_accruals_id_put) | **PUT** /time/accruals/{id} |
*ConnectWise::TimeAccrualsApi* | [**time_accruals_post**](docs/TimeAccrualsApi.md#time_accruals_post) | **POST** /time/accruals |
*ConnectWise::TimeEntriesApi* | [**time_entries_count_get**](docs/TimeEntriesApi.md#time_entries_count_get) | **GET** /time/entries/count |
*ConnectWise::TimeEntriesApi* | [**time_entries_defaults_post**](docs/TimeEntriesApi.md#time_entries_defaults_post) | **POST** /time/entries/defaults |
*ConnectWise::TimeEntriesApi* | [**time_entries_get**](docs/TimeEntriesApi.md#time_entries_get) | **GET** /time/entries |
*ConnectWise::TimeEntriesApi* | [**time_entries_id_delete**](docs/TimeEntriesApi.md#time_entries_id_delete) | **DELETE** /time/entries/{id} |
*ConnectWise::TimeEntriesApi* | [**time_entries_id_get**](docs/TimeEntriesApi.md#time_entries_id_get) | **GET** /time/entries/{id} |
*ConnectWise::TimeEntriesApi* | [**time_entries_id_patch**](docs/TimeEntriesApi.md#time_entries_id_patch) | **PATCH** /time/entries/{id} |
*ConnectWise::TimeEntriesApi* | [**time_entries_id_put**](docs/TimeEntriesApi.md#time_entries_id_put) | **PUT** /time/entries/{id} |
*ConnectWise::TimeEntriesApi* | [**time_entries_post**](docs/TimeEntriesApi.md#time_entries_post) | **POST** /time/entries |
*ConnectWise::TimeExpensesApi* | [**system_my_company_time_expense_count_get**](docs/TimeExpensesApi.md#system_my_company_time_expense_count_get) | **GET** /system/myCompany/timeExpense/count |
*ConnectWise::TimeExpensesApi* | [**system_my_company_time_expense_get**](docs/TimeExpensesApi.md#system_my_company_time_expense_get) | **GET** /system/myCompany/timeExpense |
*ConnectWise::TimeExpensesApi* | [**system_my_company_time_expense_id_get**](docs/TimeExpensesApi.md#system_my_company_time_expense_id_get) | **GET** /system/myCompany/timeExpense/{id} |
*ConnectWise::TimeExpensesApi* | [**system_my_company_time_expense_id_patch**](docs/TimeExpensesApi.md#system_my_company_time_expense_id_patch) | **PATCH** /system/myCompany/timeExpense/{id} |
*ConnectWise::TimeExpensesApi* | [**system_my_company_time_expense_id_put**](docs/TimeExpensesApi.md#system_my_company_time_expense_id_put) | **PUT** /system/myCompany/timeExpense/{id} |
*ConnectWise::TimePeriodSetupsApi* | [**time_time_period_setups_count_get**](docs/TimePeriodSetupsApi.md#time_time_period_setups_count_get) | **GET** /time/timePeriodSetups/count |
*ConnectWise::TimePeriodSetupsApi* | [**time_time_period_setups_default_get**](docs/TimePeriodSetupsApi.md#time_time_period_setups_default_get) | **GET** /time/timePeriodSetups/default |
*ConnectWise::TimePeriodSetupsApi* | [**time_time_period_setups_get**](docs/TimePeriodSetupsApi.md#time_time_period_setups_get) | **GET** /time/timePeriodSetups |
*ConnectWise::TimePeriodSetupsApi* | [**time_time_period_setups_id_delete**](docs/TimePeriodSetupsApi.md#time_time_period_setups_id_delete) | **DELETE** /time/timePeriodSetups/{id} |
*ConnectWise::TimePeriodSetupsApi* | [**time_time_period_setups_id_get**](docs/TimePeriodSetupsApi.md#time_time_period_setups_id_get) | **GET** /time/timePeriodSetups/{id} |
*ConnectWise::TimePeriodSetupsApi* | [**time_time_period_setups_post**](docs/TimePeriodSetupsApi.md#time_time_period_setups_post) | **POST** /time/timePeriodSetups |
*ConnectWise::TimePeriodsApi* | [**time_time_period_setups_id_periods_count_get**](docs/TimePeriodsApi.md#time_time_period_setups_id_periods_count_get) | **GET** /time/timePeriodSetups/{id}/periods/count |
*ConnectWise::TimePeriodsApi* | [**time_time_period_setups_id_periods_get**](docs/TimePeriodsApi.md#time_time_period_setups_id_periods_get) | **GET** /time/timePeriodSetups/{id}/periods |
*ConnectWise::TimePeriodsApi* | [**time_time_period_setups_id_periods_period_id_get**](docs/TimePeriodsApi.md#time_time_period_setups_id_periods_period_id_get) | **GET** /time/timePeriodSetups/{id}/periods/{periodID} |
*ConnectWise::TimeSheetsApi* | [**time_sheets_count_get**](docs/TimeSheetsApi.md#time_sheets_count_get) | **GET** /time/sheets/count |
*ConnectWise::TimeSheetsApi* | [**time_sheets_get**](docs/TimeSheetsApi.md#time_sheets_get) | **GET** /time/sheets |
*ConnectWise::TimeSheetsApi* | [**time_sheets_id_get**](docs/TimeSheetsApi.md#time_sheets_id_get) | **GET** /time/sheets/{id} |
*ConnectWise::TimeSheetsApi* | [**time_sheets_id_reverse_post**](docs/TimeSheetsApi.md#time_sheets_id_reverse_post) | **POST** /time/sheets/{id}/reverse |
*ConnectWise::TimeSheetsApi* | [**time_sheets_id_submit_post**](docs/TimeSheetsApi.md#time_sheets_id_submit_post) | **POST** /time/sheets/{id}/submit |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_count_get**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_count_get) | **GET** /system/timeZoneSetups/count |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_get**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_get) | **GET** /system/timeZoneSetups |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_id_delete**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_id_delete) | **DELETE** /system/timeZoneSetups/{id} |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_id_get**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_id_get) | **GET** /system/timeZoneSetups/{id} |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_id_patch**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_id_patch) | **PATCH** /system/timeZoneSetups/{id} |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_id_put**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_id_put) | **PUT** /system/timeZoneSetups/{id} |
*ConnectWise::TimeZoneSetupsApi* | [**system_time_zone_setups_post**](docs/TimeZoneSetupsApi.md#system_time_zone_setups_post) | **POST** /system/timeZoneSetups |
*ConnectWise::TimeZonesApi* | [**system_time_zones_count_get**](docs/TimeZonesApi.md#system_time_zones_count_get) | **GET** /system/timeZones/count |
*ConnectWise::TimeZonesApi* | [**system_time_zones_get**](docs/TimeZonesApi.md#system_time_zones_get) | **GET** /system/timeZones |
*ConnectWise::TimeZonesApi* | [**system_time_zones_id_get**](docs/TimeZonesApi.md#system_time_zones_id_get) | **GET** /system/timeZones/{id} |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_count_get**](docs/TodayPageCategoriesApi.md#system_today_page_categories_count_get) | **GET** /system/todayPageCategories/count |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_get**](docs/TodayPageCategoriesApi.md#system_today_page_categories_get) | **GET** /system/todayPageCategories |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_id_delete**](docs/TodayPageCategoriesApi.md#system_today_page_categories_id_delete) | **DELETE** /system/todayPageCategories/{id} |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_id_get**](docs/TodayPageCategoriesApi.md#system_today_page_categories_id_get) | **GET** /system/todayPageCategories/{id} |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_id_patch**](docs/TodayPageCategoriesApi.md#system_today_page_categories_id_patch) | **PATCH** /system/todayPageCategories/{id} |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_id_put**](docs/TodayPageCategoriesApi.md#system_today_page_categories_id_put) | **PUT** /system/todayPageCategories/{id} |
*ConnectWise::TodayPageCategoriesApi* | [**system_today_page_categories_post**](docs/TodayPageCategoriesApi.md#system_today_page_categories_post) | **POST** /system/todayPageCategories |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_action_id_delete**](docs/TrackActionsApi.md#system_tracks_id_actions_action_id_delete) | **DELETE** /system/tracks/{id}/actions/{actionId} |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_action_id_get**](docs/TrackActionsApi.md#system_tracks_id_actions_action_id_get) | **GET** /system/tracks/{id}/actions/{actionId} |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_action_id_patch**](docs/TrackActionsApi.md#system_tracks_id_actions_action_id_patch) | **PATCH** /system/tracks/{id}/actions/{actionId} |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_action_id_put**](docs/TrackActionsApi.md#system_tracks_id_actions_action_id_put) | **PUT** /system/tracks/{id}/actions/{actionId} |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_count_get**](docs/TrackActionsApi.md#system_tracks_id_actions_count_get) | **GET** /system/tracks/{id}/actions/count |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_get**](docs/TrackActionsApi.md#system_tracks_id_actions_get) | **GET** /system/tracks/{id}/actions |
*ConnectWise::TrackActionsApi* | [**system_tracks_id_actions_post**](docs/TrackActionsApi.md#system_tracks_id_actions_post) | **POST** /system/tracks/{id}/actions |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_delete**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_delete) | **DELETE** /procurement/unitOfMeasures/{id}/conversions/{conversionId} |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_get**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_get) | **GET** /procurement/unitOfMeasures/{id}/conversions/{conversionId} |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_patch**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_patch) | **PATCH** /procurement/unitOfMeasures/{id}/conversions/{conversionId} |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_conversion_id_put**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_conversion_id_put) | **PUT** /procurement/unitOfMeasures/{id}/conversions/{conversionId} |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_count_get**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_count_get) | **GET** /procurement/unitOfMeasures/{id}/conversions/count |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_get**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_get) | **GET** /procurement/unitOfMeasures/{id}/conversions |
*ConnectWise::UnitOfMeasureConversionsApi* | [**procurement_unit_of_measures_id_conversions_post**](docs/UnitOfMeasureConversionsApi.md#procurement_unit_of_measures_id_conversions_post) | **POST** /procurement/unitOfMeasures/{id}/conversions |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_count_get**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_count_get) | **GET** /procurement/unitOfMeasures/count |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_get**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_get) | **GET** /procurement/unitOfMeasures |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_id_delete**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_id_delete) | **DELETE** /procurement/unitOfMeasures/{id} |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_id_get**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_id_get) | **GET** /procurement/unitOfMeasures/{id} |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_id_patch**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_id_patch) | **PATCH** /procurement/unitOfMeasures/{id} |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_id_put**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_id_put) | **PUT** /procurement/unitOfMeasures/{id} |
*ConnectWise::UnitOfMeasuresApi* | [**procurement_unit_of_measures_post**](docs/UnitOfMeasuresApi.md#procurement_unit_of_measures_post) | **POST** /procurement/unitOfMeasures |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_count_get**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_count_get) | **GET** /system/userDefinedFields/count |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_get**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_get) | **GET** /system/userDefinedFields |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_delete**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_delete) | **DELETE** /system/userDefinedFields/{id} |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_get**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_get) | **GET** /system/userDefinedFields/{id} |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_patch**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_patch) | **PATCH** /system/userDefinedFields/{id} |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_id_put**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_id_put) | **PUT** /system/userDefinedFields/{id} |
*ConnectWise::UserDefinedFieldsApi* | [**system_user_defined_fields_post**](docs/UserDefinedFieldsApi.md#system_user_defined_fields_post) | **POST** /system/userDefinedFields |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_count_get**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_count_get) | **GET** /procurement/warehouseBins/count |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_get**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_get) | **GET** /procurement/warehouseBins |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_id_delete**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_id_delete) | **DELETE** /procurement/warehouseBins/{id} |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_id_get**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_id_get) | **GET** /procurement/warehouseBins/{id} |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_id_patch**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_id_patch) | **PATCH** /procurement/warehouseBins/{id} |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_id_put**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_id_put) | **PUT** /procurement/warehouseBins/{id} |
*ConnectWise::WarehouseBinsApi* | [**procurement_warehouse_bins_post**](docs/WarehouseBinsApi.md#procurement_warehouse_bins_post) | **POST** /procurement/warehouseBins |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_count_get**](docs/WarehousesApi.md#procurement_warehouses_count_get) | **GET** /procurement/warehouses/count |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_get**](docs/WarehousesApi.md#procurement_warehouses_get) | **GET** /procurement/warehouses |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_id_delete**](docs/WarehousesApi.md#procurement_warehouses_id_delete) | **DELETE** /procurement/warehouses/{id} |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_id_get**](docs/WarehousesApi.md#procurement_warehouses_id_get) | **GET** /procurement/warehouses/{id} |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_id_patch**](docs/WarehousesApi.md#procurement_warehouses_id_patch) | **PATCH** /procurement/warehouses/{id} |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_id_put**](docs/WarehousesApi.md#procurement_warehouses_id_put) | **PUT** /procurement/warehouses/{id} |
*ConnectWise::WarehousesApi* | [**procurement_warehouses_post**](docs/WarehousesApi.md#procurement_warehouses_post) | **POST** /procurement/warehouses |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_count_get**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_count_get) | **GET** /time/workRoles/{id}/locations/count |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_get**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_get) | **GET** /time/workRoles/{id}/locations |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_location_id_delete**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_delete) | **DELETE** /time/workRoles/{id}/locations/{locationId} |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_location_id_get**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_get) | **GET** /time/workRoles/{id}/locations/{locationId} |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_location_id_patch**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_patch) | **PATCH** /time/workRoles/{id}/locations/{locationId} |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_location_id_put**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_location_id_put) | **PUT** /time/workRoles/{id}/locations/{locationId} |
*ConnectWise::WorkRoleLocationsApi* | [**time_work_roles_id_locations_post**](docs/WorkRoleLocationsApi.md#time_work_roles_id_locations_post) | **POST** /time/workRoles/{id}/locations |
*ConnectWise::WorkRolesApi* | [**time_work_roles_count_get**](docs/WorkRolesApi.md#time_work_roles_count_get) | **GET** /time/workRoles/count |
*ConnectWise::WorkRolesApi* | [**time_work_roles_get**](docs/WorkRolesApi.md#time_work_roles_get) | **GET** /time/workRoles |
*ConnectWise::WorkRolesApi* | [**time_work_roles_id_delete**](docs/WorkRolesApi.md#time_work_roles_id_delete) | **DELETE** /time/workRoles/{id} |
*ConnectWise::WorkRolesApi* | [**time_work_roles_id_get**](docs/WorkRolesApi.md#time_work_roles_id_get) | **GET** /time/workRoles/{id} |
*ConnectWise::WorkRolesApi* | [**time_work_roles_id_patch**](docs/WorkRolesApi.md#time_work_roles_id_patch) | **PATCH** /time/workRoles/{id} |
*ConnectWise::WorkRolesApi* | [**time_work_roles_id_put**](docs/WorkRolesApi.md#time_work_roles_id_put) | **PUT** /time/workRoles/{id} |
*ConnectWise::WorkRolesApi* | [**time_work_roles_post**](docs/WorkRolesApi.md#time_work_roles_post) | **POST** /time/workRoles |
*ConnectWise::WorkTypeExternalIntegrationReferencesApi* | [**time_work_type_external_integration_references_count_get**](docs/WorkTypeExternalIntegrationReferencesApi.md#time_work_type_external_integration_references_count_get) | **GET** /time/workTypeExternalIntegrationReferences/count |
*ConnectWise::WorkTypeExternalIntegrationReferencesApi* | [**time_work_type_external_integration_references_get**](docs/WorkTypeExternalIntegrationReferencesApi.md#time_work_type_external_integration_references_get) | **GET** /time/workTypeExternalIntegrationReferences |
*ConnectWise::WorkTypeExternalIntegrationReferencesApi* | [**time_work_type_external_integration_references_id_get**](docs/WorkTypeExternalIntegrationReferencesApi.md#time_work_type_external_integration_references_id_get) | **GET** /time/workTypeExternalIntegrationReferences/{id} |
*ConnectWise::WorkTypesApi* | [**time_work_types_count_get**](docs/WorkTypesApi.md#time_work_types_count_get) | **GET** /time/workTypes/count |
*ConnectWise::WorkTypesApi* | [**time_work_types_get**](docs/WorkTypesApi.md#time_work_types_get) | **GET** /time/workTypes |
*ConnectWise::WorkTypesApi* | [**time_work_types_id_delete**](docs/WorkTypesApi.md#time_work_types_id_delete) | **DELETE** /time/workTypes/{id} |
*ConnectWise::WorkTypesApi* | [**time_work_types_id_get**](docs/WorkTypesApi.md#time_work_types_id_get) | **GET** /time/workTypes/{id} |
*ConnectWise::WorkTypesApi* | [**time_work_types_id_patch**](docs/WorkTypesApi.md#time_work_types_id_patch) | **PATCH** /time/workTypes/{id} |
*ConnectWise::WorkTypesApi* | [**time_work_types_id_put**](docs/WorkTypesApi.md#time_work_types_id_put) | **PUT** /time/workTypes/{id} |
*ConnectWise::WorkTypesApi* | [**time_work_types_post**](docs/WorkTypesApi.md#time_work_types_post) | **POST** /time/workTypes |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_count_get**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_count_get) | **GET** /system/workflowActions/{id}/automateParameters/count |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_get**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_get) | **GET** /system/workflowActions/{id}/automateParameters |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_parameter_id_delete**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_delete) | **DELETE** /system/workflowActions/{id}/automateParameters/{parameterId} |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_parameter_id_get**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_get) | **GET** /system/workflowActions/{id}/automateParameters/{parameterId} |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_parameter_id_patch**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_patch) | **PATCH** /system/workflowActions/{id}/automateParameters/{parameterId} |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_parameter_id_put**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_parameter_id_put) | **PUT** /system/workflowActions/{id}/automateParameters/{parameterId} |
*ConnectWise::WorkflowActionAutomateParametersApi* | [**system_workflow_actions_id_automate_parameters_post**](docs/WorkflowActionAutomateParametersApi.md#system_workflow_actions_id_automate_parameters_post) | **POST** /system/workflowActions/{id}/automateParameters |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_action_id_delete**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_delete) | **DELETE** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_action_id_get**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_get) | **GET** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_action_id_patch**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_patch) | **PATCH** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_action_id_put**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_action_id_put) | **PUT** /system/workflows/{workflowId}/events/{eventId}/actions/{actionId} |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_count_get**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_count_get) | **GET** /system/workflows/{workflowId}/events/{eventId}/actions/count |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_get**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_get) | **GET** /system/workflows/{workflowId}/events/{eventId}/actions |
*ConnectWise::WorkflowActionsApi* | [**system_workflows_workflow_id_events_event_id_actions_post**](docs/WorkflowActionsApi.md#system_workflows_workflow_id_events_event_id_actions_post) | **POST** /system/workflows/{workflowId}/events/{eventId}/actions |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_count_get**](docs/WorkflowEventsApi.md#system_workflows_id_events_count_get) | **GET** /system/workflows/{id}/events/count |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_event_id_delete**](docs/WorkflowEventsApi.md#system_workflows_id_events_event_id_delete) | **DELETE** /system/workflows/{id}/events/{eventId} |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_event_id_get**](docs/WorkflowEventsApi.md#system_workflows_id_events_event_id_get) | **GET** /system/workflows/{id}/events/{eventId} |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_event_id_patch**](docs/WorkflowEventsApi.md#system_workflows_id_events_event_id_patch) | **PATCH** /system/workflows/{id}/events/{eventId} |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_event_id_put**](docs/WorkflowEventsApi.md#system_workflows_id_events_event_id_put) | **PUT** /system/workflows/{id}/events/{eventId} |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_event_id_test_get**](docs/WorkflowEventsApi.md#system_workflows_id_events_event_id_test_get) | **GET** /system/workflows/{id}/events/{eventId}/test |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_get**](docs/WorkflowEventsApi.md#system_workflows_id_events_get) | **GET** /system/workflows/{id}/events |
*ConnectWise::WorkflowEventsApi* | [**system_workflows_id_events_post**](docs/WorkflowEventsApi.md#system_workflows_id_events_post) | **POST** /system/workflows/{id}/events |
*ConnectWise::WorkflowNotifyTypesApi* | [**system_workflows_id_notify_types_count_get**](docs/WorkflowNotifyTypesApi.md#system_workflows_id_notify_types_count_get) | **GET** /system/workflows/{id}/notifyTypes/count |
*ConnectWise::WorkflowNotifyTypesApi* | [**system_workflows_id_notify_types_get**](docs/WorkflowNotifyTypesApi.md#system_workflows_id_notify_types_get) | **GET** /system/workflows/{id}/notifyTypes |
*ConnectWise::WorkflowNotifyTypesApi* | [**system_workflows_id_notify_types_type_id_get**](docs/WorkflowNotifyTypesApi.md#system_workflows_id_notify_types_type_id_get) | **GET** /system/workflows/{id}/notifyTypes/{typeId} |
*ConnectWise::WorkflowTableTypesApi* | [**system_workflows_table_types_count_get**](docs/WorkflowTableTypesApi.md#system_workflows_table_types_count_get) | **GET** /system/workflows/tableTypes/count |
*ConnectWise::WorkflowTableTypesApi* | [**system_workflows_table_types_get**](docs/WorkflowTableTypesApi.md#system_workflows_table_types_get) | **GET** /system/workflows/tableTypes |
*ConnectWise::WorkflowTableTypesApi* | [**system_workflows_table_types_id_get**](docs/WorkflowTableTypesApi.md#system_workflows_table_types_id_get) | **GET** /system/workflows/tableTypes/{id} |
*ConnectWise::WorkflowTriggerOptionsApi* | [**system_workflows_workflow_id_triggers_trigger_id_options_count_get**](docs/WorkflowTriggerOptionsApi.md#system_workflows_workflow_id_triggers_trigger_id_options_count_get) | **GET** /system/workflows/{workflowId}/triggers/{triggerId}/options/count |
*ConnectWise::WorkflowTriggerOptionsApi* | [**system_workflows_workflow_id_triggers_trigger_id_options_get**](docs/WorkflowTriggerOptionsApi.md#system_workflows_workflow_id_triggers_trigger_id_options_get) | **GET** /system/workflows/{workflowId}/triggers/{triggerId}/options |
*ConnectWise::WorkflowTriggersApi* | [**system_workflows_id_triggers_count_get**](docs/WorkflowTriggersApi.md#system_workflows_id_triggers_count_get) | **GET** /system/workflows/{id}/triggers/count |
*ConnectWise::WorkflowTriggersApi* | [**system_workflows_id_triggers_get**](docs/WorkflowTriggersApi.md#system_workflows_id_triggers_get) | **GET** /system/workflows/{id}/triggers |
*ConnectWise::WorkflowsApi* | [**system_workflows_count_get**](docs/WorkflowsApi.md#system_workflows_count_get) | **GET** /system/workflows/count |
*ConnectWise::WorkflowsApi* | [**system_workflows_get**](docs/WorkflowsApi.md#system_workflows_get) | **GET** /system/workflows |
*ConnectWise::WorkflowsApi* | [**system_workflows_id_copy_post**](docs/WorkflowsApi.md#system_workflows_id_copy_post) | **POST** /system/workflows/{id}/copy |
*ConnectWise::WorkflowsApi* | [**system_workflows_id_delete**](docs/WorkflowsApi.md#system_workflows_id_delete) | **DELETE** /system/workflows/{id} |
*ConnectWise::WorkflowsApi* | [**system_workflows_id_get**](docs/WorkflowsApi.md#system_workflows_id_get) | **GET** /system/workflows/{id} |
*ConnectWise::WorkflowsApi* | [**system_workflows_id_patch**](docs/WorkflowsApi.md#system_workflows_id_patch) | **PATCH** /system/workflows/{id} |
*ConnectWise::WorkflowsApi* | [**system_workflows_id_put**](docs/WorkflowsApi.md#system_workflows_id_put) | **PUT** /system/workflows/{id} |
*ConnectWise::WorkflowsApi* | [**system_workflows_post**](docs/WorkflowsApi.md#system_workflows_post) | **POST** /system/workflows |


## Documentation for Models

 - [ConnectWise::AccountingBatch](docs/AccountingBatch.md)
 - [ConnectWise::AccountingPackage](docs/AccountingPackage.md)
 - [ConnectWise::Activity](docs/Activity.md)
 - [ConnectWise::ActivityReference](docs/ActivityReference.md)
 - [ConnectWise::ActivityStatus](docs/ActivityStatus.md)
 - [ConnectWise::ActivityStatusReference](docs/ActivityStatusReference.md)
 - [ConnectWise::ActivityStopwatch](docs/ActivityStopwatch.md)
 - [ConnectWise::ActivityType](docs/ActivityType.md)
 - [ConnectWise::ActivityTypeReference](docs/ActivityTypeReference.md)
 - [ConnectWise::Addition](docs/Addition.md)
 - [ConnectWise::AddressFormat](docs/AddressFormat.md)
 - [ConnectWise::AddressFormatReference](docs/AddressFormatReference.md)
 - [ConnectWise::Adjustment](docs/Adjustment.md)
 - [ConnectWise::AdjustmentDetail](docs/AdjustmentDetail.md)
 - [ConnectWise::AdjustmentReference](docs/AdjustmentReference.md)
 - [ConnectWise::AdjustmentType](docs/AdjustmentType.md)
 - [ConnectWise::AdjustmentTypeReference](docs/AdjustmentTypeReference.md)
 - [ConnectWise::Agreement](docs/Agreement.md)
 - [ConnectWise::AgreementBatchSetup](docs/AgreementBatchSetup.md)
 - [ConnectWise::AgreementReference](docs/AgreementReference.md)
 - [ConnectWise::AgreementSite](docs/AgreementSite.md)
 - [ConnectWise::AgreementType](docs/AgreementType.md)
 - [ConnectWise::AgreementTypeBoardDefault](docs/AgreementTypeBoardDefault.md)
 - [ConnectWise::AgreementTypeReference](docs/AgreementTypeReference.md)
 - [ConnectWise::AgreementTypeWorkRole](docs/AgreementTypeWorkRole.md)
 - [ConnectWise::AgreementTypeWorkRoleExclusion](docs/AgreementTypeWorkRoleExclusion.md)
 - [ConnectWise::AgreementTypeWorkType](docs/AgreementTypeWorkType.md)
 - [ConnectWise::AgreementTypeWorkTypeExclusion](docs/AgreementTypeWorkTypeExclusion.md)
 - [ConnectWise::AgreementWorkRole](docs/AgreementWorkRole.md)
 - [ConnectWise::AgreementWorkRoleExclusion](docs/AgreementWorkRoleExclusion.md)
 - [ConnectWise::AgreementWorkType](docs/AgreementWorkType.md)
 - [ConnectWise::AgreementWorkTypeExclusion](docs/AgreementWorkTypeExclusion.md)
 - [ConnectWise::AuditTrailEntry](docs/AuditTrailEntry.md)
 - [ConnectWise::AuthAnvil](docs/AuthAnvil.md)
 - [ConnectWise::AutomateScriptReference](docs/AutomateScriptReference.md)
 - [ConnectWise::BatchRequest](docs/BatchRequest.md)
 - [ConnectWise::BatchResponse](docs/BatchResponse.md)
 - [ConnectWise::BillingCycle](docs/BillingCycle.md)
 - [ConnectWise::BillingCycleReference](docs/BillingCycleReference.md)
 - [ConnectWise::BillingDeliveryReference](docs/BillingDeliveryReference.md)
 - [ConnectWise::BillingOptionsReference](docs/BillingOptionsReference.md)
 - [ConnectWise::BillingSetup](docs/BillingSetup.md)
 - [ConnectWise::BillingSetupRouting](docs/BillingSetupRouting.md)
 - [ConnectWise::BillingStatus](docs/BillingStatus.md)
 - [ConnectWise::BillingStatusReference](docs/BillingStatusReference.md)
 - [ConnectWise::BillingTerm](docs/BillingTerm.md)
 - [ConnectWise::BillingTermsReference](docs/BillingTermsReference.md)
 - [ConnectWise::Board](docs/Board.md)
 - [ConnectWise::BoardAutoAssignResource](docs/BoardAutoAssignResource.md)
 - [ConnectWise::BoardAutoTemplate](docs/BoardAutoTemplate.md)
 - [ConnectWise::BoardCopy](docs/BoardCopy.md)
 - [ConnectWise::BoardDefault](docs/BoardDefault.md)
 - [ConnectWise::BoardExcludedMember](docs/BoardExcludedMember.md)
 - [ConnectWise::BoardItem](docs/BoardItem.md)
 - [ConnectWise::BoardItemAssociation](docs/BoardItemAssociation.md)
 - [ConnectWise::BoardNotification](docs/BoardNotification.md)
 - [ConnectWise::BoardReference](docs/BoardReference.md)
 - [ConnectWise::BoardStatus](docs/BoardStatus.md)
 - [ConnectWise::BoardStatusNotification](docs/BoardStatusNotification.md)
 - [ConnectWise::BoardSubType](docs/BoardSubType.md)
 - [ConnectWise::BoardTeam](docs/BoardTeam.md)
 - [ConnectWise::BoardType](docs/BoardType.md)
 - [ConnectWise::BoardTypeSubTypeItemAssociation](docs/BoardTypeSubTypeItemAssociation.md)
 - [ConnectWise::Calendar](docs/Calendar.md)
 - [ConnectWise::CalendarReference](docs/CalendarReference.md)
 - [ConnectWise::CalendarSetupReference](docs/CalendarSetupReference.md)
 - [ConnectWise::CallbackEntry](docs/CallbackEntry.md)
 - [ConnectWise::Campaign](docs/Campaign.md)
 - [ConnectWise::CampaignAudit](docs/CampaignAudit.md)
 - [ConnectWise::CampaignReference](docs/CampaignReference.md)
 - [ConnectWise::CampaignStatus](docs/CampaignStatus.md)
 - [ConnectWise::CampaignStatusReference](docs/CampaignStatusReference.md)
 - [ConnectWise::CampaignSubType](docs/CampaignSubType.md)
 - [ConnectWise::CampaignSubTypeReference](docs/CampaignSubTypeReference.md)
 - [ConnectWise::CampaignType](docs/CampaignType.md)
 - [ConnectWise::CampaignTypeReference](docs/CampaignTypeReference.md)
 - [ConnectWise::CatalogComponent](docs/CatalogComponent.md)
 - [ConnectWise::CatalogItem](docs/CatalogItem.md)
 - [ConnectWise::CatalogItemReference](docs/CatalogItemReference.md)
 - [ConnectWise::Category](docs/Category.md)
 - [ConnectWise::Certification](docs/Certification.md)
 - [ConnectWise::CertificationReference](docs/CertificationReference.md)
 - [ConnectWise::ChargeCode](docs/ChargeCode.md)
 - [ConnectWise::ChargeCodeExpenseType](docs/ChargeCodeExpenseType.md)
 - [ConnectWise::ChargeCodeReference](docs/ChargeCodeReference.md)
 - [ConnectWise::Classification](docs/Classification.md)
 - [ConnectWise::ClassificationReference](docs/ClassificationReference.md)
 - [ConnectWise::ClearPickerRequest](docs/ClearPickerRequest.md)
 - [ConnectWise::Code](docs/Code.md)
 - [ConnectWise::Commission](docs/Commission.md)
 - [ConnectWise::CommunicationTypeReference](docs/CommunicationTypeReference.md)
 - [ConnectWise::Company](docs/Company.md)
 - [ConnectWise::CompanyCustomNote](docs/CompanyCustomNote.md)
 - [ConnectWise::CompanyGroup](docs/CompanyGroup.md)
 - [ConnectWise::CompanyManagementSummary](docs/CompanyManagementSummary.md)
 - [ConnectWise::CompanyMerge](docs/CompanyMerge.md)
 - [ConnectWise::CompanyNote](docs/CompanyNote.md)
 - [ConnectWise::CompanyPickerItem](docs/CompanyPickerItem.md)
 - [ConnectWise::CompanyReference](docs/CompanyReference.md)
 - [ConnectWise::CompanySite](docs/CompanySite.md)
 - [ConnectWise::CompanyStatus](docs/CompanyStatus.md)
 - [ConnectWise::CompanyStatusReference](docs/CompanyStatusReference.md)
 - [ConnectWise::CompanyTeam](docs/CompanyTeam.md)
 - [ConnectWise::CompanyType](docs/CompanyType.md)
 - [ConnectWise::CompanyTypeReference](docs/CompanyTypeReference.md)
 - [ConnectWise::Configuration](docs/Configuration.md)
 - [ConnectWise::ConfigurationQuestion](docs/ConfigurationQuestion.md)
 - [ConnectWise::ConfigurationReference](docs/ConfigurationReference.md)
 - [ConnectWise::ConfigurationStatus](docs/ConfigurationStatus.md)
 - [ConnectWise::ConfigurationStatusReference](docs/ConfigurationStatusReference.md)
 - [ConnectWise::ConfigurationType](docs/ConfigurationType.md)
 - [ConnectWise::ConfigurationTypeQuestion](docs/ConfigurationTypeQuestion.md)
 - [ConnectWise::ConfigurationTypeQuestionReference](docs/ConfigurationTypeQuestionReference.md)
 - [ConnectWise::ConfigurationTypeQuestionValue](docs/ConfigurationTypeQuestionValue.md)
 - [ConnectWise::ConfigurationTypeReference](docs/ConfigurationTypeReference.md)
 - [ConnectWise::ConnectWiseHostedSetup](docs/ConnectWiseHostedSetup.md)
 - [ConnectWise::Contact](docs/Contact.md)
 - [ConnectWise::ContactCommunication](docs/ContactCommunication.md)
 - [ConnectWise::ContactCommunicationItem](docs/ContactCommunicationItem.md)
 - [ConnectWise::ContactDepartment](docs/ContactDepartment.md)
 - [ConnectWise::ContactDepartmentReference](docs/ContactDepartmentReference.md)
 - [ConnectWise::ContactGroup](docs/ContactGroup.md)
 - [ConnectWise::ContactNote](docs/ContactNote.md)
 - [ConnectWise::ContactReference](docs/ContactReference.md)
 - [ConnectWise::ContactRelationship](docs/ContactRelationship.md)
 - [ConnectWise::ContactType](docs/ContactType.md)
 - [ConnectWise::ContactTypeReference](docs/ContactTypeReference.md)
 - [ConnectWise::Conversion](docs/Conversion.md)
 - [ConnectWise::CorporateStructure](docs/CorporateStructure.md)
 - [ConnectWise::CorporateStructureLevel](docs/CorporateStructureLevel.md)
 - [ConnectWise::CorporateStructureLevelReference](docs/CorporateStructureLevelReference.md)
 - [ConnectWise::Count](docs/Count.md)
 - [ConnectWise::Country](docs/Country.md)
 - [ConnectWise::CountryReference](docs/CountryReference.md)
 - [ConnectWise::CreateAccountingBatchRequest](docs/CreateAccountingBatchRequest.md)
 - [ConnectWise::Crm](docs/Crm.md)
 - [ConnectWise::Currency](docs/Currency.md)
 - [ConnectWise::CurrencyReference](docs/CurrencyReference.md)
 - [ConnectWise::CustomFieldValue](docs/CustomFieldValue.md)
 - [ConnectWise::CustomReport](docs/CustomReport.md)
 - [ConnectWise::CustomReportParameter](docs/CustomReportParameter.md)
 - [ConnectWise::CustomReportReference](docs/CustomReportReference.md)
 - [ConnectWise::DeliveryMethod](docs/DeliveryMethod.md)
 - [ConnectWise::Department](docs/Department.md)
 - [ConnectWise::DepartmentLocation](docs/DepartmentLocation.md)
 - [ConnectWise::DepartmentMananager](docs/DepartmentMananager.md)
 - [ConnectWise::DispatchMember](docs/DispatchMember.md)
 - [ConnectWise::DocumentInfo](docs/DocumentInfo.md)
 - [ConnectWise::DocumentReference](docs/DocumentReference.md)
 - [ConnectWise::DocumentSetup](docs/DocumentSetup.md)
 - [ConnectWise::DutyManager](docs/DutyManager.md)
 - [ConnectWise::EmailConnector](docs/EmailConnector.md)
 - [ConnectWise::EmailConnectorParsingRule](docs/EmailConnectorParsingRule.md)
 - [ConnectWise::EmailConnectorParsingStyle](docs/EmailConnectorParsingStyle.md)
 - [ConnectWise::EmailConnectorParsingStyleReference](docs/EmailConnectorParsingStyleReference.md)
 - [ConnectWise::EmailConnectorParsingTypeReference](docs/EmailConnectorParsingTypeReference.md)
 - [ConnectWise::EmailConnectorParsingVariableReference](docs/EmailConnectorParsingVariableReference.md)
 - [ConnectWise::EmailConnectorReference](docs/EmailConnectorReference.md)
 - [ConnectWise::EmailOpened](docs/EmailOpened.md)
 - [ConnectWise::EmailTemplateReference](docs/EmailTemplateReference.md)
 - [ConnectWise::EmailToken](docs/EmailToken.md)
 - [ConnectWise::EndpointRequest](docs/EndpointRequest.md)
 - [ConnectWise::EndpointResponse](docs/EndpointResponse.md)
 - [ConnectWise::EntityTypeReference](docs/EntityTypeReference.md)
 - [ConnectWise::Error](docs/Error.md)
 - [ConnectWise::ExpenseEntry](docs/ExpenseEntry.md)
 - [ConnectWise::ExpenseReport](docs/ExpenseReport.md)
 - [ConnectWise::ExpenseTax](docs/ExpenseTax.md)
 - [ConnectWise::ExpenseTaxTypeReference](docs/ExpenseTaxTypeReference.md)
 - [ConnectWise::ExpenseType](docs/ExpenseType.md)
 - [ConnectWise::ExpenseTypeExemption](docs/ExpenseTypeExemption.md)
 - [ConnectWise::ExpenseTypeExternalIntegrationReference](docs/ExpenseTypeExternalIntegrationReference.md)
 - [ConnectWise::ExpenseTypeReference](docs/ExpenseTypeReference.md)
 - [ConnectWise::ExportAccountingBatchRequest](docs/ExportAccountingBatchRequest.md)
 - [ConnectWise::ExternalExpenseTypeIntegrationReference](docs/ExternalExpenseTypeIntegrationReference.md)
 - [ConnectWise::ExternalIntegrationStatusReference](docs/ExternalIntegrationStatusReference.md)
 - [ConnectWise::ExternalWorkTypeIntegrationReference](docs/ExternalWorkTypeIntegrationReference.md)
 - [ConnectWise::FilterValues](docs/FilterValues.md)
 - [ConnectWise::Forecast](docs/Forecast.md)
 - [ConnectWise::FormSubmitted](docs/FormSubmitted.md)
 - [ConnectWise::GLExport](docs/GLExport.md)
 - [ConnectWise::GLExportAdjustmentTransaction](docs/GLExportAdjustmentTransaction.md)
 - [ConnectWise::GLExportAdjustmentTransactionDetail](docs/GLExportAdjustmentTransactionDetail.md)
 - [ConnectWise::GLExportCustomer](docs/GLExportCustomer.md)
 - [ConnectWise::GLExportExpense](docs/GLExportExpense.md)
 - [ConnectWise::GLExportExpenseBill](docs/GLExportExpenseBill.md)
 - [ConnectWise::GLExportExpenseBillDetail](docs/GLExportExpenseBillDetail.md)
 - [ConnectWise::GLExportExpenseOffset](docs/GLExportExpenseOffset.md)
 - [ConnectWise::GLExportInventoryTransfer](docs/GLExportInventoryTransfer.md)
 - [ConnectWise::GLExportInventoryTransferOffset](docs/GLExportInventoryTransferOffset.md)
 - [ConnectWise::GLExportPurchaseTransaction](docs/GLExportPurchaseTransaction.md)
 - [ConnectWise::GLExportPurchaseTransactionDetail](docs/GLExportPurchaseTransactionDetail.md)
 - [ConnectWise::GLExportPurchaseTransactionDetailTax](docs/GLExportPurchaseTransactionDetailTax.md)
 - [ConnectWise::GLExportSettings](docs/GLExportSettings.md)
 - [ConnectWise::GLExportTransaction](docs/GLExportTransaction.md)
 - [ConnectWise::GLExportTransactionDetail](docs/GLExportTransactionDetail.md)
 - [ConnectWise::GLExportVendor](docs/GLExportVendor.md)
 - [ConnectWise::GenericIdIdentifierReference](docs/GenericIdIdentifierReference.md)
 - [ConnectWise::Group](docs/Group.md)
 - [ConnectWise::GroupReference](docs/GroupReference.md)
 - [ConnectWise::Guid](docs/Guid.md)
 - [ConnectWise::Holiday](docs/Holiday.md)
 - [ConnectWise::HolidayList](docs/HolidayList.md)
 - [ConnectWise::HolidayListReference](docs/HolidayListReference.md)
 - [ConnectWise::Imap](docs/Imap.md)
 - [ConnectWise::ImapSetupReference](docs/ImapSetupReference.md)
 - [ConnectWise::Impact](docs/Impact.md)
 - [ConnectWise::ImportMassMaintenance](docs/ImportMassMaintenance.md)
 - [ConnectWise::InOutBoard](docs/InOutBoard.md)
 - [ConnectWise::InOutType](docs/InOutType.md)
 - [ConnectWise::InOutTypeReference](docs/InOutTypeReference.md)
 - [ConnectWise::Info](docs/Info.md)
 - [ConnectWise::IntegratorLogin](docs/IntegratorLogin.md)
 - [ConnectWise::IntegratorLoginReference](docs/IntegratorLoginReference.md)
 - [ConnectWise::Invoice](docs/Invoice.md)
 - [ConnectWise::InvoiceEmailTemplate](docs/InvoiceEmailTemplate.md)
 - [ConnectWise::InvoiceReference](docs/InvoiceReference.md)
 - [ConnectWise::InvoiceTemplate](docs/InvoiceTemplate.md)
 - [ConnectWise::InvoiceTemplateReference](docs/InvoiceTemplateReference.md)
 - [ConnectWise::InvoiceTemplateSetup](docs/InvoiceTemplateSetup.md)
 - [ConnectWise::IvItemReference](docs/IvItemReference.md)
 - [ConnectWise::JArray](docs/JArray.md)
 - [ConnectWise::JObject](docs/JObject.md)
 - [ConnectWise::KPI](docs/KPI.md)
 - [ConnectWise::KPICategory](docs/KPICategory.md)
 - [ConnectWise::KPICategoryReference](docs/KPICategoryReference.md)
 - [ConnectWise::KPIReference](docs/KPIReference.md)
 - [ConnectWise::KnowledgeBaseArticle](docs/KnowledgeBaseArticle.md)
 - [ConnectWise::KnowledgebaseArticle](docs/KnowledgebaseArticle.md)
 - [ConnectWise::LdapConfiguration](docs/LdapConfiguration.md)
 - [ConnectWise::LdapConfigurationReference](docs/LdapConfigurationReference.md)
 - [ConnectWise::LegacySubCategory](docs/LegacySubCategory.md)
 - [ConnectWise::Link](docs/Link.md)
 - [ConnectWise::LinkClicked](docs/LinkClicked.md)
 - [ConnectWise::Location](docs/Location.md)
 - [ConnectWise::LocationDepartment](docs/LocationDepartment.md)
 - [ConnectWise::LocationWorkRole](docs/LocationWorkRole.md)
 - [ConnectWise::ManagedDevicesIntegration](docs/ManagedDevicesIntegration.md)
 - [ConnectWise::ManagedDevicesIntegrationCrossReference](docs/ManagedDevicesIntegrationCrossReference.md)
 - [ConnectWise::ManagedDevicesIntegrationLogin](docs/ManagedDevicesIntegrationLogin.md)
 - [ConnectWise::ManagedDevicesIntegrationNotification](docs/ManagedDevicesIntegrationNotification.md)
 - [ConnectWise::ManagedDevicesIntegrationReference](docs/ManagedDevicesIntegrationReference.md)
 - [ConnectWise::Management](docs/Management.md)
 - [ConnectWise::ManagementBackup](docs/ManagementBackup.md)
 - [ConnectWise::ManagementEmail](docs/ManagementEmail.md)
 - [ConnectWise::ManagementItSolution](docs/ManagementItSolution.md)
 - [ConnectWise::ManagementItSolutionAgreementInterfaceParameter](docs/ManagementItSolutionAgreementInterfaceParameter.md)
 - [ConnectWise::ManagementLogDocumentInfo](docs/ManagementLogDocumentInfo.md)
 - [ConnectWise::ManagementNetworkSecurity](docs/ManagementNetworkSecurity.md)
 - [ConnectWise::ManagementReportNotification](docs/ManagementReportNotification.md)
 - [ConnectWise::ManagementSolutionReference](docs/ManagementSolutionReference.md)
 - [ConnectWise::Manufacturer](docs/Manufacturer.md)
 - [ConnectWise::ManufacturerReference](docs/ManufacturerReference.md)
 - [ConnectWise::MarketDescription](docs/MarketDescription.md)
 - [ConnectWise::MarketingCompany](docs/MarketingCompany.md)
 - [ConnectWise::MarketingContact](docs/MarketingContact.md)
 - [ConnectWise::Member](docs/Member.md)
 - [ConnectWise::MemberAccrual](docs/MemberAccrual.md)
 - [ConnectWise::MemberCertification](docs/MemberCertification.md)
 - [ConnectWise::MemberDeactivation](docs/MemberDeactivation.md)
 - [ConnectWise::MemberDelegation](docs/MemberDelegation.md)
 - [ConnectWise::MemberReference](docs/MemberReference.md)
 - [ConnectWise::MemberSkill](docs/MemberSkill.md)
 - [ConnectWise::MemberTypeReference](docs/MemberTypeReference.md)
 - [ConnectWise::MenuEntry](docs/MenuEntry.md)
 - [ConnectWise::MenuEntryLocation](docs/MenuEntryLocation.md)
 - [ConnectWise::MenuLocationReference](docs/MenuLocationReference.md)
 - [ConnectWise::Metadata](docs/Metadata.md)
 - [ConnectWise::MyCompanyCOORole](docs/MyCompanyCOORole.md)
 - [ConnectWise::MyCompanyControllerRole](docs/MyCompanyControllerRole.md)
 - [ConnectWise::MyCompanyDispatchRole](docs/MyCompanyDispatchRole.md)
 - [ConnectWise::MyCompanyDutyManagerRole](docs/MyCompanyDutyManagerRole.md)
 - [ConnectWise::MyCompanyPresidentRole](docs/MyCompanyPresidentRole.md)
 - [ConnectWise::MyCompanyServiceManagerRole](docs/MyCompanyServiceManagerRole.md)
 - [ConnectWise::NoteType](docs/NoteType.md)
 - [ConnectWise::NoteTypeReference](docs/NoteTypeReference.md)
 - [ConnectWise::NotificationRecipient](docs/NotificationRecipient.md)
 - [ConnectWise::NotificationRecipientReference](docs/NotificationRecipientReference.md)
 - [ConnectWise::NotifyTypeReference](docs/NotifyTypeReference.md)
 - [ConnectWise::Opportunity](docs/Opportunity.md)
 - [ConnectWise::OpportunityContact](docs/OpportunityContact.md)
 - [ConnectWise::OpportunityNote](docs/OpportunityNote.md)
 - [ConnectWise::OpportunityPriorityReference](docs/OpportunityPriorityReference.md)
 - [ConnectWise::OpportunityProbabilityReference](docs/OpportunityProbabilityReference.md)
 - [ConnectWise::OpportunityRating](docs/OpportunityRating.md)
 - [ConnectWise::OpportunityRatingReference](docs/OpportunityRatingReference.md)
 - [ConnectWise::OpportunityReference](docs/OpportunityReference.md)
 - [ConnectWise::OpportunitySalesRoleReference](docs/OpportunitySalesRoleReference.md)
 - [ConnectWise::OpportunityStage](docs/OpportunityStage.md)
 - [ConnectWise::OpportunityStageReference](docs/OpportunityStageReference.md)
 - [ConnectWise::OpportunityStatus](docs/OpportunityStatus.md)
 - [ConnectWise::OpportunityStatusReference](docs/OpportunityStatusReference.md)
 - [ConnectWise::OpportunityToAgreementConversion](docs/OpportunityToAgreementConversion.md)
 - [ConnectWise::OpportunityToProjectConversion](docs/OpportunityToProjectConversion.md)
 - [ConnectWise::OpportunityToSalesOrderConversion](docs/OpportunityToSalesOrderConversion.md)
 - [ConnectWise::OpportunityToServiceTicketConversion](docs/OpportunityToServiceTicketConversion.md)
 - [ConnectWise::OpportunityType](docs/OpportunityType.md)
 - [ConnectWise::OpportunityTypeReference](docs/OpportunityTypeReference.md)
 - [ConnectWise::Order](docs/Order.md)
 - [ConnectWise::OrderStatus](docs/OrderStatus.md)
 - [ConnectWise::OrderStatusEmailTemplate](docs/OrderStatusEmailTemplate.md)
 - [ConnectWise::OrderStatusEmailTemplateReference](docs/OrderStatusEmailTemplateReference.md)
 - [ConnectWise::OrderStatusNotification](docs/OrderStatusNotification.md)
 - [ConnectWise::OrderStatusReference](docs/OrderStatusReference.md)
 - [ConnectWise::Other](docs/Other.md)
 - [ConnectWise::OwnershipType](docs/OwnershipType.md)
 - [ConnectWise::OwnershipTypeReference](docs/OwnershipTypeReference.md)
 - [ConnectWise::ParsingType](docs/ParsingType.md)
 - [ConnectWise::ParsingVariable](docs/ParsingVariable.md)
 - [ConnectWise::PatchOperation](docs/PatchOperation.md)
 - [ConnectWise::Payment](docs/Payment.md)
 - [ConnectWise::PaymentMethodReference](docs/PaymentMethodReference.md)
 - [ConnectWise::PaymentType](docs/PaymentType.md)
 - [ConnectWise::PhaseStatusReference](docs/PhaseStatusReference.md)
 - [ConnectWise::PortalCalendar](docs/PortalCalendar.md)
 - [ConnectWise::PortalConfiguration](docs/PortalConfiguration.md)
 - [ConnectWise::PortalConfigurationInvoiceSetup](docs/PortalConfigurationInvoiceSetup.md)
 - [ConnectWise::PortalConfigurationOpportunitySetup](docs/PortalConfigurationOpportunitySetup.md)
 - [ConnectWise::PortalConfigurationPasswordEmailSetup](docs/PortalConfigurationPasswordEmailSetup.md)
 - [ConnectWise::PortalConfigurationProjectSetup](docs/PortalConfigurationProjectSetup.md)
 - [ConnectWise::PortalConfigurationReference](docs/PortalConfigurationReference.md)
 - [ConnectWise::PortalConfigurationServiceSetup](docs/PortalConfigurationServiceSetup.md)
 - [ConnectWise::PortalReport](docs/PortalReport.md)
 - [ConnectWise::PortalSecurity](docs/PortalSecurity.md)
 - [ConnectWise::PortalSecurityLevel](docs/PortalSecurityLevel.md)
 - [ConnectWise::PricingBreak](docs/PricingBreak.md)
 - [ConnectWise::PricingDetail](docs/PricingDetail.md)
 - [ConnectWise::PricingSchedule](docs/PricingSchedule.md)
 - [ConnectWise::PricingScheduleReference](docs/PricingScheduleReference.md)
 - [ConnectWise::Priority](docs/Priority.md)
 - [ConnectWise::PriorityReference](docs/PriorityReference.md)
 - [ConnectWise::ProductCategoryReference](docs/ProductCategoryReference.md)
 - [ConnectWise::ProductComponent](docs/ProductComponent.md)
 - [ConnectWise::ProductItem](docs/ProductItem.md)
 - [ConnectWise::ProductItemReference](docs/ProductItemReference.md)
 - [ConnectWise::ProductPickingShippingDetail](docs/ProductPickingShippingDetail.md)
 - [ConnectWise::ProductRecurring](docs/ProductRecurring.md)
 - [ConnectWise::ProductReference](docs/ProductReference.md)
 - [ConnectWise::ProductSubCategoryReference](docs/ProductSubCategoryReference.md)
 - [ConnectWise::ProductType](docs/ProductType.md)
 - [ConnectWise::ProductTypeExemption](docs/ProductTypeExemption.md)
 - [ConnectWise::ProductTypeReference](docs/ProductTypeReference.md)
 - [ConnectWise::Project](docs/Project.md)
 - [ConnectWise::ProjectBoardReference](docs/ProjectBoardReference.md)
 - [ConnectWise::ProjectContact](docs/ProjectContact.md)
 - [ConnectWise::ProjectManager](docs/ProjectManager.md)
 - [ConnectWise::ProjectNote](docs/ProjectNote.md)
 - [ConnectWise::ProjectPhase](docs/ProjectPhase.md)
 - [ConnectWise::ProjectPhaseReference](docs/ProjectPhaseReference.md)
 - [ConnectWise::ProjectReference](docs/ProjectReference.md)
 - [ConnectWise::ProjectRoleReference](docs/ProjectRoleReference.md)
 - [ConnectWise::ProjectSecurityRole](docs/ProjectSecurityRole.md)
 - [ConnectWise::ProjectSecurityRoleSetting](docs/ProjectSecurityRoleSetting.md)
 - [ConnectWise::ProjectStatus](docs/ProjectStatus.md)
 - [ConnectWise::ProjectStatusReference](docs/ProjectStatusReference.md)
 - [ConnectWise::ProjectTeammember](docs/ProjectTeammember.md)
 - [ConnectWise::ProjectType](docs/ProjectType.md)
 - [ConnectWise::ProjectTypeReference](docs/ProjectTypeReference.md)
 - [ConnectWise::PurchaseOrder](docs/PurchaseOrder.md)
 - [ConnectWise::PurchaseOrderLineItem](docs/PurchaseOrderLineItem.md)
 - [ConnectWise::PurchaseOrderReference](docs/PurchaseOrderReference.md)
 - [ConnectWise::PurchaseOrderStatus](docs/PurchaseOrderStatus.md)
 - [ConnectWise::PurchaseOrderStatusEmailTemplate](docs/PurchaseOrderStatusEmailTemplate.md)
 - [ConnectWise::PurchaseOrderStatusEmailTemplateReference](docs/PurchaseOrderStatusEmailTemplateReference.md)
 - [ConnectWise::PurchaseOrderStatusNotification](docs/PurchaseOrderStatusNotification.md)
 - [ConnectWise::PurchaseOrderStatusReference](docs/PurchaseOrderStatusReference.md)
 - [ConnectWise::Purchasing](docs/Purchasing.md)
 - [ConnectWise::RMAAction](docs/RMAAction.md)
 - [ConnectWise::RMADisposition](docs/RMADisposition.md)
 - [ConnectWise::RelationshipReference](docs/RelationshipReference.md)
 - [ConnectWise::ReminderReference](docs/ReminderReference.md)
 - [ConnectWise::Report](docs/Report.md)
 - [ConnectWise::ReportCard](docs/ReportCard.md)
 - [ConnectWise::ReportCardDetail](docs/ReportCardDetail.md)
 - [ConnectWise::ReportCardReference](docs/ReportCardReference.md)
 - [ConnectWise::ReportDataResponse](docs/ReportDataResponse.md)
 - [ConnectWise::ReportingService](docs/ReportingService.md)
 - [ConnectWise::RequestPasswordRequest](docs/RequestPasswordRequest.md)
 - [ConnectWise::RmaStatus](docs/RmaStatus.md)
 - [ConnectWise::RmaStatusEmailTemplate](docs/RmaStatusEmailTemplate.md)
 - [ConnectWise::RmaStatusEmailTemplateReference](docs/RmaStatusEmailTemplateReference.md)
 - [ConnectWise::RmaStatusNotification](docs/RmaStatusNotification.md)
 - [ConnectWise::RmaStatusReference](docs/RmaStatusReference.md)
 - [ConnectWise::Role](docs/Role.md)
 - [ConnectWise::SLA](docs/SLA.md)
 - [ConnectWise::SLAPriority](docs/SLAPriority.md)
 - [ConnectWise::SLAReference](docs/SLAReference.md)
 - [ConnectWise::SalesActivity](docs/SalesActivity.md)
 - [ConnectWise::SalesProbability](docs/SalesProbability.md)
 - [ConnectWise::SalesQuota](docs/SalesQuota.md)
 - [ConnectWise::SalesTeam](docs/SalesTeam.md)
 - [ConnectWise::SalesTeamMember](docs/SalesTeamMember.md)
 - [ConnectWise::SalesTeamReference](docs/SalesTeamReference.md)
 - [ConnectWise::ScheduleColor](docs/ScheduleColor.md)
 - [ConnectWise::ScheduleDetail](docs/ScheduleDetail.md)
 - [ConnectWise::ScheduleEntry](docs/ScheduleEntry.md)
 - [ConnectWise::ScheduleEntryReference](docs/ScheduleEntryReference.md)
 - [ConnectWise::ScheduleReminderTime](docs/ScheduleReminderTime.md)
 - [ConnectWise::ScheduleSpanReference](docs/ScheduleSpanReference.md)
 - [ConnectWise::ScheduleStatus](docs/ScheduleStatus.md)
 - [ConnectWise::ScheduleStatusReference](docs/ScheduleStatusReference.md)
 - [ConnectWise::ScheduleStopwatch](docs/ScheduleStopwatch.md)
 - [ConnectWise::ScheduleType](docs/ScheduleType.md)
 - [ConnectWise::ScheduleTypeReference](docs/ScheduleTypeReference.md)
 - [ConnectWise::SecurityRole](docs/SecurityRole.md)
 - [ConnectWise::SecurityRoleReference](docs/SecurityRoleReference.md)
 - [ConnectWise::SecurityRoleSetting](docs/SecurityRoleSetting.md)
 - [ConnectWise::Service](docs/Service.md)
 - [ConnectWise::ServiceCodeReference](docs/ServiceCodeReference.md)
 - [ConnectWise::ServiceEmailTemplate](docs/ServiceEmailTemplate.md)
 - [ConnectWise::ServiceEmailTemplateReference](docs/ServiceEmailTemplateReference.md)
 - [ConnectWise::ServiceItemReference](docs/ServiceItemReference.md)
 - [ConnectWise::ServiceLocation](docs/ServiceLocation.md)
 - [ConnectWise::ServiceLocationReference](docs/ServiceLocationReference.md)
 - [ConnectWise::ServiceManger](docs/ServiceManger.md)
 - [ConnectWise::ServiceNote](docs/ServiceNote.md)
 - [ConnectWise::ServiceSignoff](docs/ServiceSignoff.md)
 - [ConnectWise::ServiceSignoffReference](docs/ServiceSignoffReference.md)
 - [ConnectWise::ServiceSourceReference](docs/ServiceSourceReference.md)
 - [ConnectWise::ServiceStatusReference](docs/ServiceStatusReference.md)
 - [ConnectWise::ServiceSubTypeReference](docs/ServiceSubTypeReference.md)
 - [ConnectWise::ServiceSurvey](docs/ServiceSurvey.md)
 - [ConnectWise::ServiceSurveyQuestion](docs/ServiceSurveyQuestion.md)
 - [ConnectWise::ServiceSurveyQuestionOption](docs/ServiceSurveyQuestionOption.md)
 - [ConnectWise::ServiceSurveyReference](docs/ServiceSurveyReference.md)
 - [ConnectWise::ServiceTeam](docs/ServiceTeam.md)
 - [ConnectWise::ServiceTeamReference](docs/ServiceTeamReference.md)
 - [ConnectWise::ServiceTemplate](docs/ServiceTemplate.md)
 - [ConnectWise::ServiceTemplateReference](docs/ServiceTemplateReference.md)
 - [ConnectWise::ServiceTypeReference](docs/ServiceTypeReference.md)
 - [ConnectWise::SetupScreen](docs/SetupScreen.md)
 - [ConnectWise::Severity](docs/Severity.md)
 - [ConnectWise::ShipmentMethod](docs/ShipmentMethod.md)
 - [ConnectWise::ShipmentMethodReference](docs/ShipmentMethodReference.md)
 - [ConnectWise::SicCodeReference](docs/SicCodeReference.md)
 - [ConnectWise::SiteReference](docs/SiteReference.md)
 - [ConnectWise::Skill](docs/Skill.md)
 - [ConnectWise::SkillCategory](docs/SkillCategory.md)
 - [ConnectWise::SkillCategoryReference](docs/SkillCategoryReference.md)
 - [ConnectWise::SkillReference](docs/SkillReference.md)
 - [ConnectWise::Source](docs/Source.md)
 - [ConnectWise::State](docs/State.md)
 - [ConnectWise::StateReference](docs/StateReference.md)
 - [ConnectWise::StatusExternalIntegrationReference](docs/StatusExternalIntegrationReference.md)
 - [ConnectWise::StatusWorkflow](docs/StatusWorkflow.md)
 - [ConnectWise::StructureReference](docs/StructureReference.md)
 - [ConnectWise::SubCategory](docs/SubCategory.md)
 - [ConnectWise::SuccessResponse](docs/SuccessResponse.md)
 - [ConnectWise::Survey](docs/Survey.md)
 - [ConnectWise::SurveyOption](docs/SurveyOption.md)
 - [ConnectWise::SurveyQuestion](docs/SurveyQuestion.md)
 - [ConnectWise::SurveyQuestionReference](docs/SurveyQuestionReference.md)
 - [ConnectWise::SurveyQuestionValue](docs/SurveyQuestionValue.md)
 - [ConnectWise::SurveyReference](docs/SurveyReference.md)
 - [ConnectWise::SurveyResult](docs/SurveyResult.md)
 - [ConnectWise::SurveyResultDetail](docs/SurveyResultDetail.md)
 - [ConnectWise::SystemDepartmentReference](docs/SystemDepartmentReference.md)
 - [ConnectWise::SystemLocationReference](docs/SystemLocationReference.md)
 - [ConnectWise::SystemMenuEntryReference](docs/SystemMenuEntryReference.md)
 - [ConnectWise::Task](docs/Task.md)
 - [ConnectWise::TaxCode](docs/TaxCode.md)
 - [ConnectWise::TaxCodeReference](docs/TaxCodeReference.md)
 - [ConnectWise::TaxCodeXRef](docs/TaxCodeXRef.md)
 - [ConnectWise::TaxIntegration](docs/TaxIntegration.md)
 - [ConnectWise::Team](docs/Team.md)
 - [ConnectWise::TeamMember](docs/TeamMember.md)
 - [ConnectWise::TeamRole](docs/TeamRole.md)
 - [ConnectWise::TeamRoleReference](docs/TeamRoleReference.md)
 - [ConnectWise::Ticket](docs/Ticket.md)
 - [ConnectWise::TicketMerge](docs/TicketMerge.md)
 - [ConnectWise::TicketReference](docs/TicketReference.md)
 - [ConnectWise::TicketStopwatch](docs/TicketStopwatch.md)
 - [ConnectWise::TicketSync](docs/TicketSync.md)
 - [ConnectWise::TimeAccrual](docs/TimeAccrual.md)
 - [ConnectWise::TimeAccrualDetail](docs/TimeAccrualDetail.md)
 - [ConnectWise::TimeAccrualReference](docs/TimeAccrualReference.md)
 - [ConnectWise::TimeEntry](docs/TimeEntry.md)
 - [ConnectWise::TimeEntryReference](docs/TimeEntryReference.md)
 - [ConnectWise::TimeExpense](docs/TimeExpense.md)
 - [ConnectWise::TimePeriod](docs/TimePeriod.md)
 - [ConnectWise::TimePeriodSetup](docs/TimePeriodSetup.md)
 - [ConnectWise::TimePeriodSetupDefaults](docs/TimePeriodSetupDefaults.md)
 - [ConnectWise::TimePeriodSetupReference](docs/TimePeriodSetupReference.md)
 - [ConnectWise::TimeSheet](docs/TimeSheet.md)
 - [ConnectWise::TimeSheetReference](docs/TimeSheetReference.md)
 - [ConnectWise::TimeZone](docs/TimeZone.md)
 - [ConnectWise::TimeZoneReference](docs/TimeZoneReference.md)
 - [ConnectWise::TimeZoneSetup](docs/TimeZoneSetup.md)
 - [ConnectWise::TimeZoneSetupReference](docs/TimeZoneSetupReference.md)
 - [ConnectWise::TodayPageCategory](docs/TodayPageCategory.md)
 - [ConnectWise::Token](docs/Token.md)
 - [ConnectWise::Track](docs/Track.md)
 - [ConnectWise::TrackAction](docs/TrackAction.md)
 - [ConnectWise::TrackReference](docs/TrackReference.md)
 - [ConnectWise::Type](docs/Type.md)
 - [ConnectWise::UnitOfMeasure](docs/UnitOfMeasure.md)
 - [ConnectWise::UnitOfMeasureReference](docs/UnitOfMeasureReference.md)
 - [ConnectWise::UnpostedExpense](docs/UnpostedExpense.md)
 - [ConnectWise::UnpostedInvoice](docs/UnpostedInvoice.md)
 - [ConnectWise::UnpostedProcurement](docs/UnpostedProcurement.md)
 - [ConnectWise::UserDefinedField](docs/UserDefinedField.md)
 - [ConnectWise::UserDefinedFieldOption](docs/UserDefinedFieldOption.md)
 - [ConnectWise::UserDefinedFieldReference](docs/UserDefinedFieldReference.md)
 - [ConnectWise::ValidatePortalRequest](docs/ValidatePortalRequest.md)
 - [ConnectWise::ValidatePortalResponse](docs/ValidatePortalResponse.md)
 - [ConnectWise::ValidationError](docs/ValidationError.md)
 - [ConnectWise::Warehouse](docs/Warehouse.md)
 - [ConnectWise::WarehouseBin](docs/WarehouseBin.md)
 - [ConnectWise::WarehouseBinReference](docs/WarehouseBinReference.md)
 - [ConnectWise::WarehouseReference](docs/WarehouseReference.md)
 - [ConnectWise::WorkRole](docs/WorkRole.md)
 - [ConnectWise::WorkRoleExemption](docs/WorkRoleExemption.md)
 - [ConnectWise::WorkRoleLocation](docs/WorkRoleLocation.md)
 - [ConnectWise::WorkRoleReference](docs/WorkRoleReference.md)
 - [ConnectWise::WorkType](docs/WorkType.md)
 - [ConnectWise::WorkTypeExternalIntegrationReference](docs/WorkTypeExternalIntegrationReference.md)
 - [ConnectWise::WorkTypeReference](docs/WorkTypeReference.md)
 - [ConnectWise::Workflow](docs/Workflow.md)
 - [ConnectWise::WorkflowAction](docs/WorkflowAction.md)
 - [ConnectWise::WorkflowActionAutomateParameter](docs/WorkflowActionAutomateParameter.md)
 - [ConnectWise::WorkflowEvent](docs/WorkflowEvent.md)
 - [ConnectWise::WorkflowNotifyType](docs/WorkflowNotifyType.md)
 - [ConnectWise::WorkflowTableType](docs/WorkflowTableType.md)
 - [ConnectWise::WorkflowTableTypeReference](docs/WorkflowTableTypeReference.md)
 - [ConnectWise::WorkflowTrigger](docs/WorkflowTrigger.md)
 - [ConnectWise::WorkflowTriggerOption](docs/WorkflowTriggerOption.md)


## Documentation for Authorization


### BasicAuth

- **Type**: HTTP basic authentication

