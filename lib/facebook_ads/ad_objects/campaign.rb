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

  class Campaign < AdObject
    BID_STRATEGY = [
      "LOWEST_COST_WITHOUT_CAP",
      "LOWEST_COST_WITH_BID_CAP",
      "TARGET_COST",
    ]

    CONFIGURED_STATUS = [
      "ACTIVE",
      "PAUSED",
      "DELETED",
      "ARCHIVED",
    ]

    EFFECTIVE_STATUS = [
      "ACTIVE",
      "PAUSED",
      "DELETED",
      "PENDING_REVIEW",
      "DISAPPROVED",
      "PREAPPROVED",
      "PENDING_BILLING_INFO",
      "CAMPAIGN_PAUSED",
      "ARCHIVED",
      "ADSET_PAUSED",
      "WITH_ISSUES",
    ]

    STATUS = [
      "ACTIVE",
      "PAUSED",
      "DELETED",
      "ARCHIVED",
    ]

    DATE_PRESET = [
      "today",
      "yesterday",
      "this_month",
      "last_month",
      "this_quarter",
      "lifetime",
      "last_3d",
      "last_7d",
      "last_14d",
      "last_28d",
      "last_30d",
      "last_90d",
      "last_week_mon_sun",
      "last_week_sun_sat",
      "last_quarter",
      "last_year",
      "this_week_mon_today",
      "this_week_sun_today",
      "this_year",
    ]

    EXECUTION_OPTIONS = [
      "validate_only",
      "include_recommendations",
    ]

    OBJECTIVE = [
      "APP_INSTALLS",
      "BRAND_AWARENESS",
      "CONVERSIONS",
      "EVENT_RESPONSES",
      "LEAD_GENERATION",
      "LINK_CLICKS",
      "LOCAL_AWARENESS",
      "MESSAGES",
      "OFFER_CLAIMS",
      "PAGE_LIKES",
      "POST_ENGAGEMENT",
      "PRODUCT_CATALOG_SALES",
      "REACH",
      "VIDEO_VIEWS",
    ]

    OPERATOR = [
      "ALL",
      "ANY",
    ]

    STATUS_OPTION = [
      "ACTIVE",
      "PAUSED",
      "INHERITED_FROM_SOURCE",
    ]


    field :account_id, 'string'
    field :adlabels, { list: 'AdLabel' }
    field :bid_strategy, { enum: -> { BID_STRATEGY }}
    field :boosted_object_id, 'string'
    field :brand_lift_studies, { list: 'AdStudy' }
    field :budget_rebalance_flag, 'bool'
    field :budget_remaining, 'string'
    field :buying_type, 'string'
    field :can_create_brand_lift_study, 'bool'
    field :can_use_spend_cap, 'bool'
    field :configured_status, { enum: -> { CONFIGURED_STATUS }}
    field :created_time, 'datetime'
    field :daily_budget, 'string'
    field :effective_status, { enum: -> { EFFECTIVE_STATUS }}
    field :id, 'string'
    field :last_budget_toggling_time, 'datetime'
    field :lifetime_budget, 'string'
    field :metrics_metadata, 'AdCampaignGroupMetricsMetadata'
    field :name, 'string'
    field :objective, 'string'
    field :pacing_type, { list: 'string' }
    field :promoted_object, 'AdPromotedObject'
    field :recommendations, { list: 'AdRecommendation' }
    field :source_campaign, 'Campaign'
    field :source_campaign_id, 'string'
    field :spend_cap, 'string'
    field :start_time, 'datetime'
    field :status, { enum: -> { STATUS }}
    field :stop_time, 'datetime'
    field :topline_id, 'string'
    field :updated_time, 'datetime'
    field :adbatch, { list: 'object' }
    field :execution_options, { list: { enum: -> { EXECUTION_OPTIONS }} }
    field :upstream_events, 'hash'
    field :iterative_split_test_configs, { list: 'object' }
    field :kpi_custom_conversion_id, 'string'
    field :kpi_type, 'object'
    field :is_autobid, 'bool'
    field :is_average_price_pacing, 'bool'

    has_edge :ad_studies do |edge|
      edge.get 'AdStudy'
    end

    has_edge :adlabels do |edge|
      edge.delete do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: -> { Campaign::EXECUTION_OPTIONS }} }
      end
      edge.post 'Campaign' do |api|
        api.has_param :adlabels, { list: 'object' }
        api.has_param :execution_options, { list: { enum: -> { Campaign::EXECUTION_OPTIONS }} }
      end
    end

    has_edge :adrules_governed do |edge|
      edge.get 'AdRule' do |api|
        api.has_param :pass_evaluation, 'bool'
      end
    end

    has_edge :ads do |edge|
      edge.get 'Ad' do |api|
        api.has_param :effective_status, { list: 'string' }
        api.has_param :date_preset, { enum: -> { Ad::DATE_PRESET }}
        api.has_param :include_deleted, 'bool'
        api.has_param :time_range, 'object'
        api.has_param :updated_since, 'int'
        api.has_param :ad_draft_id, 'string'
      end
    end

    has_edge :adsets do |edge|
      edge.get 'AdSet' do |api|
        api.has_param :effective_status, { list: { enum: -> { AdSet::EFFECTIVE_STATUS }} }
        api.has_param :date_preset, { enum: -> { AdSet::DATE_PRESET }}
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
        api.has_param :ad_draft_id, 'string'
      end
    end

    has_edge :copies do |edge|
      edge.get 'Campaign' do |api|
        api.has_param :effective_status, { list: { enum: -> { Campaign::EFFECTIVE_STATUS }} }
        api.has_param :date_preset, { enum: -> { Campaign::DATE_PRESET }}
        api.has_param :is_completed, 'bool'
        api.has_param :time_range, 'object'
      end
      edge.post 'Campaign' do |api|
        api.has_param :deep_copy, 'bool'
        api.has_param :rename_options, 'object'
        api.has_param :status_option, { enum: -> { Campaign::STATUS_OPTION }}
        api.has_param :start_time, 'datetime'
        api.has_param :end_time, 'datetime'
      end
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

  end
end
