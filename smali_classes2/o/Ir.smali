.class public Lo/Ir;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/CY;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static g()Ljava/lang/Class;
    .locals 1

    .line 37
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/Ix;

    goto :goto_0

    :cond_0
    const-class v0, Lo/Ir;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 58
    invoke-static {}, Lo/Np;->c()Lo/Np;

    move-result-object v0

    return-object v0
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowActionBar()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lo/Ir;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->a()Z

    move-result v0

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 73
    new-instance v0, Lo/Ir$1;

    invoke-direct {v0, p0}, Lo/Ir$1;-><init>(Lo/Ir;)V

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 44
    invoke-static {}, Lo/TextServicesManager;->e()I

    move-result v0

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 63
    sget-object v0, Lcom/netflix/cl/model/AppView;->accountMenu:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleProfileActivated()V
    .locals 4

    .line 103
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting app, time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreTabActivity"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {p0}, Lo/Ir;->finishAllActivities(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Lo/Ir;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lo/Ir;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Lo/CookieSyncManager;->handleProfileSelectionResult(ILjava/lang/String;)V

    .line 121
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lo/Ir;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/Np;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lo/Ir;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/Np;

    invoke-virtual {v0}, Lo/Np;->d()V

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-eq p1, v0, :cond_1

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 129
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 130
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, v0, p1}, Lo/Ir;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public hasBottomNavBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const-string v1, "MoreTabActivity"

    const/16 v2, -0x1ea

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 140
    iget-object v1, p0, Lo/Ir;->fragmentHelper:Lo/Ih;

    invoke-interface {v1}, Lo/Ih;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p0, Lo/Ir;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V

    .line 51
    new-instance p1, Lo/KB;

    invoke-direct {p1, v0}, Lo/KB;-><init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b(Lo/Il;)V

    .line 52
    invoke-virtual {p0, v0}, Lo/Ir;->setFragmentHelper(Lo/Ih;)V

    .line 53
    invoke-virtual {p0}, Lo/Ir;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Z)V

    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
