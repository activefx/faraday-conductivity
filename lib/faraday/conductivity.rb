require "faraday"

require "faraday/conductivity/version"

require "faraday/conductivity/extended_logging"
require "faraday/conductivity/mimetype"
require "faraday/conductivity/request_id"
require "faraday/conductivity/request_id_filter"
require "faraday/conductivity/user_agent"
require "faraday/conductivity/repeater"

module Faraday
  module Conductivity
  end
  register_middleware :middleware, :extended_logging => Faraday::Conductivity::ExtendedLogging
  register_middleware :request, :user_agent => Faraday::Conductivity::UserAgent
  register_middleware :request, :request_id => Faraday::Conductivity::RequestId
  register_middleware :request, :mimetype => Faraday::Conductivity::Mimetype
  register_middleware :middleware, :repeater => Faraday::Conductivity::Repeater
end

