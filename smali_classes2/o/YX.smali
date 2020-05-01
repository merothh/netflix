.class public Lo/YX;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YX$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/YX$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/YX$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YX$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/YX;->a:Lo/YX$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 19
    new-instance v0, Lo/YY;

    invoke-direct {v0}, Lo/YY;-><init>()V

    .line 20
    invoke-virtual {p0}, Lo/YX;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/YY;->setArguments(Landroid/os/Bundle;)V

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 45
    new-instance v0, Lo/YX$TaskDescription;

    invoke-direct {v0, p0}, Lo/YX$TaskDescription;-><init>(Lo/YX;)V

    check-cast v0, Lo/zT;

    return-object v0
.end method

.method public finish()V
    .locals 3

    .line 31
    invoke-virtual {p0}, Lo/YX;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_ORIGINAL_ICONS_DEEPLINK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lo/YX;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->editProfile:Lcom/netflix/cl/model/AppView;

    .line 34
    :goto_0
    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/YX;->startActivity(Landroid/content/Intent;)V

    .line 37
    :cond_1
    invoke-super {p0}, Lo/CookieSyncManager;->finish()V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lo/YX;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lcom/netflix/cl/model/AppView;->editProfile:Lcom/netflix/cl/model/AppView;

    goto :goto_1

    .line 27
    :cond_1
    sget-object v0, Lcom/netflix/cl/model/AppView;->addProfile:Lcom/netflix/cl/model/AppView;

    :goto_1
    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
