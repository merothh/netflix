.class public final Lo/Iz;
.super Lo/IA;
.source ""


# direct methods
.method public constructor <init>(Lo/Iw;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lo/IA;-><init>(Lo/Iw;)V

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 12

    .line 33
    invoke-virtual {p0}, Lo/Iz;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "owner ?: return false"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1020002

    .line 34
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "activity.bottomNavBar ?: return false"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v4, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/Temperature;

    if-eqz v3, :cond_0

    .line 38
    new-instance v1, Lo/IncidentReportArgs;

    .line 39
    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    .line 40
    sget v6, Lcom/netflix/mediaclient/ui/R$Dialog;->ay:I

    .line 41
    sget v11, Lcom/netflix/mediaclient/ui/R$Application;->z:I

    .line 42
    move-object v7, v3

    check-cast v7, Landroid/view/View;

    .line 43
    new-instance v3, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DownloadsForYouDialogManageable$show$container$1;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DownloadsForYouDialogManageable$show$container$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    move-object v8, v3

    check-cast v8, Lo/alB;

    .line 47
    sget-object v3, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DownloadsForYouDialogManageable$show$container$2;->e:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DownloadsForYouDialogManageable$show$container$2;

    move-object v9, v3

    check-cast v9, Lo/alB;

    const/4 v10, 0x1

    move-object v4, v1

    .line 38
    invoke-direct/range {v4 .. v11}, Lo/IncidentReportArgs;-><init>(Landroid/content/Context;ILandroid/view/View;Lo/alB;Lo/alB;ZI)V

    .line 51
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->fk:I

    invoke-virtual {v1, v3}, Lo/IncidentReportArgs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lo/Iz$TaskDescription;

    invoke-direct {v4, v0, v1}, Lo/Iz$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lo/IncidentReportArgs;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v1, v2}, Lo/IncidentReportArgs;->b(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method protected d()Z
    .locals 5

    .line 18
    invoke-virtual {p0}, Lo/Iz;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lo/Iz;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lo/Am;->q()Lo/nS;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lo/adh;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 27
    sget-object v4, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v4, v2}, Lo/fo$ActionBar;->a(Lo/nS;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v2}, Lo/aeN;->e()Z

    move-result v2

    if-nez v2, :cond_3

    .line 29
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getTutorialHelper()Lo/Se;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/Se;->e(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    return v3
.end method
