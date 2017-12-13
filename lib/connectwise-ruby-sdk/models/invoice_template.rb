
require 'date'

module ConnectWise

  class InvoiceTemplate
    attr_accessor :id

    attr_accessor :name

    attr_accessor :margin_left

    attr_accessor :margin_right

    attr_accessor :margin_top

    attr_accessor :margin_bottom

    attr_accessor :logo_visible_flag

    attr_accessor :header_logo_position

    attr_accessor :remit_to_visibile_flag

    attr_accessor :header_address_position

    attr_accessor :header_title_visibile_flag

    attr_accessor :header_title_caption

    attr_accessor :header_title_position

    attr_accessor :header_title_font

    attr_accessor :header_terms_visible_flag

    attr_accessor :header_terms_caption

    attr_accessor :header_due_date_visible_flag

    attr_accessor :header_due_date_caption

    attr_accessor :header_po_number_visible_flag

    attr_accessor :header_po_number_caption

    attr_accessor :header_reference_visible_flag

    attr_accessor :header_reference_caption

    attr_accessor :header_account_visible_flag

    attr_accessor :header_account_caption

    attr_accessor :header_tax_id_visible_flag

    attr_accessor :header_tax_id_caption

    attr_accessor :header_ship_to_visible_flag

    attr_accessor :header_ship_to_caption

    attr_accessor :service_header_ticket_number_visible_flag

    attr_accessor :serivce_header_ticket_number_caption

    attr_accessor :service_header_company_name_visible_flag

    attr_accessor :service_header_company_name_caption

    attr_accessor :service_header_summary_visible_flag

    attr_accessor :service_header_summary_caption

    attr_accessor :service_header_contact_name_visible_flag

    attr_accessor :service_header_contact_name_caption

    attr_accessor :service_header_detail_description_visible_flag

    attr_accessor :service_header_detail_description_caption

    attr_accessor :service_header_resolution_visible_flag

    attr_accessor :service_header_resolution_caption

    attr_accessor :service_header_amount_visible_flag

    attr_accessor :service_header_amount_caption

    attr_accessor :service_header_billing_method_visible_flag

    attr_accessor :service_header_billing_method_caption

    attr_accessor :service_header_closed_tasks_visible_flag

    attr_accessor :service_header_open_tasks_visible_flag

    attr_accessor :service_header_bundled_tickets_visible_flag

    attr_accessor :project_header_project_name_visible_flag

    attr_accessor :project_header_project_name_caption

    attr_accessor :project_header_company_name_visible_flag

    attr_accessor :project_header_company_name_caption

    attr_accessor :project_header_original_downpayment_visible_flag

    attr_accessor :project_header_original_downpayment_caption

    attr_accessor :project_header_contact_name_visible_flag

    attr_accessor :project_header_contact_name_caption

    attr_accessor :project_header_amount_visible_flag

    attr_accessor :project_header_amount_caption

    attr_accessor :project_header_billing_method_visible_flag

    attr_accessor :project_header_billing_method_caption

    attr_accessor :project_header_billing_type_visible_flag

    attr_accessor :project_header_billing_type_caption

    # Metadata of the entity
    attr_accessor :_info

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'margin_left' => :'marginLeft',
        :'margin_right' => :'marginRight',
        :'margin_top' => :'marginTop',
        :'margin_bottom' => :'marginBottom',
        :'logo_visible_flag' => :'logoVisibleFlag',
        :'header_logo_position' => :'headerLogoPosition',
        :'remit_to_visibile_flag' => :'remitToVisibileFlag',
        :'header_address_position' => :'headerAddressPosition',
        :'header_title_visibile_flag' => :'headerTitleVisibileFlag',
        :'header_title_caption' => :'headerTitleCaption',
        :'header_title_position' => :'headerTitlePosition',
        :'header_title_font' => :'headerTitleFont',
        :'header_terms_visible_flag' => :'headerTermsVisibleFlag',
        :'header_terms_caption' => :'headerTermsCaption',
        :'header_due_date_visible_flag' => :'headerDueDateVisibleFlag',
        :'header_due_date_caption' => :'headerDueDateCaption',
        :'header_po_number_visible_flag' => :'headerPoNumberVisibleFlag',
        :'header_po_number_caption' => :'headerPoNumberCaption',
        :'header_reference_visible_flag' => :'headerReferenceVisibleFlag',
        :'header_reference_caption' => :'headerReferenceCaption',
        :'header_account_visible_flag' => :'headerAccountVisibleFlag',
        :'header_account_caption' => :'headerAccountCaption',
        :'header_tax_id_visible_flag' => :'headerTaxIdVisibleFlag',
        :'header_tax_id_caption' => :'headerTaxIdCaption',
        :'header_ship_to_visible_flag' => :'headerShipToVisibleFlag',
        :'header_ship_to_caption' => :'headerShipToCaption',
        :'service_header_ticket_number_visible_flag' => :'serviceHeaderTicketNumberVisibleFlag',
        :'serivce_header_ticket_number_caption' => :'serivceHeaderTicketNumberCaption',
        :'service_header_company_name_visible_flag' => :'serviceHeaderCompanyNameVisibleFlag',
        :'service_header_company_name_caption' => :'serviceHeaderCompanyNameCaption',
        :'service_header_summary_visible_flag' => :'serviceHeaderSummaryVisibleFlag',
        :'service_header_summary_caption' => :'serviceHeaderSummaryCaption',
        :'service_header_contact_name_visible_flag' => :'serviceHeaderContactNameVisibleFlag',
        :'service_header_contact_name_caption' => :'serviceHeaderContactNameCaption',
        :'service_header_detail_description_visible_flag' => :'serviceHeaderDetailDescriptionVisibleFlag',
        :'service_header_detail_description_caption' => :'serviceHeaderDetailDescriptionCaption',
        :'service_header_resolution_visible_flag' => :'serviceHeaderResolutionVisibleFlag',
        :'service_header_resolution_caption' => :'serviceHeaderResolutionCaption',
        :'service_header_amount_visible_flag' => :'serviceHeaderAmountVisibleFlag',
        :'service_header_amount_caption' => :'serviceHeaderAmountCaption',
        :'service_header_billing_method_visible_flag' => :'serviceHeaderBillingMethodVisibleFlag',
        :'service_header_billing_method_caption' => :'serviceHeaderBillingMethodCaption',
        :'service_header_closed_tasks_visible_flag' => :'serviceHeaderClosedTasksVisibleFlag',
        :'service_header_open_tasks_visible_flag' => :'serviceHeaderOpenTasksVisibleFlag',
        :'service_header_bundled_tickets_visible_flag' => :'serviceHeaderBundledTicketsVisibleFlag',
        :'project_header_project_name_visible_flag' => :'projectHeaderProjectNameVisibleFlag',
        :'project_header_project_name_caption' => :'projectHeaderProjectNameCaption',
        :'project_header_company_name_visible_flag' => :'projectHeaderCompanyNameVisibleFlag',
        :'project_header_company_name_caption' => :'projectHeaderCompanyNameCaption',
        :'project_header_original_downpayment_visible_flag' => :'projectHeaderOriginalDownpaymentVisibleFlag',
        :'project_header_original_downpayment_caption' => :'projectHeaderOriginalDownpaymentCaption',
        :'project_header_contact_name_visible_flag' => :'projectHeaderContactNameVisibleFlag',
        :'project_header_contact_name_caption' => :'projectHeaderContactNameCaption',
        :'project_header_amount_visible_flag' => :'projectHeaderAmountVisibleFlag',
        :'project_header_amount_caption' => :'projectHeaderAmountCaption',
        :'project_header_billing_method_visible_flag' => :'projectHeaderBillingMethodVisibleFlag',
        :'project_header_billing_method_caption' => :'projectHeaderBillingMethodCaption',
        :'project_header_billing_type_visible_flag' => :'projectHeaderBillingTypeVisibleFlag',
        :'project_header_billing_type_caption' => :'projectHeaderBillingTypeCaption',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'margin_left' => :'Float',
        :'margin_right' => :'Float',
        :'margin_top' => :'Float',
        :'margin_bottom' => :'Float',
        :'logo_visible_flag' => :'BOOLEAN',
        :'header_logo_position' => :'String',
        :'remit_to_visibile_flag' => :'BOOLEAN',
        :'header_address_position' => :'String',
        :'header_title_visibile_flag' => :'BOOLEAN',
        :'header_title_caption' => :'String',
        :'header_title_position' => :'String',
        :'header_title_font' => :'String',
        :'header_terms_visible_flag' => :'BOOLEAN',
        :'header_terms_caption' => :'String',
        :'header_due_date_visible_flag' => :'BOOLEAN',
        :'header_due_date_caption' => :'String',
        :'header_po_number_visible_flag' => :'BOOLEAN',
        :'header_po_number_caption' => :'String',
        :'header_reference_visible_flag' => :'BOOLEAN',
        :'header_reference_caption' => :'String',
        :'header_account_visible_flag' => :'BOOLEAN',
        :'header_account_caption' => :'String',
        :'header_tax_id_visible_flag' => :'BOOLEAN',
        :'header_tax_id_caption' => :'String',
        :'header_ship_to_visible_flag' => :'BOOLEAN',
        :'header_ship_to_caption' => :'String',
        :'service_header_ticket_number_visible_flag' => :'BOOLEAN',
        :'serivce_header_ticket_number_caption' => :'String',
        :'service_header_company_name_visible_flag' => :'BOOLEAN',
        :'service_header_company_name_caption' => :'String',
        :'service_header_summary_visible_flag' => :'BOOLEAN',
        :'service_header_summary_caption' => :'String',
        :'service_header_contact_name_visible_flag' => :'BOOLEAN',
        :'service_header_contact_name_caption' => :'String',
        :'service_header_detail_description_visible_flag' => :'BOOLEAN',
        :'service_header_detail_description_caption' => :'String',
        :'service_header_resolution_visible_flag' => :'BOOLEAN',
        :'service_header_resolution_caption' => :'String',
        :'service_header_amount_visible_flag' => :'BOOLEAN',
        :'service_header_amount_caption' => :'String',
        :'service_header_billing_method_visible_flag' => :'BOOLEAN',
        :'service_header_billing_method_caption' => :'String',
        :'service_header_closed_tasks_visible_flag' => :'BOOLEAN',
        :'service_header_open_tasks_visible_flag' => :'BOOLEAN',
        :'service_header_bundled_tickets_visible_flag' => :'BOOLEAN',
        :'project_header_project_name_visible_flag' => :'BOOLEAN',
        :'project_header_project_name_caption' => :'String',
        :'project_header_company_name_visible_flag' => :'BOOLEAN',
        :'project_header_company_name_caption' => :'String',
        :'project_header_original_downpayment_visible_flag' => :'BOOLEAN',
        :'project_header_original_downpayment_caption' => :'String',
        :'project_header_contact_name_visible_flag' => :'BOOLEAN',
        :'project_header_contact_name_caption' => :'String',
        :'project_header_amount_visible_flag' => :'BOOLEAN',
        :'project_header_amount_caption' => :'String',
        :'project_header_billing_method_visible_flag' => :'BOOLEAN',
        :'project_header_billing_method_caption' => :'String',
        :'project_header_billing_type_visible_flag' => :'BOOLEAN',
        :'project_header_billing_type_caption' => :'String',
        :'_info' => :'Metadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'marginLeft')
        self.margin_left = attributes[:'marginLeft']
      end

      if attributes.has_key?(:'marginRight')
        self.margin_right = attributes[:'marginRight']
      end

      if attributes.has_key?(:'marginTop')
        self.margin_top = attributes[:'marginTop']
      end

      if attributes.has_key?(:'marginBottom')
        self.margin_bottom = attributes[:'marginBottom']
      end

      if attributes.has_key?(:'logoVisibleFlag')
        self.logo_visible_flag = attributes[:'logoVisibleFlag']
      end

      if attributes.has_key?(:'headerLogoPosition')
        self.header_logo_position = attributes[:'headerLogoPosition']
      end

      if attributes.has_key?(:'remitToVisibileFlag')
        self.remit_to_visibile_flag = attributes[:'remitToVisibileFlag']
      end

      if attributes.has_key?(:'headerAddressPosition')
        self.header_address_position = attributes[:'headerAddressPosition']
      end

      if attributes.has_key?(:'headerTitleVisibileFlag')
        self.header_title_visibile_flag = attributes[:'headerTitleVisibileFlag']
      end

      if attributes.has_key?(:'headerTitleCaption')
        self.header_title_caption = attributes[:'headerTitleCaption']
      end

      if attributes.has_key?(:'headerTitlePosition')
        self.header_title_position = attributes[:'headerTitlePosition']
      end

      if attributes.has_key?(:'headerTitleFont')
        self.header_title_font = attributes[:'headerTitleFont']
      end

      if attributes.has_key?(:'headerTermsVisibleFlag')
        self.header_terms_visible_flag = attributes[:'headerTermsVisibleFlag']
      end

      if attributes.has_key?(:'headerTermsCaption')
        self.header_terms_caption = attributes[:'headerTermsCaption']
      end

      if attributes.has_key?(:'headerDueDateVisibleFlag')
        self.header_due_date_visible_flag = attributes[:'headerDueDateVisibleFlag']
      end

      if attributes.has_key?(:'headerDueDateCaption')
        self.header_due_date_caption = attributes[:'headerDueDateCaption']
      end

      if attributes.has_key?(:'headerPoNumberVisibleFlag')
        self.header_po_number_visible_flag = attributes[:'headerPoNumberVisibleFlag']
      end

      if attributes.has_key?(:'headerPoNumberCaption')
        self.header_po_number_caption = attributes[:'headerPoNumberCaption']
      end

      if attributes.has_key?(:'headerReferenceVisibleFlag')
        self.header_reference_visible_flag = attributes[:'headerReferenceVisibleFlag']
      end

      if attributes.has_key?(:'headerReferenceCaption')
        self.header_reference_caption = attributes[:'headerReferenceCaption']
      end

      if attributes.has_key?(:'headerAccountVisibleFlag')
        self.header_account_visible_flag = attributes[:'headerAccountVisibleFlag']
      end

      if attributes.has_key?(:'headerAccountCaption')
        self.header_account_caption = attributes[:'headerAccountCaption']
      end

      if attributes.has_key?(:'headerTaxIdVisibleFlag')
        self.header_tax_id_visible_flag = attributes[:'headerTaxIdVisibleFlag']
      end

      if attributes.has_key?(:'headerTaxIdCaption')
        self.header_tax_id_caption = attributes[:'headerTaxIdCaption']
      end

      if attributes.has_key?(:'headerShipToVisibleFlag')
        self.header_ship_to_visible_flag = attributes[:'headerShipToVisibleFlag']
      end

      if attributes.has_key?(:'headerShipToCaption')
        self.header_ship_to_caption = attributes[:'headerShipToCaption']
      end

      if attributes.has_key?(:'serviceHeaderTicketNumberVisibleFlag')
        self.service_header_ticket_number_visible_flag = attributes[:'serviceHeaderTicketNumberVisibleFlag']
      end

      if attributes.has_key?(:'serivceHeaderTicketNumberCaption')
        self.serivce_header_ticket_number_caption = attributes[:'serivceHeaderTicketNumberCaption']
      end

      if attributes.has_key?(:'serviceHeaderCompanyNameVisibleFlag')
        self.service_header_company_name_visible_flag = attributes[:'serviceHeaderCompanyNameVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderCompanyNameCaption')
        self.service_header_company_name_caption = attributes[:'serviceHeaderCompanyNameCaption']
      end

      if attributes.has_key?(:'serviceHeaderSummaryVisibleFlag')
        self.service_header_summary_visible_flag = attributes[:'serviceHeaderSummaryVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderSummaryCaption')
        self.service_header_summary_caption = attributes[:'serviceHeaderSummaryCaption']
      end

      if attributes.has_key?(:'serviceHeaderContactNameVisibleFlag')
        self.service_header_contact_name_visible_flag = attributes[:'serviceHeaderContactNameVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderContactNameCaption')
        self.service_header_contact_name_caption = attributes[:'serviceHeaderContactNameCaption']
      end

      if attributes.has_key?(:'serviceHeaderDetailDescriptionVisibleFlag')
        self.service_header_detail_description_visible_flag = attributes[:'serviceHeaderDetailDescriptionVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderDetailDescriptionCaption')
        self.service_header_detail_description_caption = attributes[:'serviceHeaderDetailDescriptionCaption']
      end

      if attributes.has_key?(:'serviceHeaderResolutionVisibleFlag')
        self.service_header_resolution_visible_flag = attributes[:'serviceHeaderResolutionVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderResolutionCaption')
        self.service_header_resolution_caption = attributes[:'serviceHeaderResolutionCaption']
      end

      if attributes.has_key?(:'serviceHeaderAmountVisibleFlag')
        self.service_header_amount_visible_flag = attributes[:'serviceHeaderAmountVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderAmountCaption')
        self.service_header_amount_caption = attributes[:'serviceHeaderAmountCaption']
      end

      if attributes.has_key?(:'serviceHeaderBillingMethodVisibleFlag')
        self.service_header_billing_method_visible_flag = attributes[:'serviceHeaderBillingMethodVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderBillingMethodCaption')
        self.service_header_billing_method_caption = attributes[:'serviceHeaderBillingMethodCaption']
      end

      if attributes.has_key?(:'serviceHeaderClosedTasksVisibleFlag')
        self.service_header_closed_tasks_visible_flag = attributes[:'serviceHeaderClosedTasksVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderOpenTasksVisibleFlag')
        self.service_header_open_tasks_visible_flag = attributes[:'serviceHeaderOpenTasksVisibleFlag']
      end

      if attributes.has_key?(:'serviceHeaderBundledTicketsVisibleFlag')
        self.service_header_bundled_tickets_visible_flag = attributes[:'serviceHeaderBundledTicketsVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderProjectNameVisibleFlag')
        self.project_header_project_name_visible_flag = attributes[:'projectHeaderProjectNameVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderProjectNameCaption')
        self.project_header_project_name_caption = attributes[:'projectHeaderProjectNameCaption']
      end

      if attributes.has_key?(:'projectHeaderCompanyNameVisibleFlag')
        self.project_header_company_name_visible_flag = attributes[:'projectHeaderCompanyNameVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderCompanyNameCaption')
        self.project_header_company_name_caption = attributes[:'projectHeaderCompanyNameCaption']
      end

      if attributes.has_key?(:'projectHeaderOriginalDownpaymentVisibleFlag')
        self.project_header_original_downpayment_visible_flag = attributes[:'projectHeaderOriginalDownpaymentVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderOriginalDownpaymentCaption')
        self.project_header_original_downpayment_caption = attributes[:'projectHeaderOriginalDownpaymentCaption']
      end

      if attributes.has_key?(:'projectHeaderContactNameVisibleFlag')
        self.project_header_contact_name_visible_flag = attributes[:'projectHeaderContactNameVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderContactNameCaption')
        self.project_header_contact_name_caption = attributes[:'projectHeaderContactNameCaption']
      end

      if attributes.has_key?(:'projectHeaderAmountVisibleFlag')
        self.project_header_amount_visible_flag = attributes[:'projectHeaderAmountVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderAmountCaption')
        self.project_header_amount_caption = attributes[:'projectHeaderAmountCaption']
      end

      if attributes.has_key?(:'projectHeaderBillingMethodVisibleFlag')
        self.project_header_billing_method_visible_flag = attributes[:'projectHeaderBillingMethodVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderBillingMethodCaption')
        self.project_header_billing_method_caption = attributes[:'projectHeaderBillingMethodCaption']
      end

      if attributes.has_key?(:'projectHeaderBillingTypeVisibleFlag')
        self.project_header_billing_type_visible_flag = attributes[:'projectHeaderBillingTypeVisibleFlag']
      end

      if attributes.has_key?(:'projectHeaderBillingTypeCaption')
        self.project_header_billing_type_caption = attributes[:'projectHeaderBillingTypeCaption']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if !@header_title_caption.nil? && @header_title_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_title_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_terms_caption.nil? && @header_terms_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_terms_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_due_date_caption.nil? && @header_due_date_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_due_date_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_po_number_caption.nil? && @header_po_number_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_po_number_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_reference_caption.nil? && @header_reference_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_reference_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_account_caption.nil? && @header_account_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_account_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_tax_id_caption.nil? && @header_tax_id_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_tax_id_caption', the character length must be smaller than or equal to 50.")
      end

      if !@header_ship_to_caption.nil? && @header_ship_to_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'header_ship_to_caption', the character length must be smaller than or equal to 50.")
      end

      if !@serivce_header_ticket_number_caption.nil? && @serivce_header_ticket_number_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'serivce_header_ticket_number_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_company_name_caption.nil? && @service_header_company_name_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_company_name_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_summary_caption.nil? && @service_header_summary_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_summary_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_contact_name_caption.nil? && @service_header_contact_name_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_contact_name_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_detail_description_caption.nil? && @service_header_detail_description_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_detail_description_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_resolution_caption.nil? && @service_header_resolution_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_resolution_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_amount_caption.nil? && @service_header_amount_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_amount_caption', the character length must be smaller than or equal to 50.")
      end

      if !@service_header_billing_method_caption.nil? && @service_header_billing_method_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'service_header_billing_method_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_project_name_caption.nil? && @project_header_project_name_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_project_name_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_company_name_caption.nil? && @project_header_company_name_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_company_name_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_original_downpayment_caption.nil? && @project_header_original_downpayment_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_original_downpayment_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_contact_name_caption.nil? && @project_header_contact_name_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_contact_name_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_amount_caption.nil? && @project_header_amount_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_amount_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_billing_method_caption.nil? && @project_header_billing_method_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_billing_method_caption', the character length must be smaller than or equal to 50.")
      end

      if !@project_header_billing_type_caption.nil? && @project_header_billing_type_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'project_header_billing_type_caption', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      header_logo_position_validator = EnumAttributeValidator.new('String', ["LeftSide", "RightSide", "Center"])
      return false unless header_logo_position_validator.valid?(@header_logo_position)
      header_address_position_validator = EnumAttributeValidator.new('String', ["LeftSide", "RightSide", "Center"])
      return false unless header_address_position_validator.valid?(@header_address_position)
      return false if !@header_title_caption.nil? && @header_title_caption.to_s.length > 50
      header_title_position_validator = EnumAttributeValidator.new('String', ["LeftSide", "RightSide", "Center"])
      return false unless header_title_position_validator.valid?(@header_title_position)
      header_title_font_validator = EnumAttributeValidator.new('String', ["Regular", "RegularBold", "Large", "LargeBold", "ExtraLarge", "ExtraLargeBold"])
      return false unless header_title_font_validator.valid?(@header_title_font)
      return false if !@header_terms_caption.nil? && @header_terms_caption.to_s.length > 50
      return false if !@header_due_date_caption.nil? && @header_due_date_caption.to_s.length > 50
      return false if !@header_po_number_caption.nil? && @header_po_number_caption.to_s.length > 50
      return false if !@header_reference_caption.nil? && @header_reference_caption.to_s.length > 50
      return false if !@header_account_caption.nil? && @header_account_caption.to_s.length > 50
      return false if !@header_tax_id_caption.nil? && @header_tax_id_caption.to_s.length > 50
      return false if !@header_ship_to_caption.nil? && @header_ship_to_caption.to_s.length > 50
      return false if !@serivce_header_ticket_number_caption.nil? && @serivce_header_ticket_number_caption.to_s.length > 50
      return false if !@service_header_company_name_caption.nil? && @service_header_company_name_caption.to_s.length > 50
      return false if !@service_header_summary_caption.nil? && @service_header_summary_caption.to_s.length > 50
      return false if !@service_header_contact_name_caption.nil? && @service_header_contact_name_caption.to_s.length > 50
      return false if !@service_header_detail_description_caption.nil? && @service_header_detail_description_caption.to_s.length > 50
      return false if !@service_header_resolution_caption.nil? && @service_header_resolution_caption.to_s.length > 50
      return false if !@service_header_amount_caption.nil? && @service_header_amount_caption.to_s.length > 50
      return false if !@service_header_billing_method_caption.nil? && @service_header_billing_method_caption.to_s.length > 50
      return false if !@project_header_project_name_caption.nil? && @project_header_project_name_caption.to_s.length > 50
      return false if !@project_header_company_name_caption.nil? && @project_header_company_name_caption.to_s.length > 50
      return false if !@project_header_original_downpayment_caption.nil? && @project_header_original_downpayment_caption.to_s.length > 50
      return false if !@project_header_contact_name_caption.nil? && @project_header_contact_name_caption.to_s.length > 50
      return false if !@project_header_amount_caption.nil? && @project_header_amount_caption.to_s.length > 50
      return false if !@project_header_billing_method_caption.nil? && @project_header_billing_method_caption.to_s.length > 50
      return false if !@project_header_billing_type_caption.nil? && @project_header_billing_type_caption.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header_logo_position Object to be assigned
    def header_logo_position=(header_logo_position)
      validator = EnumAttributeValidator.new('String', ["LeftSide", "RightSide", "Center"])
      unless validator.valid?(header_logo_position)
        fail ArgumentError, "invalid value for 'header_logo_position', must be one of #{validator.allowable_values}."
      end
      @header_logo_position = header_logo_position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header_address_position Object to be assigned
    def header_address_position=(header_address_position)
      validator = EnumAttributeValidator.new('String', ["LeftSide", "RightSide", "Center"])
      unless validator.valid?(header_address_position)
        fail ArgumentError, "invalid value for 'header_address_position', must be one of #{validator.allowable_values}."
      end
      @header_address_position = header_address_position
    end

    # Custom attribute writer method with validation
    # @param [Object] header_title_caption Value to be assigned
    def header_title_caption=(header_title_caption)

      if !header_title_caption.nil? && header_title_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_title_caption', the character length must be smaller than or equal to 50."
      end

      @header_title_caption = header_title_caption
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header_title_position Object to be assigned
    def header_title_position=(header_title_position)
      validator = EnumAttributeValidator.new('String', ["LeftSide", "RightSide", "Center"])
      unless validator.valid?(header_title_position)
        fail ArgumentError, "invalid value for 'header_title_position', must be one of #{validator.allowable_values}."
      end
      @header_title_position = header_title_position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header_title_font Object to be assigned
    def header_title_font=(header_title_font)
      validator = EnumAttributeValidator.new('String', ["Regular", "RegularBold", "Large", "LargeBold", "ExtraLarge", "ExtraLargeBold"])
      unless validator.valid?(header_title_font)
        fail ArgumentError, "invalid value for 'header_title_font', must be one of #{validator.allowable_values}."
      end
      @header_title_font = header_title_font
    end

    # Custom attribute writer method with validation
    # @param [Object] header_terms_caption Value to be assigned
    def header_terms_caption=(header_terms_caption)

      if !header_terms_caption.nil? && header_terms_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_terms_caption', the character length must be smaller than or equal to 50."
      end

      @header_terms_caption = header_terms_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] header_due_date_caption Value to be assigned
    def header_due_date_caption=(header_due_date_caption)

      if !header_due_date_caption.nil? && header_due_date_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_due_date_caption', the character length must be smaller than or equal to 50."
      end

      @header_due_date_caption = header_due_date_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] header_po_number_caption Value to be assigned
    def header_po_number_caption=(header_po_number_caption)

      if !header_po_number_caption.nil? && header_po_number_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_po_number_caption', the character length must be smaller than or equal to 50."
      end

      @header_po_number_caption = header_po_number_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] header_reference_caption Value to be assigned
    def header_reference_caption=(header_reference_caption)

      if !header_reference_caption.nil? && header_reference_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_reference_caption', the character length must be smaller than or equal to 50."
      end

      @header_reference_caption = header_reference_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] header_account_caption Value to be assigned
    def header_account_caption=(header_account_caption)

      if !header_account_caption.nil? && header_account_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_account_caption', the character length must be smaller than or equal to 50."
      end

      @header_account_caption = header_account_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] header_tax_id_caption Value to be assigned
    def header_tax_id_caption=(header_tax_id_caption)

      if !header_tax_id_caption.nil? && header_tax_id_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_tax_id_caption', the character length must be smaller than or equal to 50."
      end

      @header_tax_id_caption = header_tax_id_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] header_ship_to_caption Value to be assigned
    def header_ship_to_caption=(header_ship_to_caption)

      if !header_ship_to_caption.nil? && header_ship_to_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_ship_to_caption', the character length must be smaller than or equal to 50."
      end

      @header_ship_to_caption = header_ship_to_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] serivce_header_ticket_number_caption Value to be assigned
    def serivce_header_ticket_number_caption=(serivce_header_ticket_number_caption)

      if !serivce_header_ticket_number_caption.nil? && serivce_header_ticket_number_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'serivce_header_ticket_number_caption', the character length must be smaller than or equal to 50."
      end

      @serivce_header_ticket_number_caption = serivce_header_ticket_number_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_company_name_caption Value to be assigned
    def service_header_company_name_caption=(service_header_company_name_caption)

      if !service_header_company_name_caption.nil? && service_header_company_name_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_company_name_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_company_name_caption = service_header_company_name_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_summary_caption Value to be assigned
    def service_header_summary_caption=(service_header_summary_caption)

      if !service_header_summary_caption.nil? && service_header_summary_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_summary_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_summary_caption = service_header_summary_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_contact_name_caption Value to be assigned
    def service_header_contact_name_caption=(service_header_contact_name_caption)

      if !service_header_contact_name_caption.nil? && service_header_contact_name_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_contact_name_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_contact_name_caption = service_header_contact_name_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_detail_description_caption Value to be assigned
    def service_header_detail_description_caption=(service_header_detail_description_caption)

      if !service_header_detail_description_caption.nil? && service_header_detail_description_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_detail_description_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_detail_description_caption = service_header_detail_description_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_resolution_caption Value to be assigned
    def service_header_resolution_caption=(service_header_resolution_caption)

      if !service_header_resolution_caption.nil? && service_header_resolution_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_resolution_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_resolution_caption = service_header_resolution_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_amount_caption Value to be assigned
    def service_header_amount_caption=(service_header_amount_caption)

      if !service_header_amount_caption.nil? && service_header_amount_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_amount_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_amount_caption = service_header_amount_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] service_header_billing_method_caption Value to be assigned
    def service_header_billing_method_caption=(service_header_billing_method_caption)

      if !service_header_billing_method_caption.nil? && service_header_billing_method_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'service_header_billing_method_caption', the character length must be smaller than or equal to 50."
      end

      @service_header_billing_method_caption = service_header_billing_method_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_project_name_caption Value to be assigned
    def project_header_project_name_caption=(project_header_project_name_caption)

      if !project_header_project_name_caption.nil? && project_header_project_name_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_project_name_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_project_name_caption = project_header_project_name_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_company_name_caption Value to be assigned
    def project_header_company_name_caption=(project_header_company_name_caption)

      if !project_header_company_name_caption.nil? && project_header_company_name_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_company_name_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_company_name_caption = project_header_company_name_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_original_downpayment_caption Value to be assigned
    def project_header_original_downpayment_caption=(project_header_original_downpayment_caption)

      if !project_header_original_downpayment_caption.nil? && project_header_original_downpayment_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_original_downpayment_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_original_downpayment_caption = project_header_original_downpayment_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_contact_name_caption Value to be assigned
    def project_header_contact_name_caption=(project_header_contact_name_caption)

      if !project_header_contact_name_caption.nil? && project_header_contact_name_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_contact_name_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_contact_name_caption = project_header_contact_name_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_amount_caption Value to be assigned
    def project_header_amount_caption=(project_header_amount_caption)

      if !project_header_amount_caption.nil? && project_header_amount_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_amount_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_amount_caption = project_header_amount_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_billing_method_caption Value to be assigned
    def project_header_billing_method_caption=(project_header_billing_method_caption)

      if !project_header_billing_method_caption.nil? && project_header_billing_method_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_billing_method_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_billing_method_caption = project_header_billing_method_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] project_header_billing_type_caption Value to be assigned
    def project_header_billing_type_caption=(project_header_billing_type_caption)

      if !project_header_billing_type_caption.nil? && project_header_billing_type_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'project_header_billing_type_caption', the character length must be smaller than or equal to 50."
      end

      @project_header_billing_type_caption = project_header_billing_type_caption
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          margin_left == o.margin_left &&
          margin_right == o.margin_right &&
          margin_top == o.margin_top &&
          margin_bottom == o.margin_bottom &&
          logo_visible_flag == o.logo_visible_flag &&
          header_logo_position == o.header_logo_position &&
          remit_to_visibile_flag == o.remit_to_visibile_flag &&
          header_address_position == o.header_address_position &&
          header_title_visibile_flag == o.header_title_visibile_flag &&
          header_title_caption == o.header_title_caption &&
          header_title_position == o.header_title_position &&
          header_title_font == o.header_title_font &&
          header_terms_visible_flag == o.header_terms_visible_flag &&
          header_terms_caption == o.header_terms_caption &&
          header_due_date_visible_flag == o.header_due_date_visible_flag &&
          header_due_date_caption == o.header_due_date_caption &&
          header_po_number_visible_flag == o.header_po_number_visible_flag &&
          header_po_number_caption == o.header_po_number_caption &&
          header_reference_visible_flag == o.header_reference_visible_flag &&
          header_reference_caption == o.header_reference_caption &&
          header_account_visible_flag == o.header_account_visible_flag &&
          header_account_caption == o.header_account_caption &&
          header_tax_id_visible_flag == o.header_tax_id_visible_flag &&
          header_tax_id_caption == o.header_tax_id_caption &&
          header_ship_to_visible_flag == o.header_ship_to_visible_flag &&
          header_ship_to_caption == o.header_ship_to_caption &&
          service_header_ticket_number_visible_flag == o.service_header_ticket_number_visible_flag &&
          serivce_header_ticket_number_caption == o.serivce_header_ticket_number_caption &&
          service_header_company_name_visible_flag == o.service_header_company_name_visible_flag &&
          service_header_company_name_caption == o.service_header_company_name_caption &&
          service_header_summary_visible_flag == o.service_header_summary_visible_flag &&
          service_header_summary_caption == o.service_header_summary_caption &&
          service_header_contact_name_visible_flag == o.service_header_contact_name_visible_flag &&
          service_header_contact_name_caption == o.service_header_contact_name_caption &&
          service_header_detail_description_visible_flag == o.service_header_detail_description_visible_flag &&
          service_header_detail_description_caption == o.service_header_detail_description_caption &&
          service_header_resolution_visible_flag == o.service_header_resolution_visible_flag &&
          service_header_resolution_caption == o.service_header_resolution_caption &&
          service_header_amount_visible_flag == o.service_header_amount_visible_flag &&
          service_header_amount_caption == o.service_header_amount_caption &&
          service_header_billing_method_visible_flag == o.service_header_billing_method_visible_flag &&
          service_header_billing_method_caption == o.service_header_billing_method_caption &&
          service_header_closed_tasks_visible_flag == o.service_header_closed_tasks_visible_flag &&
          service_header_open_tasks_visible_flag == o.service_header_open_tasks_visible_flag &&
          service_header_bundled_tickets_visible_flag == o.service_header_bundled_tickets_visible_flag &&
          project_header_project_name_visible_flag == o.project_header_project_name_visible_flag &&
          project_header_project_name_caption == o.project_header_project_name_caption &&
          project_header_company_name_visible_flag == o.project_header_company_name_visible_flag &&
          project_header_company_name_caption == o.project_header_company_name_caption &&
          project_header_original_downpayment_visible_flag == o.project_header_original_downpayment_visible_flag &&
          project_header_original_downpayment_caption == o.project_header_original_downpayment_caption &&
          project_header_contact_name_visible_flag == o.project_header_contact_name_visible_flag &&
          project_header_contact_name_caption == o.project_header_contact_name_caption &&
          project_header_amount_visible_flag == o.project_header_amount_visible_flag &&
          project_header_amount_caption == o.project_header_amount_caption &&
          project_header_billing_method_visible_flag == o.project_header_billing_method_visible_flag &&
          project_header_billing_method_caption == o.project_header_billing_method_caption &&
          project_header_billing_type_visible_flag == o.project_header_billing_type_visible_flag &&
          project_header_billing_type_caption == o.project_header_billing_type_caption &&
          _info == o._info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, margin_left, margin_right, margin_top, margin_bottom, logo_visible_flag, header_logo_position, remit_to_visibile_flag, header_address_position, header_title_visibile_flag, header_title_caption, header_title_position, header_title_font, header_terms_visible_flag, header_terms_caption, header_due_date_visible_flag, header_due_date_caption, header_po_number_visible_flag, header_po_number_caption, header_reference_visible_flag, header_reference_caption, header_account_visible_flag, header_account_caption, header_tax_id_visible_flag, header_tax_id_caption, header_ship_to_visible_flag, header_ship_to_caption, service_header_ticket_number_visible_flag, serivce_header_ticket_number_caption, service_header_company_name_visible_flag, service_header_company_name_caption, service_header_summary_visible_flag, service_header_summary_caption, service_header_contact_name_visible_flag, service_header_contact_name_caption, service_header_detail_description_visible_flag, service_header_detail_description_caption, service_header_resolution_visible_flag, service_header_resolution_caption, service_header_amount_visible_flag, service_header_amount_caption, service_header_billing_method_visible_flag, service_header_billing_method_caption, service_header_closed_tasks_visible_flag, service_header_open_tasks_visible_flag, service_header_bundled_tickets_visible_flag, project_header_project_name_visible_flag, project_header_project_name_caption, project_header_company_name_visible_flag, project_header_company_name_caption, project_header_original_downpayment_visible_flag, project_header_original_downpayment_caption, project_header_contact_name_visible_flag, project_header_contact_name_caption, project_header_amount_visible_flag, project_header_amount_caption, project_header_billing_method_visible_flag, project_header_billing_method_caption, project_header_billing_type_visible_flag, project_header_billing_type_caption, _info].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ConnectWise.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
