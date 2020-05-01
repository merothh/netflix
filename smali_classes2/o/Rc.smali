.class public Lo/Rc;
.super Lo/Rr;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Rc$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/Rc$Activity;


# instance fields
.field private f:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController<",
            "-",
            "Lo/Qk;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;

.field private n:Lo/QE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Rc$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Rc$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Rc;->b:Lo/Rc$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/Rr;-><init>()V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;)Ljava/lang/String;
    .locals 5

    .line 258
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 259
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, "details"

    .line 260
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_1

    .line 261
    invoke-virtual {v2}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lo/Rc;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Serializable;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lo/Rc;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 3

    .line 223
    iget-object v0, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lo/Rc;->i:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lo/Rc;->f:Ljava/lang/String;

    .line 225
    invoke-virtual {p0, v1, v2}, Lo/Rc;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Qk;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lo/Rc;->E()Z

    move-result v2

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->setData(Ljava/lang/Object;Z)V

    .line 229
    invoke-virtual {p0}, Lo/Rc;->ad_()Z

    .line 230
    invoke-virtual {p0}, Lo/Rc;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Serializable;->invalidateOptionsMenu()V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lo/Rc;->D()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected B()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getHasVideos()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lo/Rc;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lo/Rc;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lo/Rc;->f:Ljava/lang/String;

    iget-object v2, p0, Lo/Rc;->i:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;-><init>(Lo/Rc;)V

    check-cast v3, Lo/alO;

    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method

.method public ad_()Z
    .locals 4

    .line 245
    iget-object v0, p0, Lo/Rc;->n:Lo/QE;

    if-nez v0, :cond_0

    const-string v1, "actionBarManager"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lo/Rc;->E()Z

    move-result v1

    iget-object v2, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lo/Rc;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lo/QE;->e(ZLjava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/Rc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lo/Qk;
    .locals 1

    .line 219
    new-instance v0, Lo/Qk;

    invoke-virtual {p0, p1, p2}, Lo/Rc;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/Qk;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;)V

    return-object v0
.end method

.method protected final d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;
    .locals 4

    if-eqz p2, :cond_2

    .line 199
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Rq;->f()Ljava/util/List;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOffli\u2026iList().listOfAdapterData"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 281
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 203
    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    const-string v3, "adapterData"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-ne v2, v3, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v3, "adapterData.videoAndProfileData.video"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-direct {p0, v1}, Lo/Rc;->a(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    invoke-direct {p0, p1}, Lo/Rc;->a(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lo/Rc$Application;

    invoke-direct {v0, p0, p1}, Lo/Rc$Application;-><init>(Lo/Rc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController<",
            "-",
            "Lo/Qk;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    return-void
.end method

.method public e(Lo/Bi;I)V
    .locals 1

    const-string p2, "offlinePlayableViewData"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "offlinePlayableViewData.playableId"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->progressUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/Rc;->f:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lo/Rr;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance p1, Lo/QE;

    invoke-virtual {p0}, Lo/Rc;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/QE;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p1, p0, Lo/Rc;->n:Lo/QE;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lo/Rc;->E()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/Rc;->d(Landroid/view/Menu;Z)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Rr;->onDestroyView()V

    invoke-virtual {p0}, Lo/Rc;->C()V

    return-void
.end method

.method protected v()I
    .locals 1

    .line 76
    iget-object v0, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getSelectedItemsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController<",
            "-",
            "Lo/Qk;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    return-object v0
.end method

.method protected y()V
    .locals 4

    .line 80
    iget-object v0, p0, Lo/Rc;->k:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lo/Rc;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    check-cast v0, Ljava/lang/Iterable;

    .line 269
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/QA;

    .line 83
    instance-of v3, v2, Lo/QB;

    if-eqz v3, :cond_0

    .line 84
    check-cast v2, Lo/QB;

    invoke-virtual {v2}, Lo/QB;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lo/nS;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Lo/QB;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lo/Rc;->a(Z)V

    :cond_2
    return-void
.end method

.method protected z()V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lo/Rc;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lo/Rc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const-string v2, "title_id"

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/Rc;->i:Ljava/lang/String;

    const-string v2, "profile_id"

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Rc;->f:Ljava/lang/String;

    const-string v1, "playable_id"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 156
    invoke-static {v0}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v1

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video details not in realm, finish the activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lo/Rc;->b:Lo/Rc$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 162
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 163
    new-instance v0, Lo/Rc$StateListAnimator;

    invoke-direct {v0, p0}, Lo/Rc$StateListAnimator;-><init>(Lo/Rc;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_2

    .line 170
    invoke-virtual {v1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v0

    const-string v2, "videoDetails.playable"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Rc;->i:Ljava/lang/String;

    .line 171
    invoke-virtual {v1}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Rc;->f:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_3

    .line 174
    sget-object v2, Lo/Rc;->b:Lo/Rc$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 175
    iput-object v0, p0, Lo/Rc;->i:Ljava/lang/String;

    .line 176
    invoke-virtual {v1}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Rc;->f:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_3
    iput-object v0, p0, Lo/Rc;->i:Ljava/lang/String;

    .line 180
    :goto_0
    iget-object v0, p0, Lo/Rc;->i:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SPY-16009: selectedTitleId is null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 189
    :cond_4
    :goto_1
    invoke-super {p0}, Lo/Rr;->z()V

    return-void
.end method
