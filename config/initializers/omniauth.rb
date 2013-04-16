Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'BUE2EqG8smNV36Jh7Spvag', 'dIVz6CEvQvnMElzAjb2rt2bUPbhsproU24o22Vc'
  :display => "popup"
end