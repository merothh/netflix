.class public final Lo/Tl;
.super Lo/Tn;
.source ""


# instance fields
.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/Tn;-><init>()V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bh:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final r()V
    .locals 4

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oA:I

    invoke-virtual {p0, v0}, Lo/Tl;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.plan_\u2026_confirm_to_download_now)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oL:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lo/Tl;->d()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlanChoice;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 42
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->oC:I

    invoke-virtual {p0, v2}, Lo/Tl;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.plan_upgrade_and_download)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "planScreensText"

    .line 43
    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lo/Tl;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final t()Lo/nS;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lo/Tl;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final w()Lo/Rq;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lo/Tl;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lo/Tl;->dismiss()V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/Tl;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Tl;->e:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/Tl;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Tl;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public e()V
    .locals 12

    .line 47
    invoke-virtual {p0}, Lo/Tl;->a()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 49
    invoke-direct {p0}, Lo/Tl;->w()Lo/Rq;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 50
    invoke-interface {v0}, Lo/Rq;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 51
    invoke-interface {v0, v3}, Lo/Rq;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    const-string v5, "offlineAdapterData"

    .line 52
    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v5

    iget-object v5, v5, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    sget-object v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    .line 53
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v5, "offlineAdapterData.videoAndProfileData.video"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "offlineAdapterData.videoAndProfileData.video.id"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0, v4}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v7

    :cond_0
    invoke-direct {p0, v7}, Lo/Tl;->a(Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 55
    invoke-direct {p0}, Lo/Tl;->t()Lo/nS;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/Tl;->a()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    invoke-interface {v5, v4, v6, v7}, Lo/nS;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_3

    .line 58
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v4

    const-string v5, "offlineAdapterData.episodes"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v8, v4, v6

    const-string v9, "episode"

    .line 59
    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Lo/Bi;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v7

    :goto_2
    invoke-direct {p0, v9}, Lo/Tl;->a(Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 60
    invoke-direct {p0}, Lo/Tl;->t()Lo/nS;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0}, Lo/Tl;->a()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-static {}, Lo/amh;->c()V

    :cond_4
    invoke-interface {v9, v8, v10, v11}, Lo/nS;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 67
    :cond_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "This dialog in offline mode should not receive any null param as part of SPY-11993."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 69
    :cond_8
    invoke-virtual {p0}, Lo/Tl;->dismiss()V

    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadLimitUpgrade"

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Tn;->onDestroyView()V

    invoke-virtual {p0}, Lo/Tl;->p()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 34
    invoke-super {p0}, Lo/Tn;->onStart()V

    .line 35
    invoke-virtual {p0}, Lo/Tl;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1, p2}, Lo/Tn;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lo/Tl;->r()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lo/Tl;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public q()I
    .locals 1

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oE:I

    return v0
.end method
