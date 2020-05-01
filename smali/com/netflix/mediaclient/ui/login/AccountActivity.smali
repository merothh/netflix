.class public abstract Lcom/netflix/mediaclient/ui/login/AccountActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "AccountActivity.java"


# static fields
.field private static final ACTION_FINISH_ACCOUNT_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_ACCOUNT_ACTIVITIES"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static finishAllAccountActivities(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ACCOUNT_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected allowTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasUpAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ACCOUNT_ACTIVITIES"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/login/AccountActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    return-void
.end method

.method public performUpAction()V
    .locals 0

    return-void
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
