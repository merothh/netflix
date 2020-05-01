.class public final Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;
.super Ljava/lang/Object;
.source "BandwidthUtility.java"


# static fields
.field private static final DEFAULT_AUTO_SWITCH_STATE_ON:Ljava/lang/Boolean;

.field public static final DEFAULT_CELLULAR_AUTO_KBPS:I = 0x258

.field public static final DEFAULT_MANUAL_CHOICE:I

.field private static final FORCE_DATA_SAVING_PREF:Ljava/lang/Boolean;

.field public static final TAG:Ljava/lang/String; = "nf_bw_saving"

.field private static final UNLIMITED_CELLULAR_BITRATE_KBPS:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->FORCE_DATA_SAVING_PREF:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_AUTO_SWITCH_STATE_ON:Ljava/lang/Boolean;

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_MANUAL_CHOICE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canShowDataSavingPreference(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->FORCE_DATA_SAVING_PREF:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasCellular(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v2, "no cellular!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static canSupportDDPlus51(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBitrateForManualChoice(Landroid/content/Context;ILcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget v0, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateLow:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->MEDIUM:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget v0, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateMedium:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->HIGH:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget v0, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateHigh:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_3

    const/16 v0, 0x4e20

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x258

    goto :goto_0
.end method

.method public static getCellularVideoBitrateKbps(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x258

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateAuto:I

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getBitrateForManualChoice(Landroid/content/Context;ILcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    goto :goto_0
.end method

.method public static getDataSaverDescription(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080111

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->create(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoiceDescription(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)I

    move-result v0

    goto :goto_0
.end method

.method public static getManualChoice(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "bw_user_manual_setting"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_MANUAL_CHOICE:I

    :cond_1
    return v0
.end method

.method private static getManualChoiceDescription(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)I
    .locals 3

    const v0, 0x7f080111

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility$1;->$SwitchMap$com$netflix$mediaclient$ui$bandwidthsetting$BandwidthPreferenceDialog$ManualBwChoice:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f080119

    goto :goto_0

    :pswitch_1
    const v0, 0x7f080115

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080117

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080113

    goto :goto_0

    :pswitch_4
    const v0, 0x7f08011f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isAutomaticOn(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "bw_user_control_auto"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_AUTO_SWITCH_STATE_ON:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBWSavingEnabledForPlay(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_bw_saving"

    const-string/jumbo v3, "isNetworkTypeCellular: %b"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static isDataSaverDisabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "disable_data_saver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPlaybackInWifiOnly(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_play_no_wifi_warning"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static migrateWifiOnlySetting(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v1, "Data saver functionality is not yet enabled .. skip migrate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v1, "migrating wifi only setting to latest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->saveUserSelections(Landroid/content/Context;Ljava/lang/Boolean;I)V

    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v1, "unsetting old wifi only setting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static saveUserSelections(Landroid/content/Context;Ljava/lang/Boolean;I)V
    .locals 2

    const-string/jumbo v1, "bw_user_control_auto"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string/jumbo v0, "bw_user_manual_setting"

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldDelayBifForPlay(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isBWSavingEnabledForPlay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldLimitCellularVideoBitrate(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
