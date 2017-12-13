
require 'date'

module ConnectWise

  class CatalogComponent
    attr_accessor :id

    attr_accessor :sequence_number

    attr_accessor :quantity

    attr_accessor :catalog_item

    attr_accessor :hide_price_flag

    attr_accessor :hide_item_identifier_flag

    attr_accessor :hide_description_flag

    attr_accessor :hide_quantity_flag

    attr_accessor :hide_extended_price_flag

    attr_accessor :parent_catalog_item

    attr_accessor :price

    attr_accessor :cost

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'sequence_number' => :'sequenceNumber',
        :'quantity' => :'quantity',
        :'catalog_item' => :'catalogItem',
        :'hide_price_flag' => :'hidePriceFlag',
        :'hide_item_identifier_flag' => :'hideItemIdentifierFlag',
        :'hide_description_flag' => :'hideDescriptionFlag',
        :'hide_quantity_flag' => :'hideQuantityFlag',
        :'hide_extended_price_flag' => :'hideExtendedPriceFlag',
        :'parent_catalog_item' => :'parentCatalogItem',
        :'price' => :'price',
        :'cost' => :'cost',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'sequence_number' => :'Integer',
        :'quantity' => :'Float',
        :'catalog_item' => :'CatalogItemReference',
        :'hide_price_flag' => :'BOOLEAN',
        :'hide_item_identifier_flag' => :'BOOLEAN',
        :'hide_description_flag' => :'BOOLEAN',
        :'hide_quantity_flag' => :'BOOLEAN',
        :'hide_extended_price_flag' => :'BOOLEAN',
        :'parent_catalog_item' => :'CatalogItemReference',
        :'price' => :'Float',
        :'cost' => :'Float',
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

      if attributes.has_key?(:'sequenceNumber')
        self.sequence_number = attributes[:'sequenceNumber']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'catalogItem')
        self.catalog_item = attributes[:'catalogItem']
      end

      if attributes.has_key?(:'hidePriceFlag')
        self.hide_price_flag = attributes[:'hidePriceFlag']
      end

      if attributes.has_key?(:'hideItemIdentifierFlag')
        self.hide_item_identifier_flag = attributes[:'hideItemIdentifierFlag']
      end

      if attributes.has_key?(:'hideDescriptionFlag')
        self.hide_description_flag = attributes[:'hideDescriptionFlag']
      end

      if attributes.has_key?(:'hideQuantityFlag')
        self.hide_quantity_flag = attributes[:'hideQuantityFlag']
      end

      if attributes.has_key?(:'hideExtendedPriceFlag')
        self.hide_extended_price_flag = attributes[:'hideExtendedPriceFlag']
      end

      if attributes.has_key?(:'parentCatalogItem')
        self.parent_catalog_item = attributes[:'parentCatalogItem']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @catalog_item.nil?
        invalid_properties.push("invalid value for 'catalog_item', catalog_item cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @quantity.nil?
      return false if @catalog_item.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sequence_number == o.sequence_number &&
          quantity == o.quantity &&
          catalog_item == o.catalog_item &&
          hide_price_flag == o.hide_price_flag &&
          hide_item_identifier_flag == o.hide_item_identifier_flag &&
          hide_description_flag == o.hide_description_flag &&
          hide_quantity_flag == o.hide_quantity_flag &&
          hide_extended_price_flag == o.hide_extended_price_flag &&
          parent_catalog_item == o.parent_catalog_item &&
          price == o.price &&
          cost == o.cost &&
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
      [id, sequence_number, quantity, catalog_item, hide_price_flag, hide_item_identifier_flag, hide_description_flag, hide_quantity_flag, hide_extended_price_flag, parent_catalog_item, price, cost, _info].hash
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
