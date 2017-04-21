=begin
#ConnectWise API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ConnectWise

  class DictionarystringString
    attr_accessor :comparer

    attr_accessor :count

    attr_accessor :keys

    attr_accessor :system_collections_generic_i_dictionary_t_key_t_value_keys

    attr_accessor :system_collections_generic_i_read_only_dictionary_t_key_t_value_keys

    attr_accessor :values

    attr_accessor :system_collections_generic_i_dictionary_t_key_t_value_values

    attr_accessor :system_collections_generic_i_read_only_dictionary_t_key_t_value_values

    attr_accessor :this

    attr_accessor :system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only

    attr_accessor :system_collections_i_collection_is_synchronized

    attr_accessor :system_collections_i_collection_sync_root

    attr_accessor :system_collections_i_dictionary_is_fixed_size

    attr_accessor :system_collections_i_dictionary_is_read_only

    attr_accessor :system_collections_i_dictionary_keys

    attr_accessor :system_collections_i_dictionary_values

    attr_accessor :system_collections_i_dictionary_item


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'comparer' => :'Comparer',
        :'count' => :'Count',
        :'keys' => :'Keys',
        :'system_collections_generic_i_dictionary_t_key_t_value_keys' => :'System.Collections.Generic.IDictionary<TKey,TValue>.Keys',
        :'system_collections_generic_i_read_only_dictionary_t_key_t_value_keys' => :'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Keys',
        :'values' => :'Values',
        :'system_collections_generic_i_dictionary_t_key_t_value_values' => :'System.Collections.Generic.IDictionary<TKey,TValue>.Values',
        :'system_collections_generic_i_read_only_dictionary_t_key_t_value_values' => :'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Values',
        :'this' => :'this[]',
        :'system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only' => :'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.IsReadOnly',
        :'system_collections_i_collection_is_synchronized' => :'System.Collections.ICollection.IsSynchronized',
        :'system_collections_i_collection_sync_root' => :'System.Collections.ICollection.SyncRoot',
        :'system_collections_i_dictionary_is_fixed_size' => :'System.Collections.IDictionary.IsFixedSize',
        :'system_collections_i_dictionary_is_read_only' => :'System.Collections.IDictionary.IsReadOnly',
        :'system_collections_i_dictionary_keys' => :'System.Collections.IDictionary.Keys',
        :'system_collections_i_dictionary_values' => :'System.Collections.IDictionary.Values',
        :'system_collections_i_dictionary_item' => :'System.Collections.IDictionary.Item'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'comparer' => :'IEqualityComparerstring',
        :'count' => :'Integer',
        :'keys' => :'KeyCollection',
        :'system_collections_generic_i_dictionary_t_key_t_value_keys' => :'ICollectionstring',
        :'system_collections_generic_i_read_only_dictionary_t_key_t_value_keys' => :'Array<String>',
        :'values' => :'ValueCollection',
        :'system_collections_generic_i_dictionary_t_key_t_value_values' => :'ICollectionstring',
        :'system_collections_generic_i_read_only_dictionary_t_key_t_value_values' => :'Array<String>',
        :'this' => :'String',
        :'system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only' => :'BOOLEAN',
        :'system_collections_i_collection_is_synchronized' => :'BOOLEAN',
        :'system_collections_i_collection_sync_root' => :'String',
        :'system_collections_i_dictionary_is_fixed_size' => :'BOOLEAN',
        :'system_collections_i_dictionary_is_read_only' => :'BOOLEAN',
        :'system_collections_i_dictionary_keys' => :'ICollection',
        :'system_collections_i_dictionary_values' => :'ICollection',
        :'system_collections_i_dictionary_item' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Comparer')
        self.comparer = attributes[:'Comparer']
      end

      if attributes.has_key?(:'Count')
        self.count = attributes[:'Count']
      end

      if attributes.has_key?(:'Keys')
        self.keys = attributes[:'Keys']
      end

      if attributes.has_key?(:'System.Collections.Generic.IDictionary<TKey,TValue>.Keys')
        self.system_collections_generic_i_dictionary_t_key_t_value_keys = attributes[:'System.Collections.Generic.IDictionary<TKey,TValue>.Keys']
      end

      if attributes.has_key?(:'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Keys')
        if (value = attributes[:'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Keys']).is_a?(Array)
          self.system_collections_generic_i_read_only_dictionary_t_key_t_value_keys = value
        end
      end

      if attributes.has_key?(:'Values')
        self.values = attributes[:'Values']
      end

      if attributes.has_key?(:'System.Collections.Generic.IDictionary<TKey,TValue>.Values')
        self.system_collections_generic_i_dictionary_t_key_t_value_values = attributes[:'System.Collections.Generic.IDictionary<TKey,TValue>.Values']
      end

      if attributes.has_key?(:'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Values')
        if (value = attributes[:'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Values']).is_a?(Array)
          self.system_collections_generic_i_read_only_dictionary_t_key_t_value_values = value
        end
      end

      if attributes.has_key?(:'this[]')
        self.this = attributes[:'this[]']
      end

      if attributes.has_key?(:'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.IsReadOnly')
        self.system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only = attributes[:'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.IsReadOnly']
      end

      if attributes.has_key?(:'System.Collections.ICollection.IsSynchronized')
        self.system_collections_i_collection_is_synchronized = attributes[:'System.Collections.ICollection.IsSynchronized']
      end

      if attributes.has_key?(:'System.Collections.ICollection.SyncRoot')
        self.system_collections_i_collection_sync_root = attributes[:'System.Collections.ICollection.SyncRoot']
      end

      if attributes.has_key?(:'System.Collections.IDictionary.IsFixedSize')
        self.system_collections_i_dictionary_is_fixed_size = attributes[:'System.Collections.IDictionary.IsFixedSize']
      end

      if attributes.has_key?(:'System.Collections.IDictionary.IsReadOnly')
        self.system_collections_i_dictionary_is_read_only = attributes[:'System.Collections.IDictionary.IsReadOnly']
      end

      if attributes.has_key?(:'System.Collections.IDictionary.Keys')
        self.system_collections_i_dictionary_keys = attributes[:'System.Collections.IDictionary.Keys']
      end

      if attributes.has_key?(:'System.Collections.IDictionary.Values')
        self.system_collections_i_dictionary_values = attributes[:'System.Collections.IDictionary.Values']
      end

      if attributes.has_key?(:'System.Collections.IDictionary.Item')
        self.system_collections_i_dictionary_item = attributes[:'System.Collections.IDictionary.Item']
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
          comparer == o.comparer &&
          count == o.count &&
          keys == o.keys &&
          system_collections_generic_i_dictionary_t_key_t_value_keys == o.system_collections_generic_i_dictionary_t_key_t_value_keys &&
          system_collections_generic_i_read_only_dictionary_t_key_t_value_keys == o.system_collections_generic_i_read_only_dictionary_t_key_t_value_keys &&
          values == o.values &&
          system_collections_generic_i_dictionary_t_key_t_value_values == o.system_collections_generic_i_dictionary_t_key_t_value_values &&
          system_collections_generic_i_read_only_dictionary_t_key_t_value_values == o.system_collections_generic_i_read_only_dictionary_t_key_t_value_values &&
          this == o.this &&
          system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only == o.system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only &&
          system_collections_i_collection_is_synchronized == o.system_collections_i_collection_is_synchronized &&
          system_collections_i_collection_sync_root == o.system_collections_i_collection_sync_root &&
          system_collections_i_dictionary_is_fixed_size == o.system_collections_i_dictionary_is_fixed_size &&
          system_collections_i_dictionary_is_read_only == o.system_collections_i_dictionary_is_read_only &&
          system_collections_i_dictionary_keys == o.system_collections_i_dictionary_keys &&
          system_collections_i_dictionary_values == o.system_collections_i_dictionary_values &&
          system_collections_i_dictionary_item == o.system_collections_i_dictionary_item
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [comparer, count, keys, system_collections_generic_i_dictionary_t_key_t_value_keys, system_collections_generic_i_read_only_dictionary_t_key_t_value_keys, values, system_collections_generic_i_dictionary_t_key_t_value_values, system_collections_generic_i_read_only_dictionary_t_key_t_value_values, this, system_collections_generic_i_collection_system_collections_generic_key_value_pair_t_key_t_value_is_read_only, system_collections_i_collection_is_synchronized, system_collections_i_collection_sync_root, system_collections_i_dictionary_is_fixed_size, system_collections_i_dictionary_is_read_only, system_collections_i_dictionary_keys, system_collections_i_dictionary_values, system_collections_i_dictionary_item].hash
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