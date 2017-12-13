
require 'date'

module ConnectWise

  class BillingSetup
    attr_accessor :id

    attr_accessor :remit_name

    attr_accessor :location

    attr_accessor :address_one

    attr_accessor :address_two

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip

    attr_accessor :country

    attr_accessor :phone

    attr_accessor :invoice_title

    attr_accessor :payable_name

    attr_accessor :topcomment

    attr_accessor :invoice_footer

    attr_accessor :quote_footer

    attr_accessor :overall_invoice_default

    attr_accessor :standard_invoice_actual

    attr_accessor :standard_invoice_fixed

    attr_accessor :progress_invoice

    attr_accessor :agreement_invoice

    attr_accessor :credit_memo_invoice

    attr_accessor :down_payment_invoice

    attr_accessor :misc_invoice

    attr_accessor :sales_order_invoice

    attr_accessor :exclude_do_not_bill_time_flag

    attr_accessor :exclude_do_not_bill_expense_flag

    attr_accessor :exclude_do_not_bill_product_flag

    attr_accessor :prefix_suffix_flag

    attr_accessor :prefix_suffix_text

    attr_accessor :charge_adj_to_firm_flag

    attr_accessor :no_watermark_flag

    attr_accessor :display_tax_flag

    attr_accessor :allow_restricted_dept_on_routing_flag

    attr_accessor :bill_ticket_separately_flag

    attr_accessor :bill_ticket_complete_flag

    attr_accessor :bill_ticket_unapproved_flag

    attr_accessor :bill_project_complete_flag

    attr_accessor :bill_project_unapproved_flag

    attr_accessor :progress_time_flag

    attr_accessor :restrict_project_downpayment_flag

    attr_accessor :bill_sales_order_complete_flag

    attr_accessor :bill_product_after_ship_flag

    attr_accessor :restrict_downpayment_flag

    attr_accessor :copy_non_service_products_flag

    attr_accessor :copy_service_products_flag

    attr_accessor :copy_agreement_products_flag

    attr_accessor :print_logo_flag

    attr_accessor :read_receipt_flag

    attr_accessor :delivery_receipt_flag

    attr_accessor :disable_routing_email_flag

    attr_accessor :email_template

    attr_accessor :localized_country

    attr_accessor :business_number

    attr_accessor :currency

    attr_accessor :custom_label

    attr_accessor :custom_text

    attr_accessor :company_code

    attr_accessor :exclude_avalara_flag

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
        :'remit_name' => :'remitName',
        :'location' => :'location',
        :'address_one' => :'addressOne',
        :'address_two' => :'addressTwo',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'country' => :'country',
        :'phone' => :'phone',
        :'invoice_title' => :'invoiceTitle',
        :'payable_name' => :'payableName',
        :'topcomment' => :'topcomment',
        :'invoice_footer' => :'invoiceFooter',
        :'quote_footer' => :'quoteFooter',
        :'overall_invoice_default' => :'overallInvoiceDefault',
        :'standard_invoice_actual' => :'standardInvoiceActual',
        :'standard_invoice_fixed' => :'standardInvoiceFixed',
        :'progress_invoice' => :'progressInvoice',
        :'agreement_invoice' => :'agreementInvoice',
        :'credit_memo_invoice' => :'creditMemoInvoice',
        :'down_payment_invoice' => :'downPaymentInvoice',
        :'misc_invoice' => :'miscInvoice',
        :'sales_order_invoice' => :'salesOrderInvoice',
        :'exclude_do_not_bill_time_flag' => :'excludeDoNotBillTimeFlag',
        :'exclude_do_not_bill_expense_flag' => :'excludeDoNotBillExpenseFlag',
        :'exclude_do_not_bill_product_flag' => :'excludeDoNotBillProductFlag',
        :'prefix_suffix_flag' => :'prefixSuffixFlag',
        :'prefix_suffix_text' => :'prefixSuffixText',
        :'charge_adj_to_firm_flag' => :'chargeAdjToFirmFlag',
        :'no_watermark_flag' => :'NoWatermarkFlag',
        :'display_tax_flag' => :'displayTaxFlag',
        :'allow_restricted_dept_on_routing_flag' => :'allowRestrictedDeptOnRoutingFlag',
        :'bill_ticket_separately_flag' => :'billTicketSeparatelyFlag',
        :'bill_ticket_complete_flag' => :'billTicketCompleteFlag',
        :'bill_ticket_unapproved_flag' => :'billTicketUnapprovedFlag',
        :'bill_project_complete_flag' => :'billProjectCompleteFlag',
        :'bill_project_unapproved_flag' => :'billProjectUnapprovedFlag',
        :'progress_time_flag' => :'progressTimeFlag',
        :'restrict_project_downpayment_flag' => :'restrictProjectDownpaymentFlag',
        :'bill_sales_order_complete_flag' => :'billSalesOrderCompleteFlag',
        :'bill_product_after_ship_flag' => :'billProductAfterShipFlag',
        :'restrict_downpayment_flag' => :'restrictDownpaymentFlag',
        :'copy_non_service_products_flag' => :'copyNonServiceProductsFlag',
        :'copy_service_products_flag' => :'copyServiceProductsFlag',
        :'copy_agreement_products_flag' => :'copyAgreementProductsFlag',
        :'print_logo_flag' => :'printLogoFlag',
        :'read_receipt_flag' => :'readReceiptFlag',
        :'delivery_receipt_flag' => :'deliveryReceiptFlag',
        :'disable_routing_email_flag' => :'disableRoutingEmailFlag',
        :'email_template' => :'emailTemplate',
        :'localized_country' => :'localizedCountry',
        :'business_number' => :'businessNumber',
        :'currency' => :'currency',
        :'custom_label' => :'customLabel',
        :'custom_text' => :'customText',
        :'company_code' => :'companyCode',
        :'exclude_avalara_flag' => :'excludeAvalaraFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'remit_name' => :'String',
        :'location' => :'SystemLocationReference',
        :'address_one' => :'String',
        :'address_two' => :'String',
        :'city' => :'String',
        :'state' => :'StateReference',
        :'zip' => :'String',
        :'country' => :'CountryReference',
        :'phone' => :'String',
        :'invoice_title' => :'String',
        :'payable_name' => :'String',
        :'topcomment' => :'String',
        :'invoice_footer' => :'String',
        :'quote_footer' => :'String',
        :'overall_invoice_default' => :'InvoiceTemplateReference',
        :'standard_invoice_actual' => :'InvoiceTemplateReference',
        :'standard_invoice_fixed' => :'InvoiceTemplateReference',
        :'progress_invoice' => :'InvoiceTemplateReference',
        :'agreement_invoice' => :'InvoiceTemplateReference',
        :'credit_memo_invoice' => :'InvoiceTemplateReference',
        :'down_payment_invoice' => :'InvoiceTemplateReference',
        :'misc_invoice' => :'InvoiceTemplateReference',
        :'sales_order_invoice' => :'InvoiceTemplateReference',
        :'exclude_do_not_bill_time_flag' => :'BOOLEAN',
        :'exclude_do_not_bill_expense_flag' => :'BOOLEAN',
        :'exclude_do_not_bill_product_flag' => :'BOOLEAN',
        :'prefix_suffix_flag' => :'String',
        :'prefix_suffix_text' => :'String',
        :'charge_adj_to_firm_flag' => :'BOOLEAN',
        :'no_watermark_flag' => :'BOOLEAN',
        :'display_tax_flag' => :'BOOLEAN',
        :'allow_restricted_dept_on_routing_flag' => :'BOOLEAN',
        :'bill_ticket_separately_flag' => :'BOOLEAN',
        :'bill_ticket_complete_flag' => :'BOOLEAN',
        :'bill_ticket_unapproved_flag' => :'BOOLEAN',
        :'bill_project_complete_flag' => :'BOOLEAN',
        :'bill_project_unapproved_flag' => :'BOOLEAN',
        :'progress_time_flag' => :'BOOLEAN',
        :'restrict_project_downpayment_flag' => :'BOOLEAN',
        :'bill_sales_order_complete_flag' => :'BOOLEAN',
        :'bill_product_after_ship_flag' => :'BOOLEAN',
        :'restrict_downpayment_flag' => :'BOOLEAN',
        :'copy_non_service_products_flag' => :'BOOLEAN',
        :'copy_service_products_flag' => :'BOOLEAN',
        :'copy_agreement_products_flag' => :'BOOLEAN',
        :'print_logo_flag' => :'BOOLEAN',
        :'read_receipt_flag' => :'BOOLEAN',
        :'delivery_receipt_flag' => :'BOOLEAN',
        :'disable_routing_email_flag' => :'BOOLEAN',
        :'email_template' => :'OrderStatusEmailTemplateReference',
        :'localized_country' => :'CountryReference',
        :'business_number' => :'String',
        :'currency' => :'CurrencyReference',
        :'custom_label' => :'String',
        :'custom_text' => :'String',
        :'company_code' => :'String',
        :'exclude_avalara_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'remitName')
        self.remit_name = attributes[:'remitName']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'addressOne')
        self.address_one = attributes[:'addressOne']
      end

      if attributes.has_key?(:'addressTwo')
        self.address_two = attributes[:'addressTwo']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'invoiceTitle')
        self.invoice_title = attributes[:'invoiceTitle']
      end

      if attributes.has_key?(:'payableName')
        self.payable_name = attributes[:'payableName']
      end

      if attributes.has_key?(:'topcomment')
        self.topcomment = attributes[:'topcomment']
      end

      if attributes.has_key?(:'invoiceFooter')
        self.invoice_footer = attributes[:'invoiceFooter']
      end

      if attributes.has_key?(:'quoteFooter')
        self.quote_footer = attributes[:'quoteFooter']
      end

      if attributes.has_key?(:'overallInvoiceDefault')
        self.overall_invoice_default = attributes[:'overallInvoiceDefault']
      end

      if attributes.has_key?(:'standardInvoiceActual')
        self.standard_invoice_actual = attributes[:'standardInvoiceActual']
      end

      if attributes.has_key?(:'standardInvoiceFixed')
        self.standard_invoice_fixed = attributes[:'standardInvoiceFixed']
      end

      if attributes.has_key?(:'progressInvoice')
        self.progress_invoice = attributes[:'progressInvoice']
      end

      if attributes.has_key?(:'agreementInvoice')
        self.agreement_invoice = attributes[:'agreementInvoice']
      end

      if attributes.has_key?(:'creditMemoInvoice')
        self.credit_memo_invoice = attributes[:'creditMemoInvoice']
      end

      if attributes.has_key?(:'downPaymentInvoice')
        self.down_payment_invoice = attributes[:'downPaymentInvoice']
      end

      if attributes.has_key?(:'miscInvoice')
        self.misc_invoice = attributes[:'miscInvoice']
      end

      if attributes.has_key?(:'salesOrderInvoice')
        self.sales_order_invoice = attributes[:'salesOrderInvoice']
      end

      if attributes.has_key?(:'excludeDoNotBillTimeFlag')
        self.exclude_do_not_bill_time_flag = attributes[:'excludeDoNotBillTimeFlag']
      end

      if attributes.has_key?(:'excludeDoNotBillExpenseFlag')
        self.exclude_do_not_bill_expense_flag = attributes[:'excludeDoNotBillExpenseFlag']
      end

      if attributes.has_key?(:'excludeDoNotBillProductFlag')
        self.exclude_do_not_bill_product_flag = attributes[:'excludeDoNotBillProductFlag']
      end

      if attributes.has_key?(:'prefixSuffixFlag')
        self.prefix_suffix_flag = attributes[:'prefixSuffixFlag']
      end

      if attributes.has_key?(:'prefixSuffixText')
        self.prefix_suffix_text = attributes[:'prefixSuffixText']
      end

      if attributes.has_key?(:'chargeAdjToFirmFlag')
        self.charge_adj_to_firm_flag = attributes[:'chargeAdjToFirmFlag']
      end

      if attributes.has_key?(:'NoWatermarkFlag')
        self.no_watermark_flag = attributes[:'NoWatermarkFlag']
      end

      if attributes.has_key?(:'displayTaxFlag')
        self.display_tax_flag = attributes[:'displayTaxFlag']
      end

      if attributes.has_key?(:'allowRestrictedDeptOnRoutingFlag')
        self.allow_restricted_dept_on_routing_flag = attributes[:'allowRestrictedDeptOnRoutingFlag']
      end

      if attributes.has_key?(:'billTicketSeparatelyFlag')
        self.bill_ticket_separately_flag = attributes[:'billTicketSeparatelyFlag']
      end

      if attributes.has_key?(:'billTicketCompleteFlag')
        self.bill_ticket_complete_flag = attributes[:'billTicketCompleteFlag']
      end

      if attributes.has_key?(:'billTicketUnapprovedFlag')
        self.bill_ticket_unapproved_flag = attributes[:'billTicketUnapprovedFlag']
      end

      if attributes.has_key?(:'billProjectCompleteFlag')
        self.bill_project_complete_flag = attributes[:'billProjectCompleteFlag']
      end

      if attributes.has_key?(:'billProjectUnapprovedFlag')
        self.bill_project_unapproved_flag = attributes[:'billProjectUnapprovedFlag']
      end

      if attributes.has_key?(:'progressTimeFlag')
        self.progress_time_flag = attributes[:'progressTimeFlag']
      end

      if attributes.has_key?(:'restrictProjectDownpaymentFlag')
        self.restrict_project_downpayment_flag = attributes[:'restrictProjectDownpaymentFlag']
      end

      if attributes.has_key?(:'billSalesOrderCompleteFlag')
        self.bill_sales_order_complete_flag = attributes[:'billSalesOrderCompleteFlag']
      end

      if attributes.has_key?(:'billProductAfterShipFlag')
        self.bill_product_after_ship_flag = attributes[:'billProductAfterShipFlag']
      end

      if attributes.has_key?(:'restrictDownpaymentFlag')
        self.restrict_downpayment_flag = attributes[:'restrictDownpaymentFlag']
      end

      if attributes.has_key?(:'copyNonServiceProductsFlag')
        self.copy_non_service_products_flag = attributes[:'copyNonServiceProductsFlag']
      end

      if attributes.has_key?(:'copyServiceProductsFlag')
        self.copy_service_products_flag = attributes[:'copyServiceProductsFlag']
      end

      if attributes.has_key?(:'copyAgreementProductsFlag')
        self.copy_agreement_products_flag = attributes[:'copyAgreementProductsFlag']
      end

      if attributes.has_key?(:'printLogoFlag')
        self.print_logo_flag = attributes[:'printLogoFlag']
      end

      if attributes.has_key?(:'readReceiptFlag')
        self.read_receipt_flag = attributes[:'readReceiptFlag']
      end

      if attributes.has_key?(:'deliveryReceiptFlag')
        self.delivery_receipt_flag = attributes[:'deliveryReceiptFlag']
      end

      if attributes.has_key?(:'disableRoutingEmailFlag')
        self.disable_routing_email_flag = attributes[:'disableRoutingEmailFlag']
      end

      if attributes.has_key?(:'emailTemplate')
        self.email_template = attributes[:'emailTemplate']
      end

      if attributes.has_key?(:'localizedCountry')
        self.localized_country = attributes[:'localizedCountry']
      end

      if attributes.has_key?(:'businessNumber')
        self.business_number = attributes[:'businessNumber']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'customLabel')
        self.custom_label = attributes[:'customLabel']
      end

      if attributes.has_key?(:'customText')
        self.custom_text = attributes[:'customText']
      end

      if attributes.has_key?(:'companyCode')
        self.company_code = attributes[:'companyCode']
      end

      if attributes.has_key?(:'excludeAvalaraFlag')
        self.exclude_avalara_flag = attributes[:'excludeAvalaraFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @remit_name.nil?
        invalid_properties.push("invalid value for 'remit_name', remit_name cannot be nil.")
      end

      if @remit_name.to_s.length > 50
        invalid_properties.push("invalid value for 'remit_name', the character length must be smaller than or equal to 50.")
      end

      if @location.nil?
        invalid_properties.push("invalid value for 'location', location cannot be nil.")
      end

      if !@address_one.nil? && @address_one.to_s.length > 50
        invalid_properties.push("invalid value for 'address_one', the character length must be smaller than or equal to 50.")
      end

      if !@address_two.nil? && @address_two.to_s.length > 50
        invalid_properties.push("invalid value for 'address_two', the character length must be smaller than or equal to 50.")
      end

      if !@city.nil? && @city.to_s.length > 50
        invalid_properties.push("invalid value for 'city', the character length must be smaller than or equal to 50.")
      end

      if !@zip.nil? && @zip.to_s.length > 12
        invalid_properties.push("invalid value for 'zip', the character length must be smaller than or equal to 12.")
      end

      if !@phone.nil? && @phone.to_s.length > 15
        invalid_properties.push("invalid value for 'phone', the character length must be smaller than or equal to 15.")
      end

      if @invoice_title.nil?
        invalid_properties.push("invalid value for 'invoice_title', invoice_title cannot be nil.")
      end

      if @invoice_title.to_s.length > 50
        invalid_properties.push("invalid value for 'invoice_title', the character length must be smaller than or equal to 50.")
      end

      if @payable_name.nil?
        invalid_properties.push("invalid value for 'payable_name', payable_name cannot be nil.")
      end

      if @payable_name.to_s.length > 50
        invalid_properties.push("invalid value for 'payable_name', the character length must be smaller than or equal to 50.")
      end

      if !@topcomment.nil? && @topcomment.to_s.length > 4000
        invalid_properties.push("invalid value for 'topcomment', the character length must be smaller than or equal to 4000.")
      end

      if !@invoice_footer.nil? && @invoice_footer.to_s.length > 500
        invalid_properties.push("invalid value for 'invoice_footer', the character length must be smaller than or equal to 500.")
      end

      if !@quote_footer.nil? && @quote_footer.to_s.length > 1000
        invalid_properties.push("invalid value for 'quote_footer', the character length must be smaller than or equal to 1000.")
      end

      if @overall_invoice_default.nil?
        invalid_properties.push("invalid value for 'overall_invoice_default', overall_invoice_default cannot be nil.")
      end

      if !@prefix_suffix_text.nil? && @prefix_suffix_text.to_s.length > 5
        invalid_properties.push("invalid value for 'prefix_suffix_text', the character length must be smaller than or equal to 5.")
      end

      if @email_template.nil?
        invalid_properties.push("invalid value for 'email_template', email_template cannot be nil.")
      end

      if !@business_number.nil? && @business_number.to_s.length > 50
        invalid_properties.push("invalid value for 'business_number', the character length must be smaller than or equal to 50.")
      end

      if !@custom_label.nil? && @custom_label.to_s.length > 50
        invalid_properties.push("invalid value for 'custom_label', the character length must be smaller than or equal to 50.")
      end

      if !@custom_text.nil? && @custom_text.to_s.length > 500
        invalid_properties.push("invalid value for 'custom_text', the character length must be smaller than or equal to 500.")
      end

      if !@company_code.nil? && @company_code.to_s.length > 250
        invalid_properties.push("invalid value for 'company_code', the character length must be smaller than or equal to 250.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @remit_name.nil?
      return false if @remit_name.to_s.length > 50
      return false if @location.nil?
      return false if !@address_one.nil? && @address_one.to_s.length > 50
      return false if !@address_two.nil? && @address_two.to_s.length > 50
      return false if !@city.nil? && @city.to_s.length > 50
      return false if !@zip.nil? && @zip.to_s.length > 12
      return false if !@phone.nil? && @phone.to_s.length > 15
      return false if @invoice_title.nil?
      return false if @invoice_title.to_s.length > 50
      return false if @payable_name.nil?
      return false if @payable_name.to_s.length > 50
      return false if !@topcomment.nil? && @topcomment.to_s.length > 4000
      return false if !@invoice_footer.nil? && @invoice_footer.to_s.length > 500
      return false if !@quote_footer.nil? && @quote_footer.to_s.length > 1000
      return false if @overall_invoice_default.nil?
      prefix_suffix_flag_validator = EnumAttributeValidator.new('String', ["Prefix", "Suffix"])
      return false unless prefix_suffix_flag_validator.valid?(@prefix_suffix_flag)
      return false if !@prefix_suffix_text.nil? && @prefix_suffix_text.to_s.length > 5
      return false if @email_template.nil?
      return false if !@business_number.nil? && @business_number.to_s.length > 50
      return false if !@custom_label.nil? && @custom_label.to_s.length > 50
      return false if !@custom_text.nil? && @custom_text.to_s.length > 500
      return false if !@company_code.nil? && @company_code.to_s.length > 250
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] remit_name Value to be assigned
    def remit_name=(remit_name)
      if remit_name.nil?
        fail ArgumentError, "remit_name cannot be nil"
      end

      if remit_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'remit_name', the character length must be smaller than or equal to 50."
      end

      @remit_name = remit_name
    end

    # Custom attribute writer method with validation
    # @param [Object] address_one Value to be assigned
    def address_one=(address_one)

      if !address_one.nil? && address_one.to_s.length > 50
        fail ArgumentError, "invalid value for 'address_one', the character length must be smaller than or equal to 50."
      end

      @address_one = address_one
    end

    # Custom attribute writer method with validation
    # @param [Object] address_two Value to be assigned
    def address_two=(address_two)

      if !address_two.nil? && address_two.to_s.length > 50
        fail ArgumentError, "invalid value for 'address_two', the character length must be smaller than or equal to 50."
      end

      @address_two = address_two
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)

      if !city.nil? && city.to_s.length > 50
        fail ArgumentError, "invalid value for 'city', the character length must be smaller than or equal to 50."
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] zip Value to be assigned
    def zip=(zip)

      if !zip.nil? && zip.to_s.length > 12
        fail ArgumentError, "invalid value for 'zip', the character length must be smaller than or equal to 12."
      end

      @zip = zip
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)

      if !phone.nil? && phone.to_s.length > 15
        fail ArgumentError, "invalid value for 'phone', the character length must be smaller than or equal to 15."
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_title Value to be assigned
    def invoice_title=(invoice_title)
      if invoice_title.nil?
        fail ArgumentError, "invoice_title cannot be nil"
      end

      if invoice_title.to_s.length > 50
        fail ArgumentError, "invalid value for 'invoice_title', the character length must be smaller than or equal to 50."
      end

      @invoice_title = invoice_title
    end

    # Custom attribute writer method with validation
    # @param [Object] payable_name Value to be assigned
    def payable_name=(payable_name)
      if payable_name.nil?
        fail ArgumentError, "payable_name cannot be nil"
      end

      if payable_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'payable_name', the character length must be smaller than or equal to 50."
      end

      @payable_name = payable_name
    end

    # Custom attribute writer method with validation
    # @param [Object] topcomment Value to be assigned
    def topcomment=(topcomment)

      if !topcomment.nil? && topcomment.to_s.length > 4000
        fail ArgumentError, "invalid value for 'topcomment', the character length must be smaller than or equal to 4000."
      end

      @topcomment = topcomment
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_footer Value to be assigned
    def invoice_footer=(invoice_footer)

      if !invoice_footer.nil? && invoice_footer.to_s.length > 500
        fail ArgumentError, "invalid value for 'invoice_footer', the character length must be smaller than or equal to 500."
      end

      @invoice_footer = invoice_footer
    end

    # Custom attribute writer method with validation
    # @param [Object] quote_footer Value to be assigned
    def quote_footer=(quote_footer)

      if !quote_footer.nil? && quote_footer.to_s.length > 1000
        fail ArgumentError, "invalid value for 'quote_footer', the character length must be smaller than or equal to 1000."
      end

      @quote_footer = quote_footer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prefix_suffix_flag Object to be assigned
    def prefix_suffix_flag=(prefix_suffix_flag)
      validator = EnumAttributeValidator.new('String', ["Prefix", "Suffix"])
      unless validator.valid?(prefix_suffix_flag)
        fail ArgumentError, "invalid value for 'prefix_suffix_flag', must be one of #{validator.allowable_values}."
      end
      @prefix_suffix_flag = prefix_suffix_flag
    end

    # Custom attribute writer method with validation
    # @param [Object] prefix_suffix_text Value to be assigned
    def prefix_suffix_text=(prefix_suffix_text)

      if !prefix_suffix_text.nil? && prefix_suffix_text.to_s.length > 5
        fail ArgumentError, "invalid value for 'prefix_suffix_text', the character length must be smaller than or equal to 5."
      end

      @prefix_suffix_text = prefix_suffix_text
    end

    # Custom attribute writer method with validation
    # @param [Object] business_number Value to be assigned
    def business_number=(business_number)

      if !business_number.nil? && business_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'business_number', the character length must be smaller than or equal to 50."
      end

      @business_number = business_number
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_label Value to be assigned
    def custom_label=(custom_label)

      if !custom_label.nil? && custom_label.to_s.length > 50
        fail ArgumentError, "invalid value for 'custom_label', the character length must be smaller than or equal to 50."
      end

      @custom_label = custom_label
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_text Value to be assigned
    def custom_text=(custom_text)

      if !custom_text.nil? && custom_text.to_s.length > 500
        fail ArgumentError, "invalid value for 'custom_text', the character length must be smaller than or equal to 500."
      end

      @custom_text = custom_text
    end

    # Custom attribute writer method with validation
    # @param [Object] company_code Value to be assigned
    def company_code=(company_code)

      if !company_code.nil? && company_code.to_s.length > 250
        fail ArgumentError, "invalid value for 'company_code', the character length must be smaller than or equal to 250."
      end

      @company_code = company_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          remit_name == o.remit_name &&
          location == o.location &&
          address_one == o.address_one &&
          address_two == o.address_two &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          country == o.country &&
          phone == o.phone &&
          invoice_title == o.invoice_title &&
          payable_name == o.payable_name &&
          topcomment == o.topcomment &&
          invoice_footer == o.invoice_footer &&
          quote_footer == o.quote_footer &&
          overall_invoice_default == o.overall_invoice_default &&
          standard_invoice_actual == o.standard_invoice_actual &&
          standard_invoice_fixed == o.standard_invoice_fixed &&
          progress_invoice == o.progress_invoice &&
          agreement_invoice == o.agreement_invoice &&
          credit_memo_invoice == o.credit_memo_invoice &&
          down_payment_invoice == o.down_payment_invoice &&
          misc_invoice == o.misc_invoice &&
          sales_order_invoice == o.sales_order_invoice &&
          exclude_do_not_bill_time_flag == o.exclude_do_not_bill_time_flag &&
          exclude_do_not_bill_expense_flag == o.exclude_do_not_bill_expense_flag &&
          exclude_do_not_bill_product_flag == o.exclude_do_not_bill_product_flag &&
          prefix_suffix_flag == o.prefix_suffix_flag &&
          prefix_suffix_text == o.prefix_suffix_text &&
          charge_adj_to_firm_flag == o.charge_adj_to_firm_flag &&
          no_watermark_flag == o.no_watermark_flag &&
          display_tax_flag == o.display_tax_flag &&
          allow_restricted_dept_on_routing_flag == o.allow_restricted_dept_on_routing_flag &&
          bill_ticket_separately_flag == o.bill_ticket_separately_flag &&
          bill_ticket_complete_flag == o.bill_ticket_complete_flag &&
          bill_ticket_unapproved_flag == o.bill_ticket_unapproved_flag &&
          bill_project_complete_flag == o.bill_project_complete_flag &&
          bill_project_unapproved_flag == o.bill_project_unapproved_flag &&
          progress_time_flag == o.progress_time_flag &&
          restrict_project_downpayment_flag == o.restrict_project_downpayment_flag &&
          bill_sales_order_complete_flag == o.bill_sales_order_complete_flag &&
          bill_product_after_ship_flag == o.bill_product_after_ship_flag &&
          restrict_downpayment_flag == o.restrict_downpayment_flag &&
          copy_non_service_products_flag == o.copy_non_service_products_flag &&
          copy_service_products_flag == o.copy_service_products_flag &&
          copy_agreement_products_flag == o.copy_agreement_products_flag &&
          print_logo_flag == o.print_logo_flag &&
          read_receipt_flag == o.read_receipt_flag &&
          delivery_receipt_flag == o.delivery_receipt_flag &&
          disable_routing_email_flag == o.disable_routing_email_flag &&
          email_template == o.email_template &&
          localized_country == o.localized_country &&
          business_number == o.business_number &&
          currency == o.currency &&
          custom_label == o.custom_label &&
          custom_text == o.custom_text &&
          company_code == o.company_code &&
          exclude_avalara_flag == o.exclude_avalara_flag &&
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
      [id, remit_name, location, address_one, address_two, city, state, zip, country, phone, invoice_title, payable_name, topcomment, invoice_footer, quote_footer, overall_invoice_default, standard_invoice_actual, standard_invoice_fixed, progress_invoice, agreement_invoice, credit_memo_invoice, down_payment_invoice, misc_invoice, sales_order_invoice, exclude_do_not_bill_time_flag, exclude_do_not_bill_expense_flag, exclude_do_not_bill_product_flag, prefix_suffix_flag, prefix_suffix_text, charge_adj_to_firm_flag, no_watermark_flag, display_tax_flag, allow_restricted_dept_on_routing_flag, bill_ticket_separately_flag, bill_ticket_complete_flag, bill_ticket_unapproved_flag, bill_project_complete_flag, bill_project_unapproved_flag, progress_time_flag, restrict_project_downpayment_flag, bill_sales_order_complete_flag, bill_product_after_ship_flag, restrict_downpayment_flag, copy_non_service_products_flag, copy_service_products_flag, copy_agreement_products_flag, print_logo_flag, read_receipt_flag, delivery_receipt_flag, disable_routing_email_flag, email_template, localized_country, business_number, currency, custom_label, custom_text, company_code, exclude_avalara_flag, _info].hash
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
