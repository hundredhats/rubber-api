class RecordingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url
end
