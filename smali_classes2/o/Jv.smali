.class public abstract Lo/Jv;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""


# static fields
.field private static final ACTION_FINISH_ACCOUNT_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_ACCOUNT_ACTIVITIES"


# instance fields
.field protected mUserAgentRepository:Lo/JM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static finishAllAccountActivities(Landroid/content/Context;)V
    .locals 2

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ACCOUNT_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public allowTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasUpAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance p1, Lo/JM;

    invoke-direct {p1}, Lo/JM;-><init>()V

    iput-object p1, p0, Lo/Jv;->mUserAgentRepository:Lo/JM;

    const-string p1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ACCOUNT_ACTIVITIES"

    .line 23
    invoke-virtual {p0, p1}, Lo/Jv;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

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
