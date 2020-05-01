.class public Lcom/netflix/mediaclient/ui/settings/SettingsActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;
.implements Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_settings"


# instance fields
.field private netflixStorageSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->netflixStorageSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->netflixStorageSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->setupStorageIndicator()V

    return-void
.end method

.method public static createStartIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupStorageIndicator()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    invoke-direct {v1, p0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 68
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->create()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f030060

    return v0
.end method

.method public getDownloadsSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->netflixStorageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->settings:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public onBandwidthSettingsDone(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->onBandwidthSettingsDone(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method public refreshStorageIndicator()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const v1, 0x7f0f0017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->update()V

    .line 78
    :cond_0
    return-void
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method
