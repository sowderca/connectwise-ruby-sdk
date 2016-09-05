# Connectwise::Opportunity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**expected_close_date** | **DateTime** |  | [optional] 
**type** | [**OpportunityTypeReference**](OpportunityTypeReference.md) |  | [optional] 
**stage** | [**OpportunityStageReference**](OpportunityStageReference.md) |  | [optional] 
**status** | [**OpportunityStatusReference**](OpportunityStatusReference.md) |  | [optional] 
**priority** | [**OpportunityPriorityReference**](OpportunityPriorityReference.md) |  | [optional] 
**notes** | **String** |  | [optional] 
**probability** | [**OpportunityProbabilityReference**](OpportunityProbabilityReference.md) |  | [optional] 
**source** | **String** |  | [optional] 
**rating** | [**OpportunityRatingReference**](OpportunityRatingReference.md) |  | [optional] 
**campaign** | [**CampaignReference**](CampaignReference.md) |  | [optional] 
**primary_sales_rep** | [**MemberReference**](MemberReference.md) |  | 
**secondary_sales_rep** | [**MemberReference**](MemberReference.md) |  | [optional] 
**location_id** | **Integer** |  | [optional] 
**business_unit_id** | **Integer** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | 
**contact** | [**ContactReference**](ContactReference.md) |  | 
**site** | [**SiteReference**](SiteReference.md) |  | 
**customer_po** | **String** |  | [optional] 
**pipeline_change_date** | **DateTime** |  | [optional] 
**date_became_lead** | **DateTime** |  | [optional] 
**closed_date** | **DateTime** |  | [optional] 
**closed_by** | [**MemberReference**](MemberReference.md) |  | [optional] 
**total_sales_tax** | **Float** |  | [optional] 
**ship_to_company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**ship_to_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**ship_to_site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**bill_to_company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**bill_to_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**bill_to_site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**custom_fields** | [**Array&lt;CustomFieldValue&gt;**](CustomFieldValue.md) |  | [optional] 


