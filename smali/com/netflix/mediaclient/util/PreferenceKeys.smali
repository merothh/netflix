.class public interface abstract Lcom/netflix/mediaclient/util/PreferenceKeys;
.super Ljava/lang/Object;
.source "PreferenceKeys.java"


# static fields
.field public static final CONFIG_MINIMAL_VERSION:Ljava/lang/String; = "config_min_version"

.field public static final CONFIG_RECOMMENDED_VERSION:Ljava/lang/String; = "config_recommended_version"

.field public static final DISK_CACHE_SIZE:Ljava/lang/String; = "disk_cache_size"

.field public static final LOLOMO_GUID_FETCH_TIME_MS:Ljava/lang/String; = "prefs_prefetch_json_last_write_system_time_ms"

.field public static final PARAM_DEVICE_CONFIG_CACHED:Ljava/lang/String; = "nf_device_config_cached"

.field public static final PARAM_NOTIFICATION_ID_COUNTER:Ljava/lang/String; = "nf_notification_id_counter"

.field public static final PARAM_RND_DEVICE_ID:Ljava/lang/String; = "nf_rnd_device_id"

.field public static final PREFERENCE_AB_TEST_CONFIG:Ljava/lang/String; = "abTestConfig"

.field public static final PREFERENCE_ACCOUNT_CONFIG:Ljava/lang/String; = "accountConfig"

.field public static final PREFERENCE_AD_ID:Ljava/lang/String; = "advertisement_id"

.field public static final PREFERENCE_AD_ID_OPTED_IN:Ljava/lang/String; = "advertisement_id_opted_in"

.field public static final PREFERENCE_AD_ID_TIMESTAMP:Ljava/lang/String; = "advertisement_id_ts"

.field public static final PREFERENCE_ALERTED_LANGUAGES:Ljava/lang/String; = "alertedLanguages"

.field public static final PREFERENCE_ALERT_MSG_FOR_MISSING_LOCALE:Ljava/lang/String; = "device_locale_not_supported_msg"

.field public static final PREFERENCE_ALLOW_HEVC_MOBLE:Ljava/lang/String; = "prefs_allow_hevc_mobile"

.field public static final PREFERENCE_ALLOW_VP9_MOBLE:Ljava/lang/String; = "prefs_allow_vp9_mobile"

.field public static final PREFERENCE_API_ENVIRONMENT:Ljava/lang/String; = "api_environment_preference"

.field public static final PREFERENCE_APM_USER_SESSION_TIMEOUT_OVERRIDE:Ljava/lang/String; = "apm_user_session_timeout_duration_override"

.field public static final PREFERENCE_BETA_JOB_SCHEDULER_JOBFINISH_ON:Ljava/lang/String; = "pref_beta_job_sch_job_finish_on"

.field public static final PREFERENCE_BREADCRUMB_LOGGING_CONFIGURATION:Ljava/lang/String; = "breadcrumb_log_configuration"

.field public static final PREFERENCE_CAST_KEY_INFO:Ljava/lang/String; = "castKeyData"

.field public static final PREFERENCE_CL_CONFIGURATION:Ljava/lang/String; = "cl_configuration"

.field public static final PREFERENCE_CONFIG_APP_BOOT_URL_SUFFIX:Ljava/lang/String; = "device_config_appBootUrlSuffix"

.field public static final PREFERENCE_CONFIG_GEO_COUNTRY_CODE:Ljava/lang/String; = "device_config_geo_country_code"

.field public static final PREFERENCE_COPPOLA_USER_MUTED_PLAYBACK:Ljava/lang/String; = "nf_play_user_muted_playback"

.field public static final PREFERENCE_COPPOLA_WARNED_WHEN_PLAY_ON_NOWIFI:Ljava/lang/String; = "nf_play_user_no_wifi_warned_already"

.field public static final PREFERENCE_CUSTOMER_SUPPORT_VOIP_AUTHORIZATIONS:Ljava/lang/String; = "cusotmer_support_voip_authorizations"

.field public static final PREFERENCE_DEVICE_CATEGORY:Ljava/lang/String; = "nf_device_category"

.field public static final PREFERENCE_DISABLE_CAST_FASTSTART:Ljava/lang/String; = "disable_cast_faststart"

.field public static final PREFERENCE_DISABLE_DATA_SAVER:Ljava/lang/String; = "disable_data_saver"

