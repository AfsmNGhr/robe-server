require 'simplecov'
require 'coveralls'
require 'pry'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

module ScannerHelper
  def new_module(imethod, method, private_imethod, private_method)
    Module.new do
      eval <<-EOS
        def #{imethod}; end
        private
        def #{private_imethod}; end
        class << self
          def #{method}; end
          private
          def #{private_method}; end
        end
      EOS
    end
  end

  def named_module(name, *args)
    new_module(*args).tap do |m|
      m.instance_eval "def __name__; \"#{name}\" end"
    end
  end
end
