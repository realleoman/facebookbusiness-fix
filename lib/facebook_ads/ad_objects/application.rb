# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class Application < AdObject
    SUPPORTED_PLATFORMS = [
      "WEB",
      "CANVAS",
      "MOBILE_WEB",
      "IPHONE",
      "IPAD",
      "ANDROID",
      "WINDOWS",
      "AMAZON",
      "SUPPLEMENTARY_IMAGES",
      "GAMEROOM",
      "INSTANT_GAME",
    ]

    AN_PLATFORMS = [
      "IOS",
      "ANDROID",
      "MOBILE_WEB",
      "DESKTOP",
      "INSTANT_ARTICLES",
      "UNKNOWN",
    ]

    AGGREGATION_PERIOD = [
      "HOUR",
      "DAY",
      "TOTAL",
    ]

    BREAKDOWNS = [
      "AGE",
      "APP",
      "COUNTRY",
      "DELIVERY_METHOD",
      "DISPLAY_FORMAT",
      "DEAL",
      "DEAL_AD",
      "DEAL_PAGE",
      "GENDER",
      "PLACEMENT",
      "PLATFORM",
      "PROPERTY",
      "CLICKED_VIEW_TAG",
      "FAIL_REASON",
    ]

    METRICS = [
      "FB_AD_NETWORK_BIDDING_REQUEST",
      "FB_AD_NETWORK_BIDDING_RESPONSE",
      "FB_AD_NETWORK_BIDDING_BID_RATE",
      "FB_AD_NETWORK_BIDDING_WIN_RATE",
      "FB_AD_NETWORK_REQUEST",
      "FB_AD_NETWORK_FILLED_REQUEST",
      "FB_AD_NETWORK_FILL_RATE",
      "FB_AD_NETWORK_IMP",
      "FB_AD_NETWORK_SHOW_RATE",
      "FB_AD_NETWORK_CLICK",
      "FB_AD_NETWORK_CTR",
      "FB_AD_NETWORK_BIDDING_REVENUE",
      "FB_AD_NETWORK_REVENUE",
      "FB_AD_NETWORK_CPM",
      "FB_AD_NETWORK_VIDEO_GUARANTEE_REVENUE",
      "FB_AD_NETWORK_VIDEO_VIEW",
      "FB_AD_NETWORK_VIDEO_VIEW_RATE",
      "FB_AD_NETWORK_VIDEO_MRC",
      "FB_AD_NETWORK_VIDEO_MRC_RATE",
      "FB_AD_NETWORK_WIN_RATE",
      "FB_AD_NETWORK_DIRECT_TOTAL_REVENUE",
      "FB_AD_NETWORK_DIRECT_PUBLISHER_BILL",
      "FB_AD_NETWORK_FAST_CLICK_RATE",
      "FB_AD_NETWORK_FAST_RETURN_RATE",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE",
      "FB_AD_NETWORK_FAST_CLICK_NUMERATOR",
      "FB_AD_NETWORK_FAST_CLICK_DENOMINATOR",
      "FB_AD_NETWORK_FAST_RETURN_NUMERATOR",
      "FB_AD_NETWORK_FAST_RETURN_DENOMINATOR",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE_NUMERATOR",
      "FB_AD_NETWORK_CLICK_VALUE_SCORE_DENOMINATOR",
      "FB_AD_NETWORK_NO_FILL",
      "FB_AD_NETWORK_NO_BID",
    ]

    ORDERING_COLUMN = [
      "TIME",
      "VALUE",
      "METRIC",
    ]

    ORDERING_TYPE = [
      "ASCENDING",
      "DESCENDING",
    ]

    PLATFORM = [
      "ANDROID",
      "IOS",
    ]

    REQUEST_TYPE = [
      "APP_INDEXING",
      "PLUGIN",
      "BUTTON_SAMPLING",
    ]

    MUTATION_METHOD = [
      "REPLACE",
      "ADD",
      "DELETE",
    ]

    POST_METHOD = [
      "EYMT",
      "CODELESS",
    ]

    SCORE_TYPE = [
      "CUSTOM",
      "NUMERIC",
      "TIME",
    ]

    SORT_ORDER = [
      "HIGHER_IS_BETTER",
      "LOWER_IS_BETTER",
    ]

    ROLE = [
      "administrators",
      "developers",
      "testers",
      "insights users",
    ]


    field :an_ad_space_limit, 'int'
    field :an_platforms, { list: 'string' }
    field :android_key_hash, { list: 'string' }
    field :android_sdk_error_categories, { list: 'object' }
    field :app_domains, { list: 'string' }
    field :app_events_feature_bitmask, 'int'
    field :app_events_session_timeout, 'int'
    field :app_install_tracked, 'bool'
    field :app_name, 'string'
    field :app_signals_binding_ios, { list: 'object' }
    field :app_type, 'int'
    field :auth_dialog_data_help_url, 'string'
    field :auth_dialog_headline, 'string'
    field :auth_dialog_perms_explanation, 'string'
    field :auth_referral_default_activity_privacy, 'string'
    field :auth_referral_enabled, 'int'
    field :auth_referral_extended_perms, { list: 'string' }
    field :auth_referral_friend_perms, { list: 'string' }
    field :auth_referral_response_type, 'string'
    field :auth_referral_user_perms, { list: 'string' }
    field :auto_event_mapping_android, { list: 'object' }
    field :auto_event_mapping_ios, { list: 'object' }
    field :auto_event_setup_enabled, 'bool'
    field :canvas_fluid_height, 'bool'
    field :canvas_fluid_width, 'int'
    field :canvas_url, 'string'
    field :category, 'string'
    field :client_config, 'hash'
    field :company, 'string'
    field :configured_ios_sso, 'bool'
    field :contact_email, 'string'
    field :context, 'object'
    field :created_time, 'datetime'
    field :creator_uid, 'string'
    field :daily_active_users, 'string'
    field :daily_active_users_rank, 'int'
    field :deauth_callback_url, 'string'
    field :default_share_mode, 'string'
    field :description, 'string'
    field :financial_id, 'string'
    field :gdpv4_chrome_custom_tabs_enabled, 'bool'
    field :gdpv4_enabled, 'bool'
    field :gdpv4_nux_content, 'string'
    field :gdpv4_nux_enabled, 'bool'
    field :has_messenger_product, 'bool'
    field :hosting_url, 'string'
    field :icon_url, 'string'
    field :id, 'string'
    field :ios_bundle_id, { list: 'string' }
    field :ios_sdk_dialog_flows, 'object'
    field :ios_sdk_error_categories, { list: 'object' }
    field :ios_sfvc_attr, 'bool'
    field :ios_supports_native_proxy_auth_flow, 'bool'
    field :ios_supports_system_auth, 'bool'
    field :ipad_app_store_id, 'string'
    field :iphone_app_store_id, 'string'
    field :is_viewer_admin, 'bool'
    field :latest_sdk_version, 'object'
    field :link, 'string'
    field :logging_token, 'string'
    field :login_secret, 'string'
    field :logo_url, 'string'
    field :migrations, 'hash'
    field :mobile_profile_section_url, 'string'
    field :mobile_web_url, 'string'
    field :monthly_active_users, 'string'
    field :monthly_active_users_rank, 'int'
    field :name, 'string'
    field :namespace, 'string'
    field :object_store_urls, 'object'
    field :page_tab_default_name, 'string'
    field :page_tab_url, 'string'
    field :photo_url, 'string'
    field :privacy_policy_url, 'string'
    field :profile_section_url, 'string'
    field :property_id, 'string'
    field :real_time_mode_devices, { list: 'string' }
    field :restrictions, 'object'
    field :sdk_update_message, 'string'
    field :seamless_login, 'int'
    field :secure_canvas_url, 'string'
    field :secure_page_tab_url, 'string'
    field :server_ip_whitelist, 'string'
    field :smart_login_bookmark_icon_url, 'string'
    field :smart_login_menu_icon_url, 'string'
    field :social_discovery, 'int'
    field :subcategory, 'string'
    field :supported_platforms, { list: { enum: -> { SUPPORTED_PLATFORMS }} }
    field :supports_apprequests_fast_app_switch, 'object'
    field :supports_attribution, 'bool'
    field :supports_implicit_sdk_logging, 'bool'
    field :suppress_native_ios_gdp, 'bool'
    field :terms_of_service_url, 'string'
    field :url_scheme_suffix, 'string'
    field :user_support_email, 'string'
    field :user_support_url, 'string'
    field :website_url, 'string'
    field :weekly_active_users, 'string'
    has_no_delete

    has_edge :LocalServiceBookingTest do |edge|
      edge.post do |api|
        api.has_param :api_name, { enum: %w{AVAILABILITY }}
      end
    end

    has_edge :accounts do |edge|
      edge.delete do |api|
        api.has_param :type, { enum: %w{test-users }}
        api.has_param :uid, 'int'
      end
      edge.get do |api|
        api.has_param :type, { enum: %w{test-users }}
      end
      edge.post do |api|
        api.has_param :uid, 'int'
        api.has_param :owner_access_token, 'string'
        api.has_param :installed, 'bool'
        api.has_param :permissions, 'object'
        api.has_param :name, 'string'
        api.has_param :minor, 'bool'
        api.has_param :type, { enum: %w{test-users }}
      end
    end

    has_edge :achievements do |edge|
      edge.get 'OpenGraphObject' do |api|
        api.has_param :achievement, 'object'
      end
    end

    has_edge :activities do |edge|
      edge.post do |api|
        api.has_param :event, { enum: %w{MOBILE_APP_INSTALL CUSTOM_APP_EVENTS DEFERRED_APP_LINK }}
        api.has_param :attribution, 'string'
        api.has_param :advertiser_id, 'string'
        api.has_param :anon_id, 'string'
        api.has_param :advertiser_tracking_enabled, 'bool'
        api.has_param :application_tracking_enabled, 'bool'
        api.has_param :extinfo, 'object'
        api.has_param :bundle_id, 'string'
        api.has_param :bundle_version, 'string'
        api.has_param :bundle_short_version, 'string'
        api.has_param :auto_publish, 'bool'
        api.has_param :custom_events, { list: 'object' }
        api.has_param :custom_events_file, 'file'
        api.has_param :installer_package, 'string'
        api.has_param :migration_bundle, 'string'
        api.has_param :url_schemes, { list: 'string' }
        api.has_param :device_token, 'string'
        api.has_param :windows_attribution_id, 'string'
        api.has_param :consider_views, 'bool'
        api.has_param :include_video_data, 'bool'
        api.has_param :include_dwell_data, 'bool'
        api.has_param :page_id, 'int'
        api.has_param :page_scoped_user_id, 'int'
        api.has_param :ud, 'hash'
        api.has_param :user_id, 'string'
        api.has_param :user_id_type, { enum: %w{INSTANT_GAMES_PLAYER_ID }}
        api.has_param :app_user_id, 'string'
        api.has_param :receipt_data, 'string'
      end
    end

    has_edge :adnetworkanalytics do |edge|
      edge.get 'AdNetworkAnalyticsSyncQueryResult' do |api|
        api.has_param :aggregation_period, { enum: -> { Application::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { Application::BREAKDOWNS }} }
        api.has_param :filters, { list: 'hash' }
        api.has_param :limit, 'int'
        api.has_param :metrics, { list: { enum: -> { Application::METRICS }} }
        api.has_param :ordering_column, { enum: -> { Application::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { Application::ORDERING_TYPE }}
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
      edge.post 'Application' do |api|
        api.has_param :aggregation_period, { enum: -> { Application::AGGREGATION_PERIOD }}
        api.has_param :breakdowns, { list: { enum: -> { Application::BREAKDOWNS }} }
        api.has_param :metrics, { list: { enum: -> { Application::METRICS }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :limit, 'int'
        api.has_param :ordering_column, { enum: -> { Application::ORDERING_COLUMN }}
        api.has_param :ordering_type, { enum: -> { Application::ORDERING_TYPE }}
        api.has_param :since, 'object'
        api.has_param :until, 'object'
      end
    end

    has_edge :adnetworkanalytics_results do |edge|
      edge.get 'AdNetworkAnalyticsAsyncQueryResult' do |api|
        api.has_param :query_ids, { list: 'string' }
      end
    end

    has_edge :agencies do |edge|
      edge.get 'Business'
    end

    has_edge :android_dialog_configs do |edge|
      edge.get
    end

    has_edge :app_event_types do |edge|
      edge.get
    end

    has_edge :app_indexing do |edge|
      edge.post 'Application' do |api|
        api.has_param :app_version, 'string'
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
        api.has_param :tree, 'hash'
        api.has_param :extra_info, 'string'
        api.has_param :request_type, { enum: -> { Application::REQUEST_TYPE }}
        api.has_param :device_session_id, 'string'
      end
    end

    has_edge :app_indexing_session do |edge|
      edge.post 'Application' do |api|
        api.has_param :device_session_id, 'string'
        api.has_param :extinfo, 'string'
      end
    end

    has_edge :app_insights do |edge|
      edge.get do |api|
        api.has_param :metric_key, 'string'
        api.has_param :period, { enum: %w{mins_15 hourly daily weekly monthly lifetime days_28 range }}
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
        api.has_param :breakdowns, { list: 'string' }
        api.has_param :aggregateby, { enum: %w{COUNT COUNT_IDENTIFIED_USERS USERS TOPK SUM SUM_PER_EVENT SUM_IDENTIFIED_USERS USD_SUM USD_SUM_PER_EVENT USD_SUM_IDENTIFIED_USERS USD_SUM_PER_USER UNKNOWN_USERS SCORE MEDIAN_VALUE MEDIAN_VALUE_PER_USER DAU WAU MAU PERCENTILES_COUNT PERCENTILES_VALUE PERCENTILES_USD_VALUE OVERLAP COUNT_PER_USER VALUE_PER_USER USD_VALUE_PER_USER SESSIONS_PER_JOURNEY CONVERTED_JOURNEY_PERCENT MEDIAN_JOURNEY_LENGTH AVERAGE_JOURNEY_LENGTH JOURNEY_CHANNEL_INCLUSION EVENT_SOURCE_IDS SESSION_BOUNCE_RATE JOURNEY_INCLUSION USER_PROPERTY_USER_COUNT }}
        api.has_param :event_name, 'string'
        api.has_param :ecosystem, { enum: %w{GAME NON_GAME }}
        api.has_param :intervals_to_aggregate, 'int'
      end
    end

    has_edge :app_installed_groups do |edge|
      edge.get 'Group' do |api|
        api.has_param :group_id, 'object'
      end
    end

    has_edge :app_link_hosts do |edge|
      edge.post do |api|
        api.has_param :android, 'object'
        api.has_param :ios, 'object'
        api.has_param :ipad, 'object'
        api.has_param :iphone, 'object'
        api.has_param :web, 'object'
        api.has_param :windows_phone, 'object'
        api.has_param :windows, 'object'
        api.has_param :windows_universal, 'object'
        api.has_param :name, 'string'
      end
    end

    has_edge :app_push_device_token do |edge|
      edge.post 'Application' do |api|
        api.has_param :device_id, 'string'
        api.has_param :device_token, 'string'
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
      end
    end

    has_edge :appassets do |edge|
      edge.get
    end

    has_edge :assets do |edge|
      edge.post 'Application' do |api|
        api.has_param :asset, 'file'
        api.has_param :comment, 'string'
        api.has_param :type, 'string'
      end
    end

    has_edge :audiences do |edge|
      edge.get 'CustomAudience' do |api|
        api.has_param :ad_account, 'string'
      end
    end

    has_edge :authorized_adaccounts do |edge|
      edge.delete do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
      edge.get 'AdAccount' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'Application' do |api|
        api.has_param :account_id, 'string'
        api.has_param :business, 'string'
      end
    end

    has_edge :banned do |edge|
      edge.delete do |api|
        api.has_param :uids, { list: 'int' }
      end
      edge.get 'User' do |api|
        api.has_param :uid, 'int'
      end
      edge.post 'User' do |api|
        api.has_param :uids, { list: 'int' }
      end
    end

    has_edge :button_auto_detection_device_selection do |edge|
      edge.get do |api|
        api.has_param :device_id, 'string'
      end
    end

    has_edge :button_indexing do |edge|
      edge.post 'Application' do |api|
        api.has_param :app_version, 'string'
        api.has_param :indexed_button_list, { list: 'hash' }
        api.has_param :device_id, 'string'
        api.has_param :extinfo, 'string'
      end
    end

    has_edge :codeless_event_bindings do |edge|
      edge.post 'Application' do |api|
        api.has_param :mutation_method, { enum: -> { Application::MUTATION_METHOD }}
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
        api.has_param :bindings, { list: 'hash' }
      end
    end

    has_edge :codeless_event_mappings do |edge|
      edge.post 'Application' do |api|
        api.has_param :mutation_method, { enum: -> { Application::MUTATION_METHOD }}
        api.has_param :platform, { enum: -> { Application::PLATFORM }}
        api.has_param :post_method, { enum: -> { Application::POST_METHOD }}
        api.has_param :mappings, { list: 'hash' }
      end
    end

    has_edge :connections do |edge|
      edge.get
    end

    has_edge :custom_audience_third_party_id do |edge|
      edge.get do |api|
        api.has_param :limit_event_usage, 'bool'
        api.has_param :udid, 'string'
      end
    end

    has_edge :da_checks do |edge|
      edge.get 'DaCheck' do |api|
        api.has_param :checks, { list: 'string' }
      end
    end

    has_edge :direct_deals do |edge|
      edge.get 'DirectDeal'
    end

    has_edge :events do |edge|
      edge.get 'Event' do |api|
        api.has_param :type, { enum: -> { Event::TYPE }}
        api.has_param :include_canceled, 'bool'
      end
    end

    has_edge :food_drink_orders do |edge|
      edge.get do |api|
        api.has_param :order_id, 'string'
      end
      edge.post do |api|
        api.has_param :order_id, 'string'
        api.has_param :status, { enum: %w{CREATED CONFIRMED CANCELLED DELIVERED READY_FOR_PICKUP OUT_FOR_DELIVERY }}
      end
    end

    has_edge :full_app_indexing_infos do |edge|
      edge.get do |api|
        api.has_param :app_version, 'string'
      end
      edge.post do |api|
        api.has_param :app_version, 'string'
        api.has_param :full_app_indexing_info_classes, { list: 'hash' }
      end
    end

    has_edge :insights_event_labels do |edge|
      edge.get do |api|
        api.has_param :add, { list: 'string' }
        api.has_param :delete, 'int'
        api.has_param :ecosystem, 'bool'
        api.has_param :since, 'datetime'
        api.has_param :until, 'datetime'
      end
    end

    has_edge :ios_dialog_configs do |edge|
      edge.get
    end

    has_edge :leaderboards_create do |edge|
      edge.post 'Application' do |api|
        api.has_param :name, 'string'
        api.has_param :context_id, 'string'
        api.has_param :sort_order, { enum: -> { Application::SORT_ORDER }}
        api.has_param :score_type, { enum: -> { Application::SCORE_TYPE }}
        api.has_param :decimal_offset, 'int'
        api.has_param :unit, 'string'
      end
    end

    has_edge :leaderboards_delete_entry do |edge|
      edge.post 'Application' do |api|
        api.has_param :name, 'string'
        api.has_param :player_id, 'object'
      end
    end

    has_edge :leaderboards_reset do |edge|
      edge.post 'Application' do |api|
        api.has_param :name, 'string'
        api.has_param :reset_time, 'object'
      end
    end

    has_edge :leaderboards_set_score do |edge|
      edge.post 'Application' do |api|
        api.has_param :name, 'string'
        api.has_param :score, 'int'
        api.has_param :player_id, 'object'
        api.has_param :extra_data, 'string'
      end
    end

    has_edge :local_service_booking_config do |edge|
      edge.get
      edge.post do |api|
        api.has_param :base_url, 'object'
      end
    end

    has_edge :machines do |edge|
      edge.post
    end

    has_edge :mmp_auditing do |edge|
      edge.post do |api|
        api.has_param :event, 'string'
        api.has_param :is_fb, 'bool'
        api.has_param :fb_ad_id, 'int'
        api.has_param :attribution, 'string'
        api.has_param :advertiser_id, 'string'
        api.has_param :fb_click_time, 'int'
        api.has_param :fb_view_time, 'int'
        api.has_param :event_reported_time, 'int'
        api.has_param :attribution_model, 'string'
        api.has_param :click_attr_window, 'int'
        api.has_param :view_attr_window, 'int'
        api.has_param :decline_reason, 'string'
        api.has_param :auditing_token, 'string'
      end
    end

    has_edge :mobile_sdk_gk do |edge|
      edge.get do |api|
        api.has_param :device_id, 'string'
        api.has_param :platform, { enum: %w{ANDROID IOS }}
        api.has_param :sdk_version, 'string'
      end
    end

    has_edge :moods_for_application do |edge|
      edge.get
    end

    has_edge :object_types do |edge|
      edge.get
    end

    has_edge :objects do |edge|
      edge.get 'OpenGraphObject' do |api|
        api.has_param :type, 'object'
      end
      edge.post 'OpenGraphObject' do |api|
        api.has_param :object, 'object'
        api.has_param :type, 'string'
      end
    end

    has_edge :occludespopups do |edge|
      edge.post do |api|
        api.has_param :unity, 'bool'
        api.has_param :flash, 'bool'
      end
    end

    has_edge :ozone_release do |edge|
      edge.get
      edge.post do |api|
        api.has_param :release_name, 'string'
        api.has_param :changelog, 'string'
        api.has_param :rollout_percentage, 'double'
        api.has_param :auto_push_to_prod, 'bool'
        api.has_param :channel_id, 'int'
      end
    end

    has_edge :payment_currencies do |edge|
      edge.delete do |api|
        api.has_param :currency_url, 'string'
      end
      edge.post 'Application' do |api|
        api.has_param :currency_url, 'string'
      end
    end

    has_edge :payments_test_users do |edge|
      edge.delete do |api|
        api.has_param :uids, { list: 'int' }
      end
      edge.get 'User'
      edge.post 'Application' do |api|
        api.has_param :uids, { list: 'int' }
      end
    end

    has_edge :permissions do |edge|
      edge.get do |api|
        api.has_param :permission, 'object'
        api.has_param :status, { list: { enum: %w{live unapproved }} }
        api.has_param :android_key_hash, 'string'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :proxied_app_id, 'int'
      end
    end

    has_edge :photos do |edge|
      edge.post 'Photo' do |api|
        api.has_param :aid, 'string'
        api.has_param :caption, 'string'
        api.has_param :url, 'string'
        api.has_param :uid, 'int'
        api.has_param :profile_id, 'int'
        api.has_param :target_id, 'int'
        api.has_param :checkin_id, 'object'
        api.has_param :vault_image_id, 'string'
        api.has_param :tags, { list: 'object' }
        api.has_param :place, 'object'
        api.has_param :is_explicit_place, 'bool'
        api.has_param :is_explicit_location, 'bool'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :og_set_profile_badge, 'bool'
        api.has_param :privacy, 'object'
        api.has_param :targeting, 'object'
        api.has_param :feed_targeting, 'object'
        api.has_param :no_story, 'bool'
        api.has_param :published, 'bool'
        api.has_param :offline_id, 'int'
        api.has_param :attempt, 'int'
        api.has_param :backdated_time, 'datetime'
        api.has_param :backdated_time_granularity, { enum: -> { Photo::BACKDATED_TIME_GRANULARITY }}
        api.has_param :time_since_original_post, 'int'
        api.has_param :filter_type, 'int'
        api.has_param :scheduled_publish_time, 'int'
        api.has_param :unpublished_content_type, { enum: -> { Photo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :full_res_is_coming_later, 'bool'
        api.has_param :composer_session_id, 'string'
        api.has_param :qn, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :audience_exp, 'bool'
        api.has_param :proxied_app_id, 'string'
        api.has_param :ios_bundle_id, 'string'
        api.has_param :android_key_hash, 'string'
        api.has_param :user_selected_tags, 'bool'
        api.has_param :allow_spherical_photo, 'bool'
        api.has_param :spherical_metadata, 'hash'
        api.has_param :initial_view_heading_override_degrees, 'int'
        api.has_param :initial_view_pitch_override_degrees, 'int'
        api.has_param :initial_view_vertical_fov_override_degrees, 'int'
        api.has_param :sponsor_id, 'string'
        api.has_param :direct_share_status, 'int'
        api.has_param :sponsor_relationship, 'int'
        api.has_param :application_id, 'string'
        api.has_param :name, 'string'
        api.has_param :message, 'string'
      end
    end

    has_edge :picture do |edge|
      edge.get 'ProfilePictureSource' do |api|
        api.has_param :type, { enum: -> { ProfilePictureSource::TYPE }}
        api.has_param :redirect, 'bool'
      end
    end

    has_edge :products do |edge|
      edge.get do |api|
        api.has_param :product_ids, { list: 'string' }
      end
    end

    has_edge :purchases do |edge|
      edge.get do |api|
        api.has_param :is_premium, 'bool'
      end
    end

    has_edge :roles do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get
      edge.post 'Application' do |api|
        api.has_param :user, 'int'
        api.has_param :role, { enum: -> { Application::ROLE }}
      end
    end

    has_edge :stagingresources do |edge|
      edge.post 'Application' do |api|
        api.has_param :file, 'file'
      end
    end

    has_edge :subscribed_domains do |edge|
      edge.get
      edge.post 'Application' do |api|
        api.has_param :subscribe, { list: 'string' }
        api.has_param :unsubscribe, { list: 'string' }
      end
    end

    has_edge :subscribed_domains_phishing do |edge|
      edge.get
      edge.post 'Application' do |api|
        api.has_param :subscribe, { list: 'string' }
        api.has_param :unsubscribe, { list: 'string' }
      end
    end

    has_edge :subscriptions do |edge|
      edge.delete do |api|
        api.has_param :object, 'string'
        api.has_param :fields, { list: 'string' }
      end
      edge.post do |api|
        api.has_param :object, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :callback_url, 'object'
        api.has_param :verify_token, 'string'
        api.has_param :include_values, 'bool'
      end
    end

    has_edge :subscriptions_sample do |edge|
      edge.post 'Application' do |api|
        api.has_param :object_id, 'string'
        api.has_param :object, 'string'
        api.has_param :field, 'string'
        api.has_param :stress_run, 'int'
        api.has_param :custom_fields, 'string'
      end
    end

    has_edge :uploads do |edge|
      edge.post do |api|
        api.has_param :session_type, { enum: %w{attachment }}
        api.has_param :file_type, 'string'
        api.has_param :file_length, 'int'
        api.has_param :file_name, 'string'
      end
    end

    has_edge :user_properties do |edge|
      edge.post do |api|
        api.has_param :data, { list: 'object' }
      end
    end

  end
end
