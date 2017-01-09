#--
# Extension for ActiveRecord::Relation. (code taken from the array_extension.rb)
#++

module WillFilter
  module ActiveRecordRelationExtension

    def wf_filter=(filter)
      @wf_filter = filter
    end
  
    def wf_filter
      @wf_filter
    end
  
	def add_filter_condition(condition_key, operator_key, values = [])
	  sub_filter = wf_filter.dup
      sub_filter.replace_condition(condition_key, operator_key, values)
  	  sub_filter
	end

  end
end
