.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;
.super Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
        "Lo/QF;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final deleteAllClickListener:Landroid/view/View$OnClickListener;

.field private deleteInProgress:Z

.field private final errorResolver:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

.field private final renewAllClickListener:Landroid/view/View$OnClickListener;

.field private renewalInProgress:Z

.field private final viewAllClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Lo/RP;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Lo/RP;",
            "Z",
            "Lo/Rr$Activity;",
            "Lo/Rq;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProfile"

    move-object v1, p2

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileProvider"

    move-object v2, p3

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResolver"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move v3, p4

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object v8, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v9, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->errorResolver:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Application;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->renewAllClickListener:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$ActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->deleteAllClickListener:Landroid/view/View$OnClickListener;

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;->e:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->viewAllClickListener:Landroid/view/View$OnClickListener;

    .line 56
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->errorResolver:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 57
    move-object v1, v10

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "errorResolver.getRenewAl\u2026eUntil(destroyObservable)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V

    check-cast v2, Lo/alA;

    .line 63
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful$2;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object p1, v0

    move-object p2, v3

    move-object p3, v4

    move-object p4, v2

    move/from16 p5, v5

    move-object/from16 p6, v6

    .line 58
    invoke-static/range {p1 .. p6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 70
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->errorResolver:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->a()Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorResolver.getDeleteA\u2026eUntil(destroyObservable)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V

    check-cast v1, Lo/alA;

    .line 77
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399$notUseful2$2;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)V

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object p1, v0

    move-object p2, v2

    move-object p3, v3

    move-object p4, v1

    move/from16 p5, v4

    move-object/from16 p6, v5

    .line 72
    invoke-static/range {p1 .. p6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;ILo/amc;)V
    .locals 11

    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lo/RP$StateListAnimator;

    invoke-direct {v0}, Lo/RP$StateListAnimator;-><init>()V

    check-cast v0, Lo/RP;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x24

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;Lio/reactivex/Observable;ILo/amc;)V

    return-void
.end method

.method public static final synthetic access$getDeleteInProgress$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->deleteInProgress:Z

    return p0
.end method

.method public static final synthetic access$getErrorResolver$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->errorResolver:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    return-object p0
.end method

.method public static final synthetic access$getRenewalInProgress$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->renewalInProgress:Z

    return p0
.end method

.method public static final synthetic access$setDeleteInProgress$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->deleteInProgress:Z

    return-void
.end method

.method public static final synthetic access$setRenewalInProgress$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->renewalInProgress:Z

    return-void
.end method


# virtual methods
.method protected addTopModels(Lo/QF;Z)V
    .locals 5

    const-string p2, "data"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->getUiList()Lo/Rq;

    move-result-object p1

    invoke-interface {p1}, Lo/Rq;->f()Ljava/util/List;

    move-result-object p1

    const-string p2, "uiList.listOfAdapterData"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 90
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->errorResolver:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->getUiList()Lo/Rq;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    const-string v4, "it.videoAndProfileData.video"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "it.videoAndProfileData.video.playableId"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->a(Lo/Rq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 97
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-ne v1, v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-gtz p2, :cond_4

    if-lez v0, :cond_8

    .line 105
    :cond_4
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->renewalInProgress:Z

    const-string v1, "downloads_expired_small"

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->deleteInProgress:Z

    if-eqz p1, :cond_5

    goto :goto_1

    .line 123
    :cond_5
    sget-object p1, Lo/dL;->c:Lo/dL$StateListAnimator;

    invoke-virtual {p1}, Lo/dL$StateListAnimator;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 125
    new-instance p1, Lo/SW;

    invoke-direct {p1}, Lo/SW;-><init>()V

    .line 126
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lo/SW;->e(Ljava/lang/CharSequence;)Lo/SW;

    move-result-object p1

    .line 127
    invoke-virtual {p1, p2}, Lo/SW;->d(I)Lo/SW;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Lo/SW;->b(I)Lo/SW;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->renewAllClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/SW;->d(Landroid/view/View$OnClickListener;)Lo/SW;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->deleteAllClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/SW;->b(Landroid/view/View$OnClickListener;)Lo/SW;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->viewAllClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/SW;->h(Landroid/view/View$OnClickListener;)Lo/SW;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 124
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->add(Lo/BiConsumer;)V

    goto :goto_3

    .line 106
    :cond_6
    :goto_1
    new-instance p1, Lo/SW;

    invoke-direct {p1}, Lo/SW;-><init>()V

    .line 107
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lo/SW;->e(Ljava/lang/CharSequence;)Lo/SW;

    move-result-object p1

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1, v1}, Lo/SW;->e(Z)Lo/SW;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p2}, Lo/SW;->d(I)Lo/SW;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Lo/SW;->b(I)Lo/SW;

    move-result-object p1

    .line 112
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->renewalInProgress:Z

    const-string v1, "quantity"

    if-eqz v0, :cond_7

    .line 113
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->bW:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 117
    :cond_7
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->bQ:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 112
    :goto_2
    check-cast p2, Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p1, p2}, Lo/SW;->a(Ljava/lang/CharSequence;)Lo/SW;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 105
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab12399;->add(Lo/BiConsumer;)V

    :cond_8
    :goto_3
    return-void
.end method
