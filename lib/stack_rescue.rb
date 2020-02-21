require "stack_rescue/version"
require "stack_rescue/rails" if defined?(::Rails)

class StackRescue
  attr_accessor :exception, :site, :number_of_results

  def initialize(exception)
    @exception         = exception
    @site              = options.fetch(:site, "stackoverflow.com")
    @number_of_results = options.fetch(:number_of_results, 5)
  end

  def query
    site_query = site.nil? ? "" : "site:#{site}"
    "#{site_query} #{exception}"
  end

  def results
    search = Google::Search::Web.new :query => query
    search.response.first(number_of_results)
  end

  def to_s
    results.map do |link|
      "#{link.title}\n".blue + "#{link.uri}\n\n"
    end.join
  end

  def options
    Rails.configuration.stack_rescue
  end
end
