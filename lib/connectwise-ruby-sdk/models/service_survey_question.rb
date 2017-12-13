
require 'date'

module ConnectWise

  class ServiceSurveyQuestion
    attr_accessor :id

    attr_accessor :sequence_number

    attr_accessor :type

    attr_accessor :question

    attr_accessor :options

    attr_accessor :include_flag

    attr_accessor :required_flag

    attr_accessor :no_answer_points

    attr_accessor :survey_id

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
        :'sequence_number' => :'sequenceNumber',
        :'type' => :'type',
        :'question' => :'question',
        :'options' => :'options',
        :'include_flag' => :'includeFlag',
        :'required_flag' => :'requiredFlag',
        :'no_answer_points' => :'noAnswerPoints',
        :'survey_id' => :'surveyId',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'sequence_number' => :'Integer',
        :'type' => :'String',
        :'question' => :'String',
        :'options' => :'Array<ServiceSurveyQuestionOption>',
        :'include_flag' => :'BOOLEAN',
        :'required_flag' => :'BOOLEAN',
        :'no_answer_points' => :'Integer',
        :'survey_id' => :'Integer',
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'question')
        self.question = attributes[:'question']
      end

      if attributes.has_key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      end

      if attributes.has_key?(:'includeFlag')
        self.include_flag = attributes[:'includeFlag']
      end

      if attributes.has_key?(:'requiredFlag')
        self.required_flag = attributes[:'requiredFlag']
      end

      if attributes.has_key?(:'noAnswerPoints')
        self.no_answer_points = attributes[:'noAnswerPoints']
      end

      if attributes.has_key?(:'surveyId')
        self.survey_id = attributes[:'surveyId']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @question.nil?
        invalid_properties.push("invalid value for 'question', question cannot be nil.")
      end

      if @question.to_s.length > 1000
        invalid_properties.push("invalid value for 'question', the character length must be smaller than or equal to 1000.")
      end

      if !@no_answer_points.nil? && @no_answer_points > 32767
        invalid_properties.push("invalid value for 'no_answer_points', must be smaller than or equal to 32767.")
      end

      if !@no_answer_points.nil? && @no_answer_points < -32768
        invalid_properties.push("invalid value for 'no_answer_points', must be greater than or equal to -32768.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["OpenEnded", "Selection"])
      return false unless type_validator.valid?(@type)
      return false if @question.nil?
      return false if @question.to_s.length > 1000
      return false if !@no_answer_points.nil? && @no_answer_points > 32767
      return false if !@no_answer_points.nil? && @no_answer_points < -32768
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["OpenEnded", "Selection"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] question Value to be assigned
    def question=(question)
      if question.nil?
        fail ArgumentError, "question cannot be nil"
      end

      if question.to_s.length > 1000
        fail ArgumentError, "invalid value for 'question', the character length must be smaller than or equal to 1000."
      end

      @question = question
    end

    # Custom attribute writer method with validation
    # @param [Object] no_answer_points Value to be assigned
    def no_answer_points=(no_answer_points)

      if !no_answer_points.nil? && no_answer_points > 32767
        fail ArgumentError, "invalid value for 'no_answer_points', must be smaller than or equal to 32767."
      end

      if !no_answer_points.nil? && no_answer_points < -32768
        fail ArgumentError, "invalid value for 'no_answer_points', must be greater than or equal to -32768."
      end

      @no_answer_points = no_answer_points
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sequence_number == o.sequence_number &&
          type == o.type &&
          question == o.question &&
          options == o.options &&
          include_flag == o.include_flag &&
          required_flag == o.required_flag &&
          no_answer_points == o.no_answer_points &&
          survey_id == o.survey_id &&
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
      [id, sequence_number, type, question, options, include_flag, required_flag, no_answer_points, survey_id, _info].hash
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
