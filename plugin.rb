# frozen_string_literal: true

# name: extended-api-scopes
# about: A small Discourse plugin for extending API scopes
# version: 0.1
# authors: hernandoagf
# url: https://github.com/hernandoagf/extended-api-scopes
# required_version: 2.7.0
# transpile_js: true

enabled_site_setting :extended_api_scopes_enabled

after_initialize do
  add_api_key_scope(:logs, { index: { actions: %w[admin/staff_action_logs#index], params: %i[action_name] } })
end
