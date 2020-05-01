.class public Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;
.super Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
        "Lo/SK;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final destroyObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lo/BC;",
            "Lo/RP;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lo/BC;",
            "Lo/RP;",
            "Z",
            "Lo/Rr$Activity;",
            "Lo/Rq;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProfile"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->destroyObservable:Lio/reactivex/Observable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V
    .locals 10

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lo/RP$StateListAnimator;

    invoke-direct {v0}, Lo/RP$StateListAnimator;-><init>()V

    check-cast v0, Lo/RP;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    .line 26
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lo/BC;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x48

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addBottomModels(Lo/QF;ZZ)V
    .locals 0

    .line 19
    check-cast p1, Lo/SK;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->addBottomModels(Lo/SK;ZZ)V

    return-void
.end method

.method protected addBottomModels(Lo/SK;ZZ)V
    .locals 10

    const-string p3, "data"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->getFooterItemDecorator()Lo/PowerManager;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lo/PowerManager;->a(Z)V

    if-nez p2, :cond_0

    .line 41
    new-instance p2, Lo/QG;

    invoke-direct {p2}, Lo/QG;-><init>()V

    const-string p3, "empty"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lo/QG;->b(Ljava/lang/CharSequence;)Lo/QG;

    move-result-object p2

    check-cast p2, Lo/BiConsumer;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->add(Lo/BiConsumer;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lo/SK;->b()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Lo/SC;

    invoke-direct {p1}, Lo/SC;-><init>()V

    const-string p2, "downloadables_list_loading"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/SC;->b(Ljava/lang/CharSequence;)Lo/SC;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->add(Lo/BiConsumer;)V

    goto/16 :goto_1

    .line 49
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_2

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 51
    new-instance v1, Lo/SH;

    invoke-direct {v1}, Lo/SH;-><init>()V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/SH;->d(Ljava/lang/CharSequence;)Lo/SH;

    move-result-object v1

    .line 53
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/SH;->b(Ljava/lang/CharSequence;)Lo/SH;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lo/SH;->d(I)Lo/SH;

    move-result-object v1

    check-cast v1, Lo/BiConsumer;

    .line 51
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->add(Lo/BiConsumer;)V

    .line 56
    new-instance v9, Lo/JT;

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    .line 59
    check-cast v1, Landroid/content/Context;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Lo/Kl$Activity;->c(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object v4

    const-string v1, "Lolomo.RowConfigs.getDow\u2026apter.VIEW_TYPE_DOWNLOAD)"

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lo/KP;->d()Lo/KP;

    move-result-object v6

    const-string v1, "HomeLolomoFetchStrategy.create()"

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v7, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->cachedVideos:Lcom/netflix/cl/model/AppView;

    invoke-direct {v7, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v8

    const-string v1, "context.serviceManager"

    invoke-static {v8, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v9

    move-object v3, p3

    move v5, v0

    .line 56
    invoke-direct/range {v1 .. v8}, Lo/JT;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/PooledStringWriter;ILo/KP;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Am;)V

    .line 66
    new-instance v1, Lo/JY;

    invoke-direct {v1}, Lo/JY;-><init>()V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LomoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v1, p3}, Lo/JY;->a(Ljava/lang/CharSequence;)Lo/JY;

    move-result-object p3

    .line 68
    check-cast v9, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {p3, v9}, Lo/JY;->c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lo/JY;

    move-result-object p3

    check-cast p3, Lo/BiConsumer;

    .line 66
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->add(Lo/BiConsumer;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 73
    invoke-static {p0, p2, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addFindMoreButtonModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    return-void
.end method

.method public createProfileView(Ljava/lang/String;)Lo/BiConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->getProfileProvider()Lo/RP;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/RP;->c(Ljava/lang/String;)Lo/Td;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Lo/RT;

    invoke-direct {v0}, Lo/RT;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/RT;->d(Ljava/lang/CharSequence;)Lo/RT;

    move-result-object v0

    invoke-interface {p1}, Lo/Td;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/RT;->a(Ljava/lang/CharSequence;)Lo/RT;

    move-result-object v0

    .line 79
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 86
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 79
    invoke-interface {p1, v1}, Lo/Td;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/RT;->a(Ljava/lang/String;)Lo/RT;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab11466;->getModelCountBuiltSoFar()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/RT;->b(I)Lo/RT;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
