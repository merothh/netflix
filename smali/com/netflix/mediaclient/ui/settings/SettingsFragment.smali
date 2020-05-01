.class public Lcom/netflix/mediaclient/ui/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final FAKE_KEY_BW_SAVE:Ljava/lang/String; = "nf.bw_save"

.field private static final FAKE_KEY_DOWNLOADS_DELETE_ALL_CONFIG:Ljava/lang/String; = "pref.downloads.remove_all"

.field private static final FAKE_KEY_DOWNLOADS_VIDEO_QUALITY_CONFIG:Ljava/lang/String; = "pref.downloads.video_quality"

.field private static final FAKE_KEY_ENABLE_NOTIFICATIONS:Ljava/lang/String; = "nf_notification_enable"

.field private static final FAKE_KEY_SUBTITLE_CONFIG:Ljava/lang/String; = "ui.subtitleConfig"

.field private static final FAKE_KEY_WIFI_ONLY:Ljava/lang/String; = "nf_play_no_wifi_warning"

.field private static final KEY_DOWNLOADS_WIFI_ONLY_CONFIG:Ljava/lang/String; = "pref.downloads.wifi_only"

.field private static final KEY_PREF_NOTIFICATION:Ljava/lang/String; = "pref.notification"

.field private static final OFFLINE_VIDEO_FORMAT_AVC:Ljava/lang/String; = "Default"

.field private static final OFFLINE_VIDEO_FORMAT_HEVC:Ljava/lang/String; = "HEVC"

.field private static final OFFLINE_VIDEO_FORMAT_VP9:Ljava/lang/String; = "VP9"

.field private static final PREFS_DOWNLOAD_CATEGORY_KEY:Ljava/lang/String; = "pref.downloads"

.field private static final PREFS_NAME:Ljava/lang/String; = "nfxpref"

.field private static final SUBTITLE_CONFIG_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final SUBTITLE_CONFIG_ENHANCED_XML:Ljava/lang/String; = "ENHANCED_XML"

.field private static final SUBTITLE_CONFIG_SIMPLE_XML:Ljava/lang/String; = "SIMPLE_XML"

.field private static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityCallback:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

.field dialog:Landroid/app/Dialog;

.field private final mDeleteAllListener:Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

