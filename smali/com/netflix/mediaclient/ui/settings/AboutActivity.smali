.class public Lcom/netflix/mediaclient/ui/settings/AboutActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "AboutActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_AboutActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->create()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f030060

    return v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->settings:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
