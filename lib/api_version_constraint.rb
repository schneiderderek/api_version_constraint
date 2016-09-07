require "api_version_constraint/version"

class ApiVersionConstraint
  def initialize(version)
    @version = version.to_s
  end

  def matches?(request)
    version == request.params[:v].to_s
  end

  private

  attr_reader :version
end
