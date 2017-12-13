
require 'date'

module ConnectWise

  class PurchaseOrderLineItem
    attr_accessor :id

    attr_accessor :backordered_flag

    attr_accessor :canceled_by

    attr_accessor :canceled_flag

    attr_accessor :canceled_reason

    attr_accessor :closed_flag

    attr_accessor :date_canceled

    attr_accessor :date_canceled_utc

    attr_accessor :description

    attr_accessor :display_internal_notes_flag

    attr_accessor :expected_ship_date

    attr_accessor :internal_notes

    attr_accessor :line_number

    attr_accessor :packing_slip

    attr_accessor :product

    attr_accessor :purchase_order_id

    attr_accessor :quantity

    attr_accessor :received_quantity

    attr_accessor :serial_numbers

    attr_accessor :ship_date

    attr_accessor :shipment_method

    attr_accessor :tax

    attr_accessor :tracking_number

    attr_accessor :unit_cost

    attr_accessor :unit_of_measure

    attr_accessor :vendor_order_number

    attr_accessor :warehouse

    attr_accessor :warehouse_bin

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'backordered_flag' => :'backorderedFlag',
        :'canceled_by' => :'canceledBy',
        :'canceled_flag' => :'canceledFlag',
        :'canceled_reason' => :'canceledReason',
        :'closed_flag' => :'closedFlag',
        :'date_canceled' => :'dateCanceled',
        :'date_canceled_utc' => :'dateCanceledUtc',
        :'description' => :'description',
        :'display_internal_notes_flag' => :'displayInternalNotesFlag',
        :'expected_ship_date' => :'expectedShipDate',
        :'internal_notes' => :'internalNotes',
        :'line_number' => :'lineNumber',
        :'packing_slip' => :'packingSlip',
        :'product' => :'product',
        :'purchase_order_id' => :'purchaseOrderId',
        :'quantity' => :'quantity',
        :'received_quantity' => :'receivedQuantity',
        :'serial_numbers' => :'serialNumbers',
        :'ship_date' => :'shipDate',
        :'shipment_method' => :'shipmentMethod',
        :'tax' => :'tax',
        :'tracking_number' => :'trackingNumber',
        :'unit_cost' => :'unitCost',
        :'unit_of_measure' => :'unitOfMeasure',
        :'vendor_order_number' => :'vendorOrderNumber',
        :'warehouse' => :'warehouse',
        :'warehouse_bin' => :'warehouseBin',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'backordered_flag' => :'BOOLEAN',
        :'canceled_by' => :'String',
        :'canceled_flag' => :'BOOLEAN',
        :'canceled_reason' => :'String',
        :'closed_flag' => :'BOOLEAN',
        :'date_canceled' => :'DateTime',
        :'date_canceled_utc' => :'DateTime',
        :'description' => :'String',
        :'display_internal_notes_flag' => :'BOOLEAN',
        :'expected_ship_date' => :'DateTime',
        :'internal_notes' => :'String',
        :'line_number' => :'Integer',
        :'packing_slip' => :'String',
        :'product' => :'IvItemReference',
        :'purchase_order_id' => :'Integer',
        :'quantity' => :'Float',
        :'received_quantity' => :'Integer',
        :'serial_numbers' => :'String',
        :'ship_date' => :'DateTime',
        :'shipment_method' => :'ShipmentMethodReference',
        :'tax' => :'Float',
        :'tracking_number' => :'String',
        :'unit_cost' => :'Float',
        :'unit_of_measure' => :'UnitOfMeasureReference',
        :'vendor_order_number' => :'String',
        :'warehouse' => :'WarehouseReference',
        :'warehouse_bin' => :'WarehouseBinReference',
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

      if attributes.has_key?(:'backorderedFlag')
        self.backordered_flag = attributes[:'backorderedFlag']
      end

      if attributes.has_key?(:'canceledBy')
        self.canceled_by = attributes[:'canceledBy']
      end

      if attributes.has_key?(:'canceledFlag')
        self.canceled_flag = attributes[:'canceledFlag']
      end

      if attributes.has_key?(:'canceledReason')
        self.canceled_reason = attributes[:'canceledReason']
      end

      if attributes.has_key?(:'closedFlag')
        self.closed_flag = attributes[:'closedFlag']
      end

      if attributes.has_key?(:'dateCanceled')
        self.date_canceled = attributes[:'dateCanceled']
      end

      if attributes.has_key?(:'dateCanceledUtc')
        self.date_canceled_utc = attributes[:'dateCanceledUtc']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'displayInternalNotesFlag')
        self.display_internal_notes_flag = attributes[:'displayInternalNotesFlag']
      end

      if attributes.has_key?(:'expectedShipDate')
        self.expected_ship_date = attributes[:'expectedShipDate']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'lineNumber')
        self.line_number = attributes[:'lineNumber']
      end

      if attributes.has_key?(:'packingSlip')
        self.packing_slip = attributes[:'packingSlip']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'purchaseOrderId')
        self.purchase_order_id = attributes[:'purchaseOrderId']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'receivedQuantity')
        self.received_quantity = attributes[:'receivedQuantity']
      end

      if attributes.has_key?(:'serialNumbers')
        self.serial_numbers = attributes[:'serialNumbers']
      end

      if attributes.has_key?(:'shipDate')
        self.ship_date = attributes[:'shipDate']
      end

      if attributes.has_key?(:'shipmentMethod')
        self.shipment_method = attributes[:'shipmentMethod']
      end

      if attributes.has_key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.has_key?(:'trackingNumber')
        self.tracking_number = attributes[:'trackingNumber']
      end

      if attributes.has_key?(:'unitCost')
        self.unit_cost = attributes[:'unitCost']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'vendorOrderNumber')
        self.vendor_order_number = attributes[:'vendorOrderNumber']
      end

      if attributes.has_key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.has_key?(:'warehouseBin')
        self.warehouse_bin = attributes[:'warehouseBin']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@canceled_reason.nil? && @canceled_reason.to_s.length > 100
        invalid_properties.push("invalid value for 'canceled_reason', the character length must be smaller than or equal to 100.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 6000
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 6000.")
      end

      if !@internal_notes.nil? && @internal_notes.to_s.length > 1000
        invalid_properties.push("invalid value for 'internal_notes', the character length must be smaller than or equal to 1000.")
      end

      if @line_number.nil?
        invalid_properties.push("invalid value for 'line_number', line_number cannot be nil.")
      end

      if !@packing_slip.nil? && @packing_slip.to_s.length > 30
        invalid_properties.push("invalid value for 'packing_slip', the character length must be smaller than or equal to 30.")
      end

      if @product.nil?
        invalid_properties.push("invalid value for 'product', product cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if !@serial_numbers.nil? && @serial_numbers.to_s.length > 100
        invalid_properties.push("invalid value for 'serial_numbers', the character length must be smaller than or equal to 100.")
      end

      if !@tracking_number.nil? && @tracking_number.to_s.length > 50
        invalid_properties.push("invalid value for 'tracking_number', the character length must be smaller than or equal to 50.")
      end

      if @unit_of_measure.nil?
        invalid_properties.push("invalid value for 'unit_of_measure', unit_of_measure cannot be nil.")
      end

      if !@vendor_order_number.nil? && @vendor_order_number.to_s.length > 50
        invalid_properties.push("invalid value for 'vendor_order_number', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@canceled_reason.nil? && @canceled_reason.to_s.length > 100
      return false if @description.nil?
      return false if @description.to_s.length > 6000
      return false if !@internal_notes.nil? && @internal_notes.to_s.length > 1000
      return false if @line_number.nil?
      return false if !@packing_slip.nil? && @packing_slip.to_s.length > 30
      return false if @product.nil?
      return false if @quantity.nil?
      return false if !@serial_numbers.nil? && @serial_numbers.to_s.length > 100
      return false if !@tracking_number.nil? && @tracking_number.to_s.length > 50
      return false if @unit_of_measure.nil?
      return false if !@vendor_order_number.nil? && @vendor_order_number.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] canceled_reason Value to be assigned
    def canceled_reason=(canceled_reason)

      if !canceled_reason.nil? && canceled_reason.to_s.length > 100
        fail ArgumentError, "invalid value for 'canceled_reason', the character length must be smaller than or equal to 100."
      end

      @canceled_reason = canceled_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 6000
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 6000."
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] internal_notes Value to be assigned
    def internal_notes=(internal_notes)

      if !internal_notes.nil? && internal_notes.to_s.length > 1000
        fail ArgumentError, "invalid value for 'internal_notes', the character length must be smaller than or equal to 1000."
      end

      @internal_notes = internal_notes
    end

    # Custom attribute writer method with validation
    # @param [Object] packing_slip Value to be assigned
    def packing_slip=(packing_slip)

      if !packing_slip.nil? && packing_slip.to_s.length > 30
        fail ArgumentError, "invalid value for 'packing_slip', the character length must be smaller than or equal to 30."
      end

      @packing_slip = packing_slip
    end

    # Custom attribute writer method with validation
    # @param [Object] serial_numbers Value to be assigned
    def serial_numbers=(serial_numbers)

      if !serial_numbers.nil? && serial_numbers.to_s.length > 100
        fail ArgumentError, "invalid value for 'serial_numbers', the character length must be smaller than or equal to 100."
      end

      @serial_numbers = serial_numbers
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_number Value to be assigned
    def tracking_number=(tracking_number)

      if !tracking_number.nil? && tracking_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'tracking_number', the character length must be smaller than or equal to 50."
      end

      @tracking_number = tracking_number
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_order_number Value to be assigned
    def vendor_order_number=(vendor_order_number)

      if !vendor_order_number.nil? && vendor_order_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'vendor_order_number', the character length must be smaller than or equal to 50."
      end

      @vendor_order_number = vendor_order_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          backordered_flag == o.backordered_flag &&
          canceled_by == o.canceled_by &&
          canceled_flag == o.canceled_flag &&
          canceled_reason == o.canceled_reason &&
          closed_flag == o.closed_flag &&
          date_canceled == o.date_canceled &&
          date_canceled_utc == o.date_canceled_utc &&
          description == o.description &&
          display_internal_notes_flag == o.display_internal_notes_flag &&
          expected_ship_date == o.expected_ship_date &&
          internal_notes == o.internal_notes &&
          line_number == o.line_number &&
          packing_slip == o.packing_slip &&
          product == o.product &&
          purchase_order_id == o.purchase_order_id &&
          quantity == o.quantity &&
          received_quantity == o.received_quantity &&
          serial_numbers == o.serial_numbers &&
          ship_date == o.ship_date &&
          shipment_method == o.shipment_method &&
          tax == o.tax &&
          tracking_number == o.tracking_number &&
          unit_cost == o.unit_cost &&
          unit_of_measure == o.unit_of_measure &&
          vendor_order_number == o.vendor_order_number &&
          warehouse == o.warehouse &&
          warehouse_bin == o.warehouse_bin &&
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
      [id, backordered_flag, canceled_by, canceled_flag, canceled_reason, closed_flag, date_canceled, date_canceled_utc, description, display_internal_notes_flag, expected_ship_date, internal_notes, line_number, packing_slip, product, purchase_order_id, quantity, received_quantity, serial_numbers, ship_date, shipment_method, tax, tracking_number, unit_cost, unit_of_measure, vendor_order_number, warehouse, warehouse_bin, _info].hash
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