.field private serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->mDeleteAllListener:Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->mDeleteAllListener:Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleAllOfflineItemsDeleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->updateSubtitleConfig(Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activityCallback:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->updateDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method public static create()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;-><init>()V

    return-object v0
.end method

.method private handleAllOfflineItemsDeleted()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "pref.downloads.remove_all"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string/jumbo v1, "pref.downloads"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->refreshStorageIndicator()V

    goto :goto_0
.end method

.method private handleAndroidHttpStackSettings(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    return-void
.end method

.method private handleBandwidthSaveSettings()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->canShowDataSavingPreference(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeBwSettings()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf.bw_save"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeBwSettings()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->setDataSaverDescription(Landroid/content/Context;Landroid/preference/Preference;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$7;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private handleCastAppIdSettings()V
    .locals 3

    const-string/jumbo v0, "ui.castAppId"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080121

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private handleDownloadsDeleteAllConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    const-string/jumbo v0, "pref.downloads.remove_all"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    const-string/jumbo v0, "pref.downloads"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private handleDownloadsPreferenceGroup(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsDeleteAllConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsWifiOnlySetting(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "pref.downloads"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private handleDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "pref.downloads"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v0, "pref.downloads.video_quality"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "downloads downloadCategoryPref or downloadQualityPref is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    instance-of v1, v1, Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_4

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "downloadCategoryPref not a group pref"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-nez v1, :cond_5

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "downloads downloadQualityPref not a list pref"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    check-cast v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_7

    const-string/jumbo v1, "SettingsFragment"

    const-string/jumbo v2, "Debug: downloads video quality"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroid/preference/ListPreference;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->populateDownloadsVideoQualityConfig(Landroid/preference/ListPreference;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Preference downloads video quality type is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Debug: downloads video quality not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDownloadsWifiOnlySetting(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "pref.downloads.wifi_only"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$6;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private handleForceSoftwareDecoder()V
    .locals 3

    const-string/jumbo v0, "ui.forceswdecoder"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "VP9: SW decoder ["

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9SoftwareDecoder()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], HW decoder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], secured ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nHEVC: HW decoder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHEVCHardwareDecoder()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], secured ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isUseSoftwareDecoder()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private handleOfflineVideoFormatSetting()V
    .locals 5

    const-string/jumbo v0, "ui.offlineVideoFormat"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v2, "set offline video format"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$4;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "Default"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "HEVC"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "VP9"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "video/avc"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "video/hevc"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    check-cast v0, Landroid/preference/ListPreference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Landroid/preference/ListPreference;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->getPresetFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilder;->getPresetFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, " offline video format is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePushNotificationsSettings()V
    .locals 4

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Notifications are NOT supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeNotificationGroup()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Enable notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->isRegisteredForPushNotifications()Z

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifications were enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "nf_notification_enable"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeNotificationGroup()V

    goto :goto_0
.end method

.method private handleSubtitleConfig()V
    .locals 3

    const-string/jumbo v0, "ui.subtitleConfig"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "SettingsFragment"

    const-string/jumbo v2, "Debug: subtitle config"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->populateSubtitleConfig(Landroid/preference/ListPreference;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Preference player type is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Debug: player overlay not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUserPinCheckSetting()V
    .locals 4

    const-string/jumbo v0, "ui.forcePinCheck"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "prefs_debug_settings_force_pin_check"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$2;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private handleWifiOnlySetting()V
    .locals 1

    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->migrateWifiOnlySetting(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->canShowDataSavingPreference(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeWiFiOnlySettings()V

    goto :goto_0
.end method

.method private isGcmSupported()Z
    .locals 2

    :try_start_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Verifies that the device supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Device does NOT supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRegisteredForPushNotifications()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getPushOptInStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private populateDownloadsVideoQualityConfig(Landroid/preference/ListPreference;)V
    .locals 7

    const v6, 0x7f080279

    const v5, 0x7f080277

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08027a

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->generateTitleAndSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080278

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->generateTitleAndSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getCurrentDownloadVideoQuality()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    const-string/jumbo v3, "pref.downloads.video_quality"

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadVideoQuality:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateSubtitleConfig(Landroid/preference/ListPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->loadQaLocalOverride(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f080320

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "DEFAULT"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f080321

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "ENHANCED_XML"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f080323

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "SIMPLE_XML"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "DEFAULT"

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "SIMPLE_XML"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "ENHANCED_XML"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeBwSettings()V
    .locals 2

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "removing bandwidth settings"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "video.playback"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "nf.bw_save"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private removeNotificationGroup()V
    .locals 3

    const-string/jumbo v0, "nf_notification_enable"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v1, "pref.notification"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private removeWiFiOnlySettings()V
    .locals 2

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "removing WiFiOnly settings"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "video.playback"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "nf_play_no_wifi_warning"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private setDataSaverDescription(Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getDataSaverDescription(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->setDownloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V

    :cond_0
    return-void
.end method

.method private updateSubtitleConfig(Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V
    .locals 3

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Update subtitle config"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_SUBTITLE_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "lookupType"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getLookupType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activityCallback:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement ActivityCallbackListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onBandwidthSettingsDone(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "nf.bw_save"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->setDataSaverDescription(Landroid/content/Context;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "nfxpref"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "pref.screen"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "pref.qa.debugonly"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handlePushNotificationsSettings()V

    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleWifiOnlySetting()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleBandwidthSaveSettings()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsPreferenceGroup(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleAndroidHttpStackSettings(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "nf_play_user_no_wifi_warned_already"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method