.field public static final PREFERENCE_DISABLE_LICENSE_PREFETCH:Ljava/lang/String; = "disable_license_prefetch"

.field public static final PREFERENCE_DISABLE_MDX:Ljava/lang/String; = "disable_mdx"

.field public static final PREFERENCE_DISABLE_PLAY_BILLING:Ljava/lang/String; = "disable_playbilling"

.field public static final PREFERENCE_DISABLE_WEBSOCKET:Ljava/lang/String; = "disable_websocket"

.field public static final PREFERENCE_DISABLE_WIDEVINE_L1:Ljava/lang/String; = "disable_widevine"

.field public static final PREFERENCE_DISABLE_WIDEVINE_L3:Ljava/lang/String; = "disable_widevine_l3"

.field public static final PREFERENCE_DOWNLOAD_BACK_OFF_WINDOW_INDEX:Ljava/lang/String; = "download_back_off_window_index"

.field public static final PREFERENCE_DOWNLOAD_VIDEO_QUALITY:Ljava/lang/String; = "download_video_quality"

.field public static final PREFERENCE_DRM_ACCKEYMAP:Ljava/lang/String; = "nf_drm_acckeymap"

.field public static final PREFERENCE_DRM_CDM_KEYSET_ID:Ljava/lang/String; = "nf_drm_cdm_keyset_id"

.field public static final PREFERENCE_DRM_CRYPTO_PROVIDER:Ljava/lang/String; = "nf_drm_crypto_provider"

.field public static final PREFERENCE_DRM_KCE_KEY_ID:Ljava/lang/String; = "nf_drm_kce_key_id"

.field public static final PREFERENCE_DRM_KCH_KEY_ID:Ljava/lang/String; = "nf_drm_kch_key_id"

.field public static final PREFERENCE_DRM_SYSTEM_ID:Ljava/lang/String; = "nf_drm_system_id"

.field public static final PREFERENCE_ENABLE_DYNECOM_SIGNIN:Ljava/lang/String; = "enable_dynecom_signin"

.field public static final PREFERENCE_ENABLE_WIDEVINE_L1:Ljava/lang/String; = "enable_widevine_l1"

.field public static final PREFERENCE_ERROR_LOGGING_CONFIGURATION:Ljava/lang/String; = "error_log_configuration"

.field public static final PREFERENCE_FATAL_CRYPTO_ERRORS:Ljava/lang/String; = "prefs_crypto_fatal_errors"

.field public static final PREFERENCE_FIRST_APPLICATION_START_AFTER_INSTALLATION:Ljava/lang/String; = "nf_first_start_after_install"

.field public static final PREFERENCE_FORCE_LEGACY_CRYPTO:Ljava/lang/String; = "force_legacy_crypto"

.field public static final PREFERENCE_GCM_BROWSE_EVENT_RATE_LIMIT:Ljava/lang/String; = "gcm_browse_rate_limit"

.field public static final PREFERENCE_GCM_NOTIFIC_CHANGE_EVENT_RATE_LIMIT:Ljava/lang/String; = "gcm_tray_change_rate_limit"

.field public static final PREFERENCE_HARDWARE_ACCELERATION:Ljava/lang/String; = "nflx_hardwarer_acc"

.field public static final PREFERENCE_IGNORE_PRELOAD_FOR_PLAY_BILLING:Ljava/lang/String; = "ignore_preload_playbilling"

.field public static final PREFERENCE_IMAGE_PREF:Ljava/lang/String; = "image_pref"

.field public static final PREFERENCE_IP_CONNECTIVITY_POLICY_OVERRIDE:Ljava/lang/String; = "ip_connectivity_policy_overide"

.field public static final PREFERENCE_JPLAYER_STREAM_ERROR_RESTART_COUNT:Ljava/lang/String; = "jplayer_restart_count"

.field public static final PREFERENCE_LAST_CONTACT_NETLFIX_MS:Ljava/lang/String; = "last_contact_netflix_ms"

.field public static final PREFERENCE_MDX_CONFIGURATION_REMOTE_LOCK_SCREEN_ENABLED:Ljava/lang/String; = "mdx_configuration_remote_lockscreen_enabled"

.field public static final PREFERENCE_MDX_CONFIGURATION_REMOTE_NOTIFICATION_ENABLED:Ljava/lang/String; = "mdx_configuration_remote_notification_enabled"

.field public static final PREFERENCE_MDX_ELECTED_DIALUUID:Ljava/lang/String; = "mdx_selected_dialuuid"

