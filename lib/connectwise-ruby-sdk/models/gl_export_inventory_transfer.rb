
require 'date'

module ConnectWise

  class GLExportInventoryTransfer
    attr_accessor :id

    attr_accessor :document_type

    attr_accessor :document_date

    attr_accessor :account_number

    attr_accessor :gl_class

    attr_accessor :gl_type_id

    attr_accessor :description

    attr_accessor :sales_code

    attr_accessor :memo

    attr_accessor :cost_acccount_number

    attr_accessor :inventory_account_number

    attr_accessor :transfer_id

    attr_accessor :item

    attr_accessor :gl_item_id

    attr_accessor :sales_description

    attr_accessor :item_description

    attr_accessor :currency

    attr_accessor :item_price

    attr_accessor :taxable

    attr_accessor :unit_of_measure

    attr_accessor :quantity

    attr_accessor :cost

    attr_accessor :total

    attr_accessor :sub_category

    attr_accessor :serialized_flag

    attr_accessor :serial_numbers

    attr_accessor :shipment_method

    attr_accessor :bin

    attr_accessor :warehouse

    attr_accessor :transfer_from_bin

    attr_accessor :transfer_from_location_xref

    attr_accessor :transfer_to_bin

    attr_accessor :transfer_to_location_xref

    attr_accessor :location_xref

    attr_accessor :price_level_xref

    attr_accessor :uom_schedule_xref

    attr_accessor :item_type_xref

    attr_accessor :inventory_xref

    attr_accessor :cogs_xref

    attr_accessor :tax_note

    attr_accessor :tax_code

    attr_accessor :offset


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'document_type' => :'documentType',
        :'document_date' => :'documentDate',
        :'account_number' => :'accountNumber',
        :'gl_class' => :'glClass',
        :'gl_type_id' => :'glTypeId',
        :'description' => :'description',
        :'sales_code' => :'salesCode',
        :'memo' => :'memo',
        :'cost_acccount_number' => :'costAcccountNumber',
        :'inventory_account_number' => :'inventoryAccountNumber',
        :'transfer_id' => :'transferId',
        :'item' => :'item',
        :'gl_item_id' => :'glItemId',
        :'sales_description' => :'salesDescription',
        :'item_description' => :'itemDescription',
        :'currency' => :'currency',
        :'item_price' => :'itemPrice',
        :'taxable' => :'taxable',
        :'unit_of_measure' => :'unitOfMeasure',
        :'quantity' => :'quantity',
        :'cost' => :'cost',
        :'total' => :'total',
        :'sub_category' => :'subCategory',
        :'serialized_flag' => :'serializedFlag',
        :'serial_numbers' => :'serialNumbers',
        :'shipment_method' => :'shipmentMethod',
        :'bin' => :'bin',
        :'warehouse' => :'warehouse',
        :'transfer_from_bin' => :'transferFromBin',
        :'transfer_from_location_xref' => :'transferFromLocationXref',
        :'transfer_to_bin' => :'transferToBin',
        :'transfer_to_location_xref' => :'transferToLocationXref',
        :'location_xref' => :'locationXref',
        :'price_level_xref' => :'priceLevelXref',
        :'uom_schedule_xref' => :'uomScheduleXref',
        :'item_type_xref' => :'itemTypeXref',
        :'inventory_xref' => :'inventoryXref',
        :'cogs_xref' => :'cogsXref',
        :'tax_note' => :'taxNote',
        :'tax_code' => :'taxCode',
        :'offset' => :'offset'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'document_type' => :'String',
        :'document_date' => :'DateTime',
        :'account_number' => :'String',
        :'gl_class' => :'String',
        :'gl_type_id' => :'String',
        :'description' => :'String',
        :'sales_code' => :'String',
        :'memo' => :'String',
        :'cost_acccount_number' => :'String',
        :'inventory_account_number' => :'String',
        :'transfer_id' => :'Integer',
        :'item' => :'IvItemReference',
        :'gl_item_id' => :'String',
        :'sales_description' => :'String',
        :'item_description' => :'String',
        :'currency' => :'CurrencyReference',
        :'item_price' => :'Float',
        :'taxable' => :'BOOLEAN',
        :'unit_of_measure' => :'UnitOfMeasureReference',
        :'quantity' => :'Float',
        :'cost' => :'Float',
        :'total' => :'Float',
        :'sub_category' => :'ProductSubCategoryReference',
        :'serialized_flag' => :'BOOLEAN',
        :'serial_numbers' => :'String',
        :'shipment_method' => :'ShipmentMethodReference',
        :'bin' => :'WarehouseBinReference',
        :'warehouse' => :'WarehouseReference',
        :'transfer_from_bin' => :'WarehouseBinReference',
        :'transfer_from_location_xref' => :'String',
        :'transfer_to_bin' => :'WarehouseBinReference',
        :'transfer_to_location_xref' => :'String',
        :'location_xref' => :'String',
        :'price_level_xref' => :'String',
        :'uom_schedule_xref' => :'String',
        :'item_type_xref' => :'String',
        :'inventory_xref' => :'String',
        :'cogs_xref' => :'String',
        :'tax_note' => :'String',
        :'tax_code' => :'TaxCodeReference',
        :'offset' => :'GLExportInventoryTransferOffset'
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

      if attributes.has_key?(:'documentType')
        self.document_type = attributes[:'documentType']
      end

      if attributes.has_key?(:'documentDate')
        self.document_date = attributes[:'documentDate']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'glClass')
        self.gl_class = attributes[:'glClass']
      end

      if attributes.has_key?(:'glTypeId')
        self.gl_type_id = attributes[:'glTypeId']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'salesCode')
        self.sales_code = attributes[:'salesCode']
      end

      if attributes.has_key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.has_key?(:'costAcccountNumber')
        self.cost_acccount_number = attributes[:'costAcccountNumber']
      end

      if attributes.has_key?(:'inventoryAccountNumber')
        self.inventory_account_number = attributes[:'inventoryAccountNumber']
      end

      if attributes.has_key?(:'transferId')
        self.transfer_id = attributes[:'transferId']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'glItemId')
        self.gl_item_id = attributes[:'glItemId']
      end

      if attributes.has_key?(:'salesDescription')
        self.sales_description = attributes[:'salesDescription']
      end

      if attributes.has_key?(:'itemDescription')
        self.item_description = attributes[:'itemDescription']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'itemPrice')
        self.item_price = attributes[:'itemPrice']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'subCategory')
        self.sub_category = attributes[:'subCategory']
      end

      if attributes.has_key?(:'serializedFlag')
        self.serialized_flag = attributes[:'serializedFlag']
      end

      if attributes.has_key?(:'serialNumbers')
        self.serial_numbers = attributes[:'serialNumbers']
      end

      if attributes.has_key?(:'shipmentMethod')
        self.shipment_method = attributes[:'shipmentMethod']
      end

      if attributes.has_key?(:'bin')
        self.bin = attributes[:'bin']
      end

      if attributes.has_key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.has_key?(:'transferFromBin')
        self.transfer_from_bin = attributes[:'transferFromBin']
      end

      if attributes.has_key?(:'transferFromLocationXref')
        self.transfer_from_location_xref = attributes[:'transferFromLocationXref']
      end

      if attributes.has_key?(:'transferToBin')
        self.transfer_to_bin = attributes[:'transferToBin']
      end

      if attributes.has_key?(:'transferToLocationXref')
        self.transfer_to_location_xref = attributes[:'transferToLocationXref']
      end

      if attributes.has_key?(:'locationXref')
        self.location_xref = attributes[:'locationXref']
      end

      if attributes.has_key?(:'priceLevelXref')
        self.price_level_xref = attributes[:'priceLevelXref']
      end

      if attributes.has_key?(:'uomScheduleXref')
        self.uom_schedule_xref = attributes[:'uomScheduleXref']
      end

      if attributes.has_key?(:'itemTypeXref')
        self.item_type_xref = attributes[:'itemTypeXref']
      end

      if attributes.has_key?(:'inventoryXref')
        self.inventory_xref = attributes[:'inventoryXref']
      end

      if attributes.has_key?(:'cogsXref')
        self.cogs_xref = attributes[:'cogsXref']
      end

      if attributes.has_key?(:'taxNote')
        self.tax_note = attributes[:'taxNote']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'offset')
        self.offset = attributes[:'offset']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          document_type == o.document_type &&
          document_date == o.document_date &&
          account_number == o.account_number &&
          gl_class == o.gl_class &&
          gl_type_id == o.gl_type_id &&
          description == o.description &&
          sales_code == o.sales_code &&
          memo == o.memo &&
          cost_acccount_number == o.cost_acccount_number &&
          inventory_account_number == o.inventory_account_number &&
          transfer_id == o.transfer_id &&
          item == o.item &&
          gl_item_id == o.gl_item_id &&
          sales_description == o.sales_description &&
          item_description == o.item_description &&
          currency == o.currency &&
          item_price == o.item_price &&
          taxable == o.taxable &&
          unit_of_measure == o.unit_of_measure &&
          quantity == o.quantity &&
          cost == o.cost &&
          total == o.total &&
          sub_category == o.sub_category &&
          serialized_flag == o.serialized_flag &&
          serial_numbers == o.serial_numbers &&
          shipment_method == o.shipment_method &&
          bin == o.bin &&
          warehouse == o.warehouse &&
          transfer_from_bin == o.transfer_from_bin &&
          transfer_from_location_xref == o.transfer_from_location_xref &&
          transfer_to_bin == o.transfer_to_bin &&
          transfer_to_location_xref == o.transfer_to_location_xref &&
          location_xref == o.location_xref &&
          price_level_xref == o.price_level_xref &&
          uom_schedule_xref == o.uom_schedule_xref &&
          item_type_xref == o.item_type_xref &&
          inventory_xref == o.inventory_xref &&
          cogs_xref == o.cogs_xref &&
          tax_note == o.tax_note &&
          tax_code == o.tax_code &&
          offset == o.offset
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, document_type, document_date, account_number, gl_class, gl_type_id, description, sales_code, memo, cost_acccount_number, inventory_account_number, transfer_id, item, gl_item_id, sales_description, item_description, currency, item_price, taxable, unit_of_measure, quantity, cost, total, sub_category, serialized_flag, serial_numbers, shipment_method, bin, warehouse, transfer_from_bin, transfer_from_location_xref, transfer_to_bin, transfer_to_location_xref, location_xref, price_level_xref, uom_schedule_xref, item_type_xref, inventory_xref, cogs_xref, tax_note, tax_code, offset].hash
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
