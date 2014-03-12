require "array/to_proc/version"

module Array::ToProc
  def to_proc
    Proc.new do |object|
      self.inject(object) do |chain_element, method_name|
        chain_element.__send__ method_name
      end
    end
  end
end

Array.class_eval do
  include Array::ToProc
end