.field public static final PREFERENCE_MDX_ELECTED_FNAME:Ljava/lang/String; = "mdx_selected_fname"

.field public static final PREFERENCE_MDX_SELECTED_UUID:Ljava/lang/String; = "mdx_selected_uuid"

.field public static final PREFERENCE_MDX_TARGET_LASTACTIVE:Ljava/lang/String; = "mdx_target_lastactive"

.field public static final PREFERENCE_MDX_TARGET_UUID:Ljava/lang/String; = "mdx_target_uuid"

.field public static final PREFERENCE_MSL_RSA_STORE:Ljava/lang/String; = "nf_msl_rsa_store_json"

.field public static final PREFERENCE_MSL_STORE:Ljava/lang/String; = "nf_msl_store_json"

.field public static final PREFERENCE_NON_MEMBER_PLAYBACK:Ljava/lang/String; = "prefs_non_member_playback"

.field public static final PREFERENCE_NOTIFICATION_ID_DELETED_FROM_STATUSBAR:Ljava/lang/String; = "notification_id_deleted_from_statusbar"

.field public static final PREFERENCE_NOTIFICATION_SETTINGS:Ljava/lang/String; = "notification_settings"

.field public static final PREFERENCE_NRM_INFO:Ljava/lang/String; = "nrmInfo"

.field public static final PREFERENCE_OFFLINE_CONFIGURATION_FROM_END_POINT:Ljava/lang/String; = "offline_config"

.field public static final PREFERENCE_OFFLINE_MAINTENANCE_JOB_PERIOD:Ljava/lang/String; = "offline_maintenace_job_period"

.field public static final PREFERENCE_OFFLINE_MAINTENANCE_JOB_START_TIME:Ljava/lang/String; = "pref_offline_maintenance_job_start_time"

.field public static final PREFERENCE_OFFLINE_REGISTRY:Ljava/lang/String; = "offline_registry"

.field public static final PREFERENCE_OFFLINE_REGISTRY_CHECKSUM_SAVED:Ljava/lang/String; = "offline_registry_checksum_saved"

.field public static final PREFERENCE_PENDING_JOBS_PRE_L:Ljava/lang/String; = "pending_jobs"

.field public static final PREFERENCE_PLAYBACK_CONFIGURATION_LOCAL_PLAYBACK_ENABLED:Ljava/lang/String; = "playback_configuration_local_playback_enabled"

.field public static final PREFERENCE_PLAYER_TYPE:Ljava/lang/String; = "nflx_player_type"

.field public static final PREFERENCE_PLAYER_TYPE_QA_OVERRIDE:Ljava/lang/String; = "nflx_player_type_qa"

.field public static final PREFERENCE_PRESENTATION_PAGE_AGGREGATION:Ljava/lang/String; = "pt_aggregation_size"

.field public static final PREFERENCE_PSERVICE_ACTIONS_TO_LOG:Ljava/lang/String; = "pservice_actions_to_log"

.field public static final PREFERENCE_REPORTING_SERVICE:Ljava/lang/String; = "reporting_service"

.field public static final PREFERENCE_REQUIRES_UNMETERED_NETWORK:Ljava/lang/String; = "download_requires_unmetered_network"

.field public static final PREFERENCE_SHOULD_ALERT_FOR_MISSING_LOCALE:Ljava/lang/String; = "device_locale_not_supported"

.field public static final PREFERENCE_SHOWN_PROFILE_GATE_COUNTER:Ljava/lang/String; = "user_saw_profile_gate"

.field public static final PREFERENCE_SIGNIN_CONFIG:Ljava/lang/String; = "signInConfigData"

.field public static final PREFERENCE_SIGNUP_ENABLED:Ljava/lang/String; = "signup_enabled"

.field public static final PREFERENCE_SIGNUP_TIMEOUT:Ljava/lang/String; = "signup_timeout"

.field public static final PREFERENCE_SKIPPED_OPTIONAL_UPDATE:Ljava/lang/String; = "nflx_update_skipped"

.field public static final PREFERENCE_STREAMING_QOE:Ljava/lang/String; = "streamingqoe"

.field public static final PREFERENCE_SUBTITLE_CONFIGURATION:Ljava/lang/String; = "nf_subtitle_configuraton"

.field public static final PREFERENCE_SUBTITLE_CONFIGURATION_QA_LOCAL:Ljava/lang/String; = "nf_subtitle_configuraton_QA_local"

