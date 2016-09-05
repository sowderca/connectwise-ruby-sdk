# Connectwise::ExpenseEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**charge_to_id** | **Integer** |  | [optional] 
**charge_to_type** | **String** |  | [optional] 
**type** | [**ExpenseTypeReference**](ExpenseTypeReference.md) |  | 
**member** | [**MemberReference**](MemberReference.md) |  | [optional] 
**payment_method** | [**PaymentMethodReference**](PaymentMethodReference.md) |  | [optional] 
**classification** | [**ClassificationReference**](ClassificationReference.md) |  | [optional] 
**amount** | **Float** |  | 
**billable_option** | **String** |  | 
**date** | **DateTime** |  | 
**location_id** | **Integer** |  | [optional] 
**business_unit_id** | **Integer** |  | [optional] 
**notes** | **String** |  | [optional] 
**agreement** | [**AgreementReference**](AgreementReference.md) |  | [optional] 
**invoice_amount** | **Float** |  | [optional] 
**taxes** | [**Array&lt;ExpenseTax&gt;**](ExpenseTax.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 


