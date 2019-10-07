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

  class AdAccount < AdObject
    CURRENCY = [
      "AED",
      "ARS",
      "AUD",
      "BDT",
      "BOB",
      "BRL",
      "CAD",
      "CHF",
      "CLP",
      "CNY",
      "COP",
      "CRC",
      "CZK",
      "DKK",
      "DZD",
      "EGP",
      "EUR",
      "GBP",
      "GTQ",
      "HKD",
      "HNL",
      "HUF",
      "IDR",
      "ILS",
      "INR",
      "ISK",
      "JPY",
      "KES",
      "KRW",
      "MOP",
      "MXN",
      "MYR",
      "NGN",
      "NIO",
      "NOK",
      "NZD",
      "PEN",
      "PHP",
      "PKR",
      "PLN",
      "PYG",
      "QAR",
      "RON",
      "RUB",
      "SAR",
      "SEK",
      "SGD",
      "THB",
      "TRY",
      "TWD",
      "USD",
      "UYU",
      "VEF",
      "VND",
      "ZAR",
    ]

    PERMITTED_TASKS = [
      "MANAGE",
      "ADVERTISE",
      "ANALYZE",
    ]

    TASKS = [
      "MANAGE",
      "ADVERTISE",
      "ANALYZE",
    ]

    CLAIM_OBJECTIVE = [
      "AUTOMOTIVE_MODEL",
      "HOME_LISTING",
      "MEDIA_TITLE",
      "PRODUCT",
      "TRAVEL",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    CONTENT_TYPE = [
      "AUTOMOTIVE_MODEL",
      "DESTINATION",
      "FLIGHT",
      "HOME_LISTING",
      "HOTEL",
      "MEDIA_TITLE",
      "PRODUCT",
      "VEHICLE",
      "VEHICLE_OFFER",
    ]

    SUBTYPE = [
      "CUSTOM",
      "WEBSITE",
      "APP",
      "OFFLINE_CONVERSION",
      "CLAIM",
      "PARTNER",
      "MANAGED",
      "VIDEO",
      "LOOKALIKE",
      "ENGAGEMENT",
      "BAG_OF_ACCOUNTS",
      "STUDY_RULE_AUDIENCE",
      "FOX",
    ]


    field :account_id, 'string'
    field :account_status, 'int'
    field :ad_account_creation_request, 'AdAccountCreationRequest'
    field :ad_account_promotable_objects, 'AdAccountPromotableObjects'
    field :age, 'double'
    field :agency_client_declaration, 'AgencyClientDeclaration'
    field :amount_spent, 'string'
    field :attribution_spec, { list: 'AttributionSpec' }
    field :balance, 'string'
    field :business, 'Business'
    field :business_city, 'string'
    field :business_country_code, 'string'
    field :business_name, 'string'
    field :business_state, 'string'
    field :business_street, 'string'
    field :business_street2, 'string'
    field :business_zip, 'string'
    field :can_create_brand_lift_study, 'bool'
    field :capabilities, { list: 'string' }
    field :created_time, 'datetime'
    field :currency, 'string'
    field :direct_deals_tos_accepted, 'bool'
    field :disable_reason, 'int'
    field :end_advertiser, 'string'
    field :end_advertiser_name, 'string'
    field :extended_credit_invoice_group, 'ExtendedCreditInvoiceGroup'
    field :failed_delivery_checks, { list: 'DeliveryCheck' }
    field :funding_source, 'string'
    field :funding_source_details, 'FundingSourceDetails'
    field :has_migrated_permissions, 'bool'
    field :has_page_authorized_adaccount, 'bool'
    field :id, 'string'
    field :io_number, 'string'
    field :is_attribution_spec_system_default, 'bool'
    field :is_direct_deals_enabled, 'bool'
    field :is_in_3ds_authorization_enabled_market, 'bool'
    field :is_in_middle_of_local_entity_migration, 'bool'
    field :is_notifications_enabled, 'bool'
    field :is_personal, 'int'
    field :is_prepay_account, 'bool'
    field :is_tax_id_required, 'bool'
    field :line_numbers, { list: 'int' }
    field :media_agency, 'string'
    field :min_campaign_group_spend_cap, 'string'
    field :min_daily_budget, 'int'
    field :name, 'string'
    field :offsite_pixels_tos_accepted, 'bool'
    field :owner, 'string'
    field :partner, 'string'
    field :rf_spec, 'ReachFrequencySpec'
    field :show_checkout_experience, 'bool'
    field :spend_cap, 'string'
    field :tax_id, 'string'
    field :tax_id_status, 'int'
    field :tax_id_type, 'string'
    field :timezone_id, 'int'
    field :timezone_name, 'string'
    field :timezone_offset_hours_utc, 'double'
    field :tos_accepted, 'hash'
    field :user_role, 'string'
    field :user_tos_accepted, 'hash'
    has_no_delete

    has_edge :activities do |edge|
      edge.get 'AdActivity' do |api|
        api.has_param :after, 'string'
        api.has_param :limit, 'int'
        api.has_param :since, 'datetime'
        api.has_param :category, { enum: -> { AdActivity::CATEGORY }}
        api.has_param :until, 'datetime'
        api.has_param :uid, 'int'
        api.has_param :business_id, 'string'
        api.has_param :oid, 'string'
        api.has_param :extra_oids, { list: 'string' }
        api.has_param :add_children, 'bool'
      end
    end

    has_edge :ad_place_page_sets do |edge|
      edge.get 'AdPlacePageSet'
      edge.post 'AdPlacePageSet' do |api|
        api.has_param :name, 'string'
        api.has_param :location_types, { list: { enum: -> { AdPlacePageSet::LOCATION_TYPES }} }
        api.has_param :parent_page, 'string'
        api.has_param :targeted_area_type, { enum: -> { AdPlacePageSet::TARGETED_AREA_TYPE }}
      end
    end

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :adasset_feeds do |edge|
      edge.post do |api|
        api.has_param :images, { list: 'object' }
        api.has_param :videos, { list: 'object' }
        api.has_param :bodies, { list: 'object' }
        api.has_param :call_to_action_types, { list: { enum: %w{OPEN_LINK LIKE_PAGE SHOP_NOW PLAY_GAME INSTALL_APP USE_APP CALL CALL_ME INSTALL_MOBILE_APP USE_MOBILE_APP MOBILE_DOWNLOAD BOOK_TRAVEL LISTEN_MUSIC WATCH_VIDEO LEARN_MORE SIGN_UP DOWNLOAD WATCH_MORE NO_BUTTON VISIT_PAGES_FEED APPLY_NOW BUY_NOW GET_OFFER GET_OFFER_VIEW BUY_TICKETS UPDATE_APP GET_DIRECTIONS BUY MESSAGE_PAGE DONATE SUBSCRIBE SAY_THANKS SELL_NOW SHARE DONATE_NOW GET_QUOTE CONTACT_US ORDER_NOW ADD_TO_CART VIDEO_ANNOTATION MOMENTS RECORD_NOW GET_SHOWTIMES LISTEN_NOW WOODHENGE_SUPPORT EVENT_RSVP WHATSAPP_MESSAGE FOLLOW_NEWS_STORYLINE SEE_MORE }} }
        api.has_param :descriptions, { list: 'object' }
        api.has_param :link_urls, { list: 'object' }
        api.has_param :titles, { list: 'object' }
        api.has_param :captions, { list: 'object' }
        api.has_param :ad_formats, { list: { enum: %w{AUTOMATIC_FORMAT CAROUSEL_IMAGE CAROUSEL_VIDEO SINGLE_IMAGE SINGLE_VIDEO }} }
        api.has_param :groups, { list: 'object' }
        api.has_param :target_rules, { list: 'object' }
        api.has_param :asset_customization_rules, { list: 'object' }
        api.has_param :optimization_type, { enum: %w{REGULAR LANGUAGE PLACEMENT VIDEO_BANDWIDTH BRAND ASSET_CUSTOMIZATION DCO_PARITY PREVIEW_DYNAMIC_RENDERING }}
        api.has_param :call_to_actions, { list: 'object' }
        api.has_param :autotranslate, { list: 'string' }
        api.has_param :additional_data, 'hash'
      end
    end

    has_edge :adcontracts do |edge|
      edge.get 'AdContract'
    end

    has_edge :adcreatives do |edge|
      edge.get 'AdCreative'
      edge.post 'AdCreative' do |api|
        api.has_param :actor_id, 'int'
        api.has_param :adlabels, { list: 'object' }
        api.has_param :applink_treatment, { enum: -> { AdCreative::APPLINK_TREATMENT }}
        api.has_param :asset_feed_id, 'string'
        api.has_param :asset_feed_spec, 'object'
        api.has_param :authorization_category, { enum: -> { AdCreative::AUTHORIZATION_CATEGORY }}
        api.has_param :is_dco_internal, 'bool'
        api.has_param :body, 'string'
        api.has_param :branded_content_sponsor_page_id, 'string'
        api.has_param :bundle_folder_id, 'string'
        api.has_param :categorization_criteria, { enum: -> { AdCreative::CATEGORIZATION_CRITERIA }}
        api.has_param :category_media_source, { enum: -> { AdCreative::CATEGORY_MEDIA_SOURCE }}
        api.has_param :call_to_action, 'object'
        api.has_param :dynamic_ad_voice, { enum: -> { AdCreative::DYNAMIC_AD_VOICE }}
        api.has_param :destination_set_id, 'object'
        api.has_param :enable_direct_install, 'bool'
        api.has_param :enable_launch_instant_app, 'bool'
        api.has_param :image_crops, 'hash'
        api.has_param :image_file, 'string'
        api.has_param :image_hash, 'string'
        api.has_param :image_url, 'string'
        api.has_param :instagram_actor_id, 'string'
        api.has_param :instagram_permalink_url, 'string'
        api.has_param :portrait_customizations, 'hash'
        api.has_param :link_og_id, 'string'
        api.has_param :link_url, 'string'
        api.has_param :name, 'string'
        api.has_param :object_id, 'int'
        api.has_param :object_story_id, 'string'
        api.has_param :object_type, 'string'
        api.has_param :object_url, 'string'
        api.has_param :platform_customizations, 'object'
        api.has_param :playable_asset_id, 'string'
        api.has_param :product_set_id, 'string'
        api.has_param :recommender_settings, 'hash'
        api.has_param :messenger_sponsored_message, 'string'
        api.has_param :template_url, 'string'
        api.has_param :template_url_spec, 'object'
        api.has_param :thumbnail_url, 'string'
        api.has_param :title, 'string'
        api.has_param :url_tags, 'string'
        api.has_param :use_page_actor_override, 'bool'
        api.has_param :object_story_spec, 'AdCreativeObjectStorySpec'
      end
    end

    has_edge :adcreatives_from_mockups do |edge|
      edge.post 'AdCreative' do |api|
        api.has_param :mockup_id, 'string'
        api.has_param :page_id, 'string'
      end
    end

    has_edge :adcreativesbylabels do |edge|
      edge.get 'AdCreative' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { AdCreative::OPERATOR }}
      end
    end

    has_edge :adimages do |edge|
      edge.delete do |api|
        api.has_param :hash, 'string'
      end
      edge.get 'AdImage' do |api|
        api.has_param :hashes, { list: 'string' }
        api.has_param :minwidth, 'int'
        api.has_param :minheight, 'int'
        api.has_param :name, 'string'
        api.has_param :biz_tag_id, 'int'
        api.has_param :business_id, 'string'
      end
      edge.post list: 'AdImage' do |api|
        api.has_param :zipbytes, 'object'
        api.has_param :bytes, 'object'
        api.has_param :copy_from, 'object'
        api.accepts_files!
      end
    end

    has_edge :adlabels do |edge|
      edge.get 'AdLabel'
      edge.post 'AdLabel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :adlanguage_assets do |edge|
      edge.post do |api|
        api.has_param :image, 'object'
        api.has_param :video, 'object'
        api.has_param :call_to_action_type, { enum: %w{OPEN_LINK LIKE_PAGE SHOP_NOW PLAY_GAME INSTALL_APP USE_APP CALL CALL_ME INSTALL_MOBILE_APP USE_MOBILE_APP MOBILE_DOWNLOAD BOOK_TRAVEL LISTEN_MUSIC WATCH_VIDEO LEARN_MORE SIGN_UP DOWNLOAD WATCH_MORE NO_BUTTON VISIT_PAGES_FEED APPLY_NOW BUY_NOW GET_OFFER GET_OFFER_VIEW BUY_TICKETS UPDATE_APP GET_DIRECTIONS BUY MESSAGE_PAGE DONATE SUBSCRIBE SAY_THANKS SELL_NOW SHARE DONATE_NOW GET_QUOTE CONTACT_US ORDER_NOW ADD_TO_CART VIDEO_ANNOTATION MOMENTS RECORD_NOW GET_SHOWTIMES LISTEN_NOW WOODHENGE_SUPPORT EVENT_RSVP WHATSAPP_MESSAGE FOLLOW_NEWS_STORYLINE SEE_MORE }}
        api.has_param :bodies, { list: 'object' }
        api.has_param :descriptions, { list: 'object' }
        api.has_param :titles, { list: 'object' }
        api.has_param :link_urls, { list: 'object' }
        api.has_param :default_language, 'string'
      end
    end

    has_edge :adplayables do |edge|
      edge.get 'PlayableContent'
      edge.post 'PlayableContent' do |api|
        api.has_param :name, 'string'
        api.has_param :source, 'file'
        api.has_param :source_url, 'string'
      end
    end

    has_edge :adreportruns do |edge|
      edge.delete
      edge.get 'AdReportRun'
    end

    has_edge :adreportschedules do |edge|
      edge.get
      edge.post do |api|
        api.has_param :name, 'string'
        api.has_param :user_columns, { list: 'string' }
        api.has_param :user_attribution_windows, { list: 'string' }
        api.has_param :builtin_column_set, { enum: %w{ APP_ENGAGEMENT AUDIENCE_DIRECT BIDDING_AND_OPTIMIZATION CAROUSEL_ENGAGEMENT CROSS_DEVICE DELIVERY ENGAGEMENT HOUSEHOLD MESSAGING_ENGAGEMENT MESSENGER OFFLINE_CONVERSIONS PERFORMANCE PERFORMANCE_LEGACY TARGETING_AND_CREATIVE VIDEO_ENGAGEMENT VALIDATION_VIEW }}
        api.has_param :normalized_filter, { list: 'object' }
        api.has_param :user_filter, { list: 'object' }
        api.has_param :sort, { list: 'object' }
        api.has_param :breakdowns, { list: 'string' }
        api.has_param :insights_section, 'object'
        api.has_param :level, { enum: %w{politicalad ad adgroup campaign campaign_group account }}
        api.has_param :date_preset, { enum: %w{today yesterday this_month last_month this_quarter lifetime last_3d last_7d last_14d last_28d last_30d last_90d last_week_mon_sun last_week_sun_sat last_quarter last_year this_week_mon_today this_week_sun_today this_year }}
        api.has_param :date_interval, 'object'
        api.has_param :format_version, 'int'
        api.has_param :creation_source, { enum: %w{adsManagerReporting newAdsManager adsExcelAddin }}
        api.has_param :actions_group_by, { list: { enum: %w{action_canvas_component_id action_canvas_component_name action_carousel_card_id action_carousel_card_name action_destination action_device action_event_channel action_target_id action_type action_video_sound action_video_type action_converted_product_id }} }
        api.has_param :custom_column_set_id, 'string'
        api.has_param :data_columns, { list: 'string' }
        api.has_param :emails, { list: 'string' }
        api.has_param :export_columns, 'object'
        api.has_param :filters, { list: 'object' }
        api.has_param :schedule_frequency, { enum: %w{daily weekly monthly }}
        api.has_param :sort_by, 'string'
        api.has_param :sort_dir, 'string'
        api.has_param :start_date, 'object'
        api.has_param :status, { enum: %w{Active Paused Deleted }}
        api.has_param :subscribers, { list: 'int' }
        api.has_param :time_increment, 'string'
      end
    end

    has_edge :adreportspecs do |edge|
      edge.post 'AdReportSpec' do |api|
        api.has_param :time_ranges, 'object'
        api.has_param :data_columns, { list: 'string' }
        api.has_param :actions_group_by, { list: { enum: -> { AdReportSpec::ACTIONS_GROUP_BY }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :sort_by, 'string'
        api.has_param :sort_dir, 'string'
        api.has_param :time_increment, 'string'
        api.has_param :time_interval, 'object'
        api.has_param :date_preset, { enum: -> { AdReportSpec::DATE_PRESET }}
        api.has_param :format, { enum: -> { AdReportSpec::FORMAT }}
        api.has_param :export_columns, 'object'
        api.has_param :report_run_id, 'string'
        api.has_param :name, 'string'
        api.has_param :user_report, 'bool'
        api.has_param :business_id, 'string'
        api.has_param :limit, 'int'
        api.has_param :bypass_async, 'bool'
        api.has_param :report_schedule_id, 'string'
        api.has_param :insights_section, 'object'
        api.has_param :creation_source, { enum: -> { AdReportSpec::CREATION_SOURCE }}
        api.has_param :format_version, 'int'
      end
    end

    has_edge :adrules_history do |edge|
      edge.get 'AdAccountAdRulesHistory' do |api|
        api.has_param :object_id, 'string'
        api.has_param :action, { enum: -> { AdAccountAdRulesHistory::ACTION }}
        api.has_param :hide_no_changes, 'bool'
        api.has_param :evaluation_type, { enum: -> { AdAccountAdRulesHistory::EVALUATION_TYPE }}
      end
    end

    has_edge :adrules_library do |edge|
      edge.get 'AdRule'
      edge.post 'AdRule' do |api|
        api.has_param :account_id, 'string'
        api.has_param :evaluation_spec, 'object'
        api.has_param :execution_spec, 'object'
        api.has_param :schedule_spec, 'object'
        api.has_param :name, 'string'
        api.has_param :status, { enum: -> { AdRule::STATUS }}
      end
    end

    has_edge :ads do |edge|
      edge.delete do |api|
        api.has_param :delete_strategy, { enum: %w{DELETE_ANY DELETE_OLDEST DELETE_ARCHIVED_BEFORE }}
        api.has_param :object_count, 'int'
        api.has_param :before_date, 'datetime'
        api.has_param :delete_offset, 'int'
      end
      edge.get 'Ad' do |api|
        api.has_param :date_preset, { enum: -> { Ad::DATE_PRESET }}
        api.has_param :effective_status, { list: 'string' }
        api.has_param :include_deleted, 'bool'
        api.has_param :time_range, 'object'
        api.has_param :updated_since, 'int'
        api.has_param :ad_draft_id, 'string'
      end
      edge.post 'Ad' do |api|
        api.has_param :audience_id, 'string'
        api.has_param :adset_id, 'int'
        api.has_param :date_format, 'string'
        api.has_param :include_demolink_hashes, 'bool'
        api.has_param :creative, 'AdCreative'
        api.has_param :name, 'string'
        api.has_param :status, { enum: -> { Ad::STATUS }}
        api.has_param :priority, 'int'
        api.has_param :tracking_specs, 'object'
        api.has_param :display_sequence, 'int'
        api.has_param :engagement_audience, 'bool'
        api.has_param :adset_spec, 'AdSet'
        api.has_param :draft_adgroup_id, 'string'
        api.has_param :execution_options, { list: { enum: -> { Ad::EXECUTION_OPTIONS }} }
        api.has_param :adlabels, { list: 'object' }
        api.has_param :bid_amount, 'int'
        api.has_param :source_ad_id, 'string'
        api.accepts_files!
      end
    end

    has_edge :adsbylabels do |edge|
      edge.get 'Ad' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { Ad::OPERATOR }}
      end
    end

    has_edge :adsets do |edge|
      edge.delete do |api|
        api.has_param :delete_strategy, { enum: %w{DELETE_ANY DELETE_OLDEST DELETE_ARCHIVED_BEFORE }}
        api.has_param :object_count, 'int'
        api.has_param :before_date, 'datetime'
        api.has_param :delete_offset, 'int'
      end
      edge.get 'AdSet' do |api|
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :include_deleted, 'bool'
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
        api.has_param :ad_draft_id, 'string'
      end
      edge.post 'AdSet' do |api|
        api.has_param :ad_keywords, 'object'
        api.has_param :adlabels, { list: 'object' }
        api.has_param :bid_amount, 'int'
        api.has_param :bid_adjustments, 'object'
        api.has_param :bid_constraints, 'object'
        api.has_param :bid_strategy, { enum: -> { AdSet::BID_STRATEGY }}
        api.has_param :billing_event, { enum: -> { AdSet::BILLING_EVENT }}
        api.has_param :campaign_id, 'string'
        api.has_param :campaign_spec, 'object'
        api.has_param :adset_schedule, { list: 'object' }
        api.has_param :status, { enum: -> { AdSet::STATUS }}
        api.has_param :creative_sequence, { list: 'string' }
        api.has_param :daily_budget, 'int'
        api.has_param :daily_imps, 'int'
        api.has_param :daily_min_spend_target, 'int'
        api.has_param :daily_spend_cap, 'int'
        api.has_param :date_format, 'string'
        api.has_param :destination_type, { enum: -> { AdSet::DESTINATION_TYPE }}
        api.has_param :end_time, 'datetime'
        api.has_param :execution_options, { list: { enum: -> { AdSet::EXECUTION_OPTIONS }} }
        api.has_param :frequency_cap, 'int'
        api.has_param :frequency_cap_reset_period, 'int'
        api.has_param :frequency_control_specs, { list: 'object' }
        api.has_param :is_autobid, 'bool'
        api.has_param :is_average_price_pacing, 'bool'
        api.has_param :is_dynamic_creative, 'bool'
        api.has_param :lifetime_budget, 'int'
        api.has_param :lifetime_frequency_cap, 'int'
        api.has_param :lifetime_imps, 'int'
        api.has_param :lifetime_min_spend_target, 'int'
        api.has_param :lifetime_spend_cap, 'int'
        api.has_param :line_number, 'int'
        api.has_param :name, 'string'
        api.has_param :optimization_goal, { enum: -> { AdSet::OPTIMIZATION_GOAL }}
        api.has_param :pacing_type, { list: 'string' }
        api.has_param :promoted_object, 'object'
        api.has_param :rb_prediction_id, 'string'
        api.has_param :rf_prediction_id, 'string'
        api.has_param :source_adset_id, 'string'
        api.has_param :start_time, 'datetime'
        api.has_param :targeting, 'Targeting'
        api.has_param :time_based_ad_rotation_id_blocks, { list: { list: 'int' } }
        api.has_param :time_based_ad_rotation_intervals, { list: 'int' }
        api.has_param :time_start, 'datetime'
        api.has_param :time_stop, 'datetime'
        api.has_param :topline_id, 'string'
        api.has_param :upstream_events, 'hash'
        api.has_param :full_funnel_exploration_mode, { enum: -> { AdSet::FULL_FUNNEL_EXPLORATION_MODE }}
        api.has_param :attribution_spec, { list: 'hash' }
      end
    end

    has_edge :adsetsbylabels do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { AdSet::OPERATOR }}
      end
    end

    has_edge :adspixels do |edge|
      edge.get 'AdsPixel' do |api|
        api.has_param :sort_by, { enum: -> { AdsPixel::SORT_BY }}
      end
      edge.post 'AdsPixel' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :adtoplinedetails do |edge|
      edge.get 'AdToplineDetail'
    end

    has_edge :adtoplines do |edge|
      edge.get 'AdTopline'
    end

    has_edge :advertisable_applications do |edge|
      edge.get 'Application' do |api|
        api.has_param :app_id, 'string'
        api.has_param :business_id, 'string'
      end
    end

    has_edge :advideos do |edge|
      edge.get 'AdVideo' do |api|
        api.has_param :title, 'string'
        api.has_param :minlength, 'int'
        api.has_param :maxlength, 'int'
        api.has_param :minheight, 'int'
        api.has_param :maxheight, 'int'
        api.has_param :minwidth, 'int'
        api.has_param :maxwidth, 'int'
        api.has_param :min_aspect_ratio, 'double'
        api.has_param :max_aspect_ratio, 'double'
      end
      edge.post 'AdVideo' do |api|
        api.has_param :title, 'string'
        api.has_param :unpublished_content_type, { enum: -> { AdVideo::UNPUBLISHED_CONTENT_TYPE }}
        api.has_param :time_since_original_post, 'int'
        api.has_param :file_url, 'string'
        api.has_param :composer_session_id, 'string'
        api.has_param :waterfall_id, 'string'
        api.has_param :og_action_type_id, 'string'
        api.has_param :og_object_id, 'string'
        api.has_param :og_phrase, 'string'
        api.has_param :og_icon_id, 'string'
        api.has_param :og_suggestion_mechanism, 'string'
        api.has_param :manual_privacy, 'bool'
        api.has_param :is_explicit_share, 'bool'
        api.has_param :thumb, 'file'
        api.has_param :spherical, 'bool'
        api.has_param :original_projection_type, { enum: -> { AdVideo::ORIGINAL_PROJECTION_TYPE }}
        api.has_param :initial_heading, 'int'
        api.has_param :initial_pitch, 'int'
        api.has_param :fov, 'int'
        api.has_param :original_fov, 'int'
        api.has_param :fisheye_video_cropped, 'bool'
        api.has_param :front_z_rotation, 'double'
        api.has_param :guide_enabled, 'bool'
        api.has_param :guide, { list: { list: 'int' } }
        api.has_param :audio_story_wave_animation_handle, 'string'
        api.has_param :adaptive_type, 'string'
        api.has_param :animated_effect_id, 'int'
        api.has_param :asked_fun_fact_prompt_id, 'int'
        api.has_param :composer_entry_picker, 'string'
        api.has_param :composer_entry_point, 'string'
        api.has_param :composer_entry_time, 'int'
        api.has_param :composer_session_events_log, 'string'
        api.has_param :composer_source_surface, 'string'
        api.has_param :composer_type, 'string'
        api.has_param :formatting, { enum: -> { AdVideo::FORMATTING }}
        api.has_param :fun_fact_prompt_id, 'string'
        api.has_param :fun_fact_toastee_id, 'int'
        api.has_param :is_group_linking_post, 'bool'
        api.has_param :has_nickname, 'bool'
        api.has_param :holiday_card, 'string'
        api.has_param :instant_game_entry_point_data, 'string'
        api.has_param :is_boost_intended, 'bool'
        api.has_param :location_source_id, 'string'
        api.has_param :description, 'string'
        api.has_param :offer_like_post_id, 'string'
        api.has_param :publish_event_id, 'int'
        api.has_param :react_mode_metadata, 'string'
        api.has_param :sales_promo_id, 'int'
        api.has_param :text_format_metadata, 'string'
        api.has_param :throwback_camera_roll_media, 'string'
        api.has_param :video_start_time_ms, 'int'
        api.has_param :application_id, 'string'
        api.has_param :upload_phase, { enum: -> { AdVideo::UPLOAD_PHASE }}
        api.has_param :file_size, 'int'
        api.has_param :start_offset, 'int'
        api.has_param :end_offset, 'int'
        api.has_param :video_file_chunk, 'string'
        api.has_param :fbuploader_video_file_chunk, 'string'
        api.has_param :upload_session_id, 'string'
        api.has_param :is_voice_clip, 'bool'
        api.has_param :attribution_app_id, 'string'
        api.has_param :content_category, { enum: -> { AdVideo::CONTENT_CATEGORY }}
        api.has_param :embeddable, 'bool'
        api.has_param :slideshow_spec, 'hash'
        api.has_param :upload_setting_properties, 'string'
        api.has_param :transcode_setting_properties, 'string'
        api.has_param :container_type, { enum: -> { AdVideo::CONTAINER_TYPE }}
        api.has_param :referenced_sticker_id, 'string'
        api.has_param :replace_video_id, 'string'
        api.has_param :swap_mode, { enum: -> { AdVideo::SWAP_MODE }}
        api.has_param :name, 'string'
        api.has_param :chunk_session_id, 'string'
        api.accepts_files!
      end
    end

    has_edge :affectedadsets do |edge|
      edge.get 'AdSet'
    end

    has_edge :agencies do |edge|
      edge.delete do |api|
        api.has_param :business, 'string'
      end
      edge.get 'Business'
      edge.post 'AdAccount' do |api|
        api.has_param :business, 'string'
        api.has_param :permitted_tasks, { list: { enum: -> { AdAccount::PERMITTED_TASKS }} }
      end
    end

    has_edge :applications do |edge|
      edge.get 'Application'
    end

    has_edge :assigned_users do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
      end
      edge.get 'AssignedUser' do |api|
        api.has_param :business, 'string'
      end
      edge.post 'AdAccount' do |api|
        api.has_param :user, 'int'
        api.has_param :tasks, { list: { enum: -> { AdAccount::TASKS }} }
      end
    end

    has_edge :async_batch_requests do |edge|
      edge.post 'Campaign' do |api|
        api.has_param :name, 'string'
        api.has_param :adbatch, { list: 'object' }
      end
    end

    has_edge :async_requests do |edge|
      edge.get 'AsyncRequest' do |api|
        api.has_param :status, { enum: -> { AsyncRequest::STATUS }}
        api.has_param :type, { enum: -> { AsyncRequest::TYPE }}
      end
    end

    has_edge :asyncadrequestsets do |edge|
      edge.get 'AdAsyncRequestSet' do |api|
        api.has_param :is_completed, 'bool'
      end
      edge.post 'AdAsyncRequestSet' do |api|
        api.has_param :ad_specs, { list: 'hash' }
        api.has_param :name, 'string'
        api.has_param :notification_uri, 'string'
        api.has_param :notification_mode, { enum: -> { AdAsyncRequestSet::NOTIFICATION_MODE }}
      end
    end

    has_edge :audiencereplace do |edge|
      edge.post do |api|
        api.has_param :session, 'object'
        api.has_param :payload, 'object'
      end
    end

    has_edge :batchreplace do |edge|
      edge.post do |api|
        api.has_param :payload, { list: 'string' }
      end
    end

    has_edge :batchupload do |edge|
      edge.post do |api|
        api.has_param :payload, { list: 'string' }
      end
    end

    has_edge :block_list_drafts do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :publisher_urls_file, 'file'
      end
    end

    has_edge :brand_audiences do |edge|
      edge.get 'BrandAudience'
      edge.post 'BrandAudience' do |api|
        api.has_param :name, 'string'
        api.has_param :targeting, 'object'
        api.has_param :target_size, 'int'
        api.has_param :description, 'string'
      end
    end

    has_edge :broadtargetingcategories do |edge|
      edge.get 'BroadTargetingCategories' do |api|
        api.has_param :custom_categories_only, 'bool'
      end
    end

    has_edge :business_activities do |edge|
      edge.get 'BusinessActivityLogEvent' do |api|
        api.has_param :business, 'string'
      end
    end

    has_edge :businessprojects do |edge|
      edge.get 'BusinessProject' do |api|
        api.has_param :business, 'object'
      end
    end

    has_edge :businesssettinglogs do |edge|
      edge.get 'BusinessSettingLogsData'
    end

    has_edge :campaigns do |edge|
      edge.delete do |api|
        api.has_param :delete_strategy, { enum: %w{DELETE_ANY DELETE_OLDEST DELETE_ARCHIVED_BEFORE }}
        api.has_param :object_count, 'int'
        api.has_param :before_date, 'datetime'
        api.has_param :delete_offset, 'int'
      end
      edge.get 'Campaign' do |api|
        api.has_param :effective_status, { list: { enum: -> { Campaign::EFFECTIVE_STATUS }} }
        api.has_param :date_preset, { enum: -> { Campaign::DATE_PRESET }}
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
      end
      edge.post 'Campaign' do |api|
        api.has_param :name, 'string'
        api.has_param :objective, { enum: -> { Campaign::OBJECTIVE }}
        api.has_param :status, { enum: -> { Campaign::STATUS }}
        api.has_param :bid_strategy, { enum: -> { Campaign::BID_STRATEGY }}
        api.has_param :budget_rebalance_flag, 'bool'
        api.has_param :buying_type, 'string'
        api.has_param :daily_budget, 'int'
        api.has_param :lifetime_budget, 'int'
        api.has_param :pacing_type, { list: 'string' }
        api.has_param :promoted_object, 'object'
        api.has_param :topline_id, 'string'
        api.has_param :spend_cap, 'int'
        api.has_param :execution_options, { list: { enum: -> { Campaign::EXECUTION_OPTIONS }} }
        api.has_param :upstream_events, 'hash'
        api.has_param :adlabels, { list: 'object' }
        api.has_param :source_campaign_id, 'string'
        api.has_param :iterative_split_test_configs, { list: 'object' }
        api.has_param :kpi_custom_conversion_id, 'string'
        api.has_param :kpi_type, 'object'
        api.has_param :is_autobid, 'bool'
        api.has_param :is_average_price_pacing, 'bool'
      end
    end

    has_edge :campaignsbylabels do |edge|
      edge.get 'Campaign' do |api|
        api.has_param :ad_label_ids, { list: 'string' }
        api.has_param :operator, { enum: -> { Campaign::OPERATOR }}
      end
    end

    has_edge :contextual_targeting_browse do |edge|
      edge.get 'AdAccountContextualTargeting'
    end

    has_edge :coupons do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :coupon_code, 'string'
      end
    end

    has_edge :customaudiences do |edge|
      edge.get 'CustomAudience' do |api|
        api.has_param :pixel_id, 'string'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :business_id, 'string'
      end
      edge.post 'CustomAudience' do |api|
        api.has_param :creation_params, 'hash'
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :opt_out_link, 'string'
        api.has_param :parent_audience_id, 'int'
        api.has_param :subtype, { enum: -> { CustomAudience::SUBTYPE }}
        api.has_param :seed_audience, 'int'
        api.has_param :tags, { list: 'string' }
        api.has_param :associated_audience_id, 'int'
        api.has_param :is_household, 'bool'
        api.has_param :is_household_exclusion, 'bool'
        api.has_param :is_value_based, 'bool'
        api.has_param :allowed_domains, { list: 'string' }
        api.has_param :is_snapshot, 'bool'
        api.has_param :lookalike_spec, 'string'
        api.has_param :retention_days, 'int'
        api.has_param :customer_file_source, { enum: -> { CustomAudience::CUSTOMER_FILE_SOURCE }}
        api.has_param :rev_share_policy_id, 'int'
        api.has_param :partner_reference_key, 'string'
        api.has_param :rule, 'string'
        api.has_param :prefill, 'bool'
        api.has_param :pixel_id, 'string'
        api.has_param :rule_aggregation, 'string'
        api.has_param :inclusions, { list: 'object' }
        api.has_param :exclusions, { list: 'object' }
        api.has_param :countries, 'string'
        api.has_param :origin_audience_id, 'string'
        api.has_param :details, 'string'
        api.has_param :source, 'string'
        api.has_param :isprivate, 'bool'
        api.has_param :additionalmetadata, 'string'
        api.has_param :minage, 'int'
        api.has_param :maxage, 'int'
        api.has_param :expectedsize, 'int'
        api.has_param :gender, 'string'
        api.has_param :partnerid, 'string'
        api.has_param :accountid, 'string'
        api.has_param :claim_objective, { enum: -> { CustomAudience::CLAIM_OBJECTIVE }}
        api.has_param :content_type, { enum: -> { CustomAudience::CONTENT_TYPE }}
        api.has_param :event_source_group, 'string'
        api.has_param :product_set_id, 'string'
        api.has_param :event_sources, { list: 'hash' }
        api.has_param :video_group_ids, { list: 'string' }
        api.has_param :study_spec, 'object'
        api.has_param :list_of_accounts, { list: 'int' }
        api.has_param :dataset_id, 'string'
      end
    end

    has_edge :customaudiencestos do |edge|
      edge.get 'CustomAudiencesTos'
    end

    has_edge :customconversions do |edge|
      edge.get 'CustomConversion'
      edge.post 'CustomConversion' do |api|
        api.has_param :name, 'string'
        api.has_param :description, 'string'
        api.has_param :event_source_id, 'string'
        api.has_param :rule, 'string'
        api.has_param :default_conversion_value, 'double'
        api.has_param :custom_event_type, { enum: -> { CustomConversion::CUSTOM_EVENT_TYPE }}
        api.has_param :advanced_rule, 'string'
      end
    end

    has_edge :deactivate do |edge|
      edge.post 'AdAccount'
    end

    has_edge :delivery_estimate do |edge|
      edge.get 'AdAccountDeliveryEstimate' do |api|
        api.has_param :targeting_spec, 'Targeting'
        api.has_param :optimization_goal, { enum: -> { AdAccountDeliveryEstimate::OPTIMIZATION_GOAL }}
        api.has_param :promoted_object, 'object'
      end
    end

    has_edge :deprecatedtargetingadsets do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :type, 'string'
      end
    end

    has_edge :direct_deals do |edge|
      edge.get 'DirectDeal' do |api|
        api.has_param :status, { enum: -> { DirectDeal::STATUS }}
      end
    end

    has_edge :direct_deals_tos do |edge|
      edge.post 'AdAccount'
    end

    has_edge :emailimport do |edge|
      edge.post do |api|
        api.has_param :name, 'string'
        api.has_param :third_party_data, 'string'
      end
    end

    has_edge :generatepreviews do |edge|
      edge.get 'AdPreview' do |api|
        api.has_param :ad_format, { enum: -> { AdPreview::AD_FORMAT }}
        api.has_param :dynamic_creative_spec, 'object'
        api.has_param :dynamic_asset_label, 'string'
        api.has_param :interactive, 'bool'
        api.has_param :post, 'object'
        api.has_param :height, 'int'
        api.has_param :width, 'int'
        api.has_param :place_page_id, 'int'
        api.has_param :product_item_ids, { list: 'string' }
        api.has_param :start_date, 'datetime'
        api.has_param :end_date, 'datetime'
        api.has_param :locale, 'string'
        api.has_param :render_type, { enum: -> { AdPreview::RENDER_TYPE }}
        api.has_param :creative, 'AdCreative'
      end
    end

    has_edge :impacting_ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :insights do |edge|
      edge.get 'AdsInsights' do |api|
        api.has_param :default_summary, 'bool'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :summary, { list: 'string' }
        api.has_param :sort, { list: 'string' }
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
      end
      edge.post 'AdReportRun' do |api|
        api.has_param :default_summary, 'bool'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :summary, { list: 'string' }
        api.has_param :sort, { list: 'string' }
        api.has_param :action_attribution_windows, { list: { enum: -> { AdsInsights::ACTION_ATTRIBUTION_WINDOWS }} }
        api.has_param :action_breakdowns, { list: { enum: -> { AdsInsights::ACTION_BREAKDOWNS }} }
        api.has_param :action_report_time, { enum: -> { AdsInsights::ACTION_REPORT_TIME }}
        api.has_param :breakdowns, { list: { enum: -> { AdsInsights::BREAKDOWNS }} }
        api.has_param :date_preset, { enum: -> { AdsInsights::DATE_PRESET }}
        api.has_param :export_columns, { list: 'string' }
        api.has_param :export_format, 'string'
        api.has_param :export_name, 'string'
        api.has_param :level, { enum: -> { AdsInsights::LEVEL }}
        api.has_param :product_id_limit, 'int'
        api.has_param :summary_action_breakdowns, { list: { enum: -> { AdsInsights::SUMMARY_ACTION_BREAKDOWNS }} }
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :time_ranges, { list: 'object' }
        api.has_param :use_account_attribution_setting, 'bool'
      end
    end

    has_edge :instagram_accounts do |edge|
      edge.get 'InstagramUser'
    end

    has_edge :leadgen_forms do |edge|
      edge.get 'LeadgenForm' do |api|
        api.has_param :query, 'string'
      end
    end

    has_edge :locationclusters do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :locations, { list: 'string' }
      end
    end

    has_edge :matched_search_applications do |edge|
      edge.get 'AdAccountMatchedSearchApplicationsEdgeData' do |api|
        api.has_param :app_store, { enum: -> { AdAccountMatchedSearchApplicationsEdgeData::APP_STORE }}
        api.has_param :app_store_country, 'string'
        api.has_param :business_id, 'object'
        api.has_param :query_term, 'string'
        api.has_param :allow_incomplete_app, 'bool'
      end
    end

    has_edge :max_bid do |edge|
      edge.get 'AdAccountMaxBid'
    end

    has_edge :minimum_budgets do |edge|
      edge.get 'MinimumBudget' do |api|
        api.has_param :bid_amount, 'int'
      end
    end

    has_edge :mockups do |edge|
      edge.post do |api|
        api.has_param :mockup_access_token, 'string'
        api.has_param :source_mockup_id, 'string'
        api.has_param :page_id, 'string'
      end
    end

    has_edge :offline_conversion_data_sets do |edge|
      edge.get 'OfflineConversionDataSet'
    end

    has_edge :offsitepixels do |edge|
      edge.get 'OffsitePixel'
    end

    has_edge :partner_integrations do |edge|
      edge.get 'PartnerIntegrationLinked'
      edge.post 'PartnerIntegrationLinked' do |api|
        api.has_param :external_id, 'string'
        api.has_param :gtm_account_id, 'string'
        api.has_param :gtm_container_id, 'string'
        api.has_param :name, 'string'
        api.has_param :partner, { enum: -> { PartnerIntegrationLinked::PARTNER }}
      end
    end

    has_edge :partnercategories do |edge|
      edge.get 'PartnerCategory' do |api|
        api.has_param :targeting_type, 'string'
        api.has_param :private_or_public, { enum: -> { PartnerCategory::PRIVATE_OR_PUBLIC }}
        api.has_param :hide_pc, 'bool'
        api.has_param :limit, 'int'
        api.has_param :is_exclusion, 'bool'
      end
    end

    has_edge :partnerdata do |edge|
      edge.post 'AdAccount' do |api|
        api.has_param :upload_id, 'int'
        api.has_param :type, 'string'
        api.has_param :start_new_upload, 'bool'
        api.has_param :total_expected, 'int'
        api.has_param :upload_metadata, 'string'
        api.has_param :upload_complete, 'bool'
        api.has_param :ignore_count_check, 'bool'
        api.has_param :abandon_upload, 'bool'
        api.has_param :payload, { list: 'string' }
        api.has_param :payload_type, 'string'
      end
    end

    has_edge :partnerrequests do |edge|
      edge.post do |api|
        api.has_param :category_ids, { list: 'string' }
        api.has_param :account_ids, { list: 'int' }
        api.has_param :type, { enum: %w{SHARE_PC }}
      end
    end

    has_edge :partners do |edge|
      edge.get 'AdsDataPartner'
    end

    has_edge :product_audiences do |edge|
      edge.post 'CustomAudience' do |api|
        api.has_param :creation_params, 'hash'
        api.has_param :description, 'string'
        api.has_param :name, 'string'
        api.has_param :opt_out_link, 'string'
        api.has_param :parent_audience_id, 'int'
        api.has_param :subtype, { enum: -> { AdAccount::SUBTYPE }}
        api.has_param :seed_audience, 'int'
        api.has_param :tags, { list: 'string' }
        api.has_param :associated_audience_id, 'int'
        api.has_param :is_household, 'bool'
        api.has_param :is_household_exclusion, 'bool'
        api.has_param :is_value_based, 'bool'
        api.has_param :allowed_domains, { list: 'string' }
        api.has_param :is_snapshot, 'bool'
        api.has_param :claim_objective, { enum: -> { AdAccount::CLAIM_OBJECTIVE }}
        api.has_param :content_type, { enum: -> { AdAccount::CONTENT_TYPE }}
        api.has_param :event_source_group, 'string'
        api.has_param :product_set_id, 'string'
        api.has_param :rev_share_policy_id, 'int'
        api.has_param :event_sources, { list: 'hash' }
        api.has_param :inclusions, { list: 'object' }
        api.has_param :exclusions, { list: 'object' }
      end
    end

    has_edge :promote_pages do |edge|
      edge.get 'Page'
    end

    has_edge :publisher_block_lists do |edge|
      edge.get 'PublisherBlockList'
      edge.post 'PublisherBlockList' do |api|
        api.has_param :name, 'string'
      end
    end

    has_edge :reachestimate do |edge|
      edge.get 'ReachEstimate' do |api|
        api.has_param :targeting_spec, 'Targeting'
        api.has_param :currency, 'string'
        api.has_param :is_debug, 'bool'
        api.has_param :optimize_for, { enum: -> { ReachEstimate::OPTIMIZE_FOR }}
        api.has_param :daily_budget, 'double'
        api.has_param :creative_action_spec, 'string'
        api.has_param :adgroup_ids, { list: 'string' }
        api.has_param :concepts, 'string'
        api.has_param :caller_id, 'string'
        api.has_param :object_store_url, 'string'
      end
    end

    has_edge :reachfrequencypredictions do |edge|
      edge.get 'ReachFrequencyPrediction'
      edge.post 'ReachFrequencyPrediction' do |api|
        api.has_param :action, { enum: -> { ReachFrequencyPrediction::ACTION }}
        api.has_param :ad_formats, { list: 'hash' }
        api.has_param :target_spec, 'Targeting'
        api.has_param :start_time, 'int'
        api.has_param :stop_time, 'int'
        api.has_param :end_time, 'int'
        api.has_param :reach, 'int'
        api.has_param :impression, 'int'
        api.has_param :frequency_cap, 'int'
        api.has_param :budget, 'int'
        api.has_param :prediction_mode, 'int'
        api.has_param :destination_id, 'int'
        api.has_param :destination_ids, { list: 'string' }
        api.has_param :story_event_type, 'int'
        api.has_param :day_parting_schedule, { list: 'object' }
        api.has_param :target_cpm, 'int'
        api.has_param :buying_type, { enum: -> { ReachFrequencyPrediction::BUYING_TYPE }}
        api.has_param :objective, 'string'
        api.has_param :rf_prediction_id, 'string'
        api.has_param :rf_prediction_id_to_release, 'string'
        api.has_param :rf_prediction_id_to_share, 'string'
        api.has_param :num_curve_points, 'int'
        api.has_param :interval_frequency_cap_reset_period, 'int'
        api.has_param :campaign_group_id, 'string'
        api.has_param :grp_buying, 'bool'
        api.has_param :instream_packages, { list: { enum: -> { ReachFrequencyPrediction::INSTREAM_PACKAGES }} }
        api.has_param :is_bonus_media, 'bool'
        api.has_param :is_conversion_goal, 'bool'
        api.has_param :is_full_view, 'bool'
        api.has_param :is_reach_and_frequency_io_buying, 'bool'
        api.has_param :is_reserved_buying, 'bool'
        api.has_param :expiration_time, 'int'
        api.has_param :existing_campaign_id, 'string'
        api.has_param :video_view_length_constraint, 'int'
        api.has_param :auction_entry_option_index, 'int'
        api.has_param :exceptions, 'bool'
      end
    end

    has_edge :referral do |edge|
      edge.get 'Referral'
      edge.post 'Referral' do |api|
        api.has_param :invite_limit, 'int'
        api.has_param :messenger_cta, 'string'
        api.has_param :messenger_promotion_text, 'string'
        api.has_param :namespace, 'int'
        api.has_param :need_promo_code, 'bool'
        api.has_param :offer_origin, 'string'
        api.has_param :promotion_text, 'string'
        api.has_param :receiver_benefits_text, 'string'
        api.has_param :referral_link_uri, 'object'
        api.has_param :sender_benefits_text, 'string'
      end
    end

    has_edge :reportstats do |edge|
      edge.post do |api|
        api.has_param :time_ranges, 'object'
        api.has_param :data_columns, { list: 'string' }
        api.has_param :actions_group_by, { list: { enum: %w{action_canvas_component_id action_canvas_component_name action_carousel_card_id action_carousel_card_name action_destination action_device action_event_channel action_target_id action_type action_video_sound action_video_type action_converted_product_id }} }
        api.has_param :filters, { list: 'object' }
        api.has_param :sort_by, 'string'
        api.has_param :sort_dir, 'string'
        api.has_param :time_increment, 'string'
        api.has_param :time_interval, 'object'
        api.has_param :date_preset, { enum: %w{today yesterday this_month last_month this_quarter lifetime last_3d last_7d last_14d last_28d last_30d last_90d last_week_mon_sun last_week_sun_sat last_quarter last_year this_week_mon_today this_week_sun_today this_year }}
        api.has_param :format, { enum: %w{JSON CSV XLS XLSX }}
        api.has_param :export_columns, 'object'
        api.has_param :report_run_id, 'string'
        api.has_param :name, 'string'
        api.has_param :user_report, 'bool'
        api.has_param :business_id, 'string'
        api.has_param :limit, 'int'
        api.has_param :bypass_async, 'bool'
        api.has_param :summary, 'bool'
      end
    end

    has_edge :roas do |edge|
      edge.get 'AdAccountRoas' do |api|
        api.has_param :time_increment, 'string'
        api.has_param :time_range, 'object'
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
      end
    end

    has_edge :saved_audiences do |edge|
      edge.get 'SavedAudience' do |api|
        api.has_param :fields, { list: 'string' }
        api.has_param :filtering, { list: 'object' }
        api.has_param :business_id, 'string'
      end
    end

    has_edge :sponsored_message_ads do |edge|
      edge.post do |api|
        api.has_param :message_creative_id, 'string'
        api.has_param :daily_budget, 'int'
        api.has_param :bid_amount, 'int'
        api.has_param :targeting, 'Targeting'
      end
    end

    has_edge :targetingbrowse do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :include_nodes, 'bool'
        api.has_param :excluded_category, 'string'
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :is_exclusion, 'bool'
        api.has_param :whitelisted_types, { list: { enum: -> { AdAccountTargetingUnified::WHITELISTED_TYPES }} }
      end
    end

    has_edge :targetingsearch do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :q, 'string'
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :whitelisted_types, { list: { enum: -> { AdAccountTargetingUnified::WHITELISTED_TYPES }} }
        api.has_param :is_exclusion, 'bool'
        api.has_param :session_id, 'int'
        api.has_param :targeting_list, { list: 'object' }
        api.has_param :countries, { list: 'string' }
      end
    end

    has_edge :targetingsentencelines do |edge|
      edge.get 'TargetingSentenceLine' do |api|
        api.has_param :targeting_spec, 'Targeting'
        api.has_param :discard_ages, 'bool'
        api.has_param :discard_placements, 'bool'
        api.has_param :hide_targeting_spec_from_return, 'bool'
      end
    end

    has_edge :targetingsuggestions do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :targeting_list, { list: 'object' }
        api.has_param :objective, { enum: -> { AdAccountTargetingUnified::OBJECTIVE }}
        api.has_param :objects, 'object'
        api.has_param :limit_type, { enum: -> { AdAccountTargetingUnified::LIMIT_TYPE }}
        api.has_param :mode, { enum: -> { AdAccountTargetingUnified::MODE }}
        api.has_param :session_id, 'int'
        api.has_param :whitelisted_types, { list: { enum: -> { AdAccountTargetingUnified::WHITELISTED_TYPES }} }
        api.has_param :countries, { list: 'string' }
      end
    end

    has_edge :targetingvalidation do |edge|
      edge.get 'AdAccountTargetingUnified' do |api|
        api.has_param :targeting_list, { list: 'object' }
        api.has_param :id_list, { list: 'int' }
        api.has_param :name_list, { list: 'string' }
        api.has_param :is_exclusion, 'bool'
      end
    end

    has_edge :timezoneoffsets do |edge|
      edge.get 'TimezoneOffset' do |api|
        api.has_param :start_year, 'int'
      end
    end

    has_edge :tracking do |edge|
      edge.delete do |api|
        api.has_param :tracking_specs, 'object'
      end
      edge.get 'AdAccountTrackingData'
      edge.post 'AdAccount' do |api|
        api.has_param :tracking_specs, 'object'
      end
    end

    has_edge :usermatch do |edge|
      edge.delete do |api|
        api.has_param :payload, 'object'
        api.has_param :namespace, 'string'
        api.has_param :bidirectional, 'bool'
      end
      edge.post do |api|
        api.has_param :payload, 'object'
        api.has_param :action, 'string'
        api.has_param :namespace, 'string'
        api.has_param :retention, 'string'
        api.has_param :bidirectional, 'bool'
      end
    end

    has_edge :userpermissions do |edge|
      edge.delete do |api|
        api.has_param :user, 'int'
        api.has_param :email, 'string'
        api.has_param :business, 'string'
      end
      edge.post 'AdAccount' do |api|
        api.has_param :user, 'int'
        api.has_param :email, 'string'
        api.has_param :business, 'string'
        api.has_param :tasks, { list: { enum: -> { AdAccount::TASKS }} }
      end
    end

    has_edge :users do |edge|
      edge.delete do |api|
        api.has_param :uid, 'int'
        api.has_param :uids, { list: 'string' }
      end
      edge.get 'AdAccountUser'
      edge.post 'AdAccount' do |api|
        api.has_param :uid, 'int'
        api.has_param :tasks, { list: { enum: -> { AdAccount::TASKS }} }
      end
    end

    has_edge :usersofanyaudience do |edge|
      edge.delete do |api|
        api.has_param :session, 'object'
        api.has_param :payload, 'object'
        api.has_param :namespace, 'string'
      end
    end

  end
end