.field public static final PREFERENCE_SUBTITLE_DOWNLOAD_RETRY_POLICY:Ljava/lang/String; = "subtitle_download_retry_policy"

.field public static final PREFERENCE_SUPPORTED_AUDIOFORMAT:Ljava/lang/String; = "supported_audio_format"

.field public static final PREFERENCE_USERAGENT_ESNMIGRATION_FLAGS:Ljava/lang/String; = "useragent_esnmigration_flags"

.field public static final PREFERENCE_USERAGENT_PROFILE_MAP:Ljava/lang/String; = "useragent_profilemap"

.field public static final PREFERENCE_USER_BW_ATUO_SETTING:Ljava/lang/String; = "bw_user_control_auto"

.field public static final PREFERENCE_USER_BW_MANUAL_CHOICE:Ljava/lang/String; = "bw_user_manual_setting"

.field public static final PREFERENCE_USER_LOGGED_IN:Ljava/lang/String; = "nf_user_status_loggedin"

.field public static final PREFERENCE_USER_SELECTED_A_PROFILE:Ljava/lang/String; = "user_profile_was_selected"

.field public static final PREFERENCE_USER_SELECTED_LANGUAGE:Ljava/lang/String; = "prefs_user_selected_language"

.field public static final PREFERENCE_VIDEO_RESOLUTION_OVERRIDE:Ljava/lang/String; = "video_resolution_override"

.field public static final PREFERENCE_VOIP_CONFIGURATION:Ljava/lang/String; = "voip_configuration"

.field public static final PREFERENCE_VOIP_ENABLED_ON_DEVICE:Ljava/lang/String; = "enable_voip_on_device"

.field public static final PREFERENCE_WARN_WHEN_PLAY_ON_NOWIFI:Ljava/lang/String; = "nf_play_no_wifi_warning"

.field public static final PREFERENCE__PLAYEROVERLAY:Ljava/lang/String; = "ui.playeroverlay"

.field public static final PREFETCH_LOLOMO_JOB_LAST_START_TIME_MS:Ljava/lang/String; = "prefs_prefetch_lolomo_job_last_start_time_ms"

.field public static final PREF_DEBUG_ENABLE_ANDROID_HTTP_STACK_OVER_CRONET:Ljava/lang/String; = "shouldUseAndroidHttpStackOverCronet"

.field public static final PREF_DEBUG_OVERLAY_ENABLED:Ljava/lang/String; = "prefs_debug_overlay_enabled"

.field public static final PREF_DEBUG_SETTINGS_FORCE_PIN_CHECK:Ljava/lang/String; = "prefs_debug_settings_force_pin_check"

.field public static final PREF_DISABLE_ANDROID_JOB_SCHEDULER:Ljava/lang/String; = "disableAndroidJobScheduler"

.field public static final PREF_DISABLE_ANDROID_JOB_SCHEDULER_JOB_FINISH:Ljava/lang/String; = "disableJobFinishAndroidJobScheduler"

.field public static final PREF_IS_APP_UPGRADED:Ljava/lang/String; = "appUpgraded"

.field public static final PREF_LAST_SUCCESSFUL_USER_PIN:Ljava/lang/String; = "prefs_last_successful_user_pin"

.field public static final PREF_MANIFEST_VERSION_CODE:Ljava/lang/String; = "manifestVersionCode"

.field public static final PREF_OFFLINE_SNACKBAR_DOWNLOAD_COMPLETE_COUNT:Ljava/lang/String; = "prefs_offline_snackbar_dl_complete_count"

.field public static final PREF_OFFLINE_SNACKBAR_USER_SWIPED:Ljava/lang/String; = "prefs_offline_snackbar_user_swiped"

.field public static final SHOULD_SHOWN_DATA_SAVER_NOTIFICATION:Ljava/lang/String; = "should_show_ftc_data_saver_notification"

.field public static final UI_LOADING_WORKFLOW_TYPE:Ljava/lang/String; = "ui_loading_workflow_type"

.field public static final USERAGENT_CURRENT_USERPROFILE_GUID:Ljava/lang/String; = "useragent_current_userprofile_guid"

.field public static final USERAGENT_USERPROFILES_DATA:Ljava/lang/String; = "useragent_userprofiles_data"

.field public static final USERAGENT_USER_DATA:Ljava/lang/String; = "useragent_user_data"
