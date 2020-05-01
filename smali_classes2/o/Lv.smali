.class public final Lo/Lv;
.super Lo/SynchronousResultReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Lv$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SynchronousResultReceiver<",
        "Lo/Lz;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/Lv$ActionBar;


# instance fields
.field private b:Lo/PS;

.field private e:Ljava/lang/Long;

.field private f:Ljava/util/HashMap;

.field private h:Lio/reactivex/disposables/Disposable;

.field private j:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Lv$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Lv$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Lv;->d:Lo/Lv$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->ce:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    move-object v1, p0

    .line 35
    invoke-direct/range {v1 .. v9}, Lo/SynchronousResultReceiver;-><init>(JZLandroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;Ljava/lang/Integer;ILo/amc;)V

    return-void
.end method

.method public static final synthetic a(Lo/Lv;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lo/Lv;->g()V

    return-void
.end method

.method public static final synthetic a(Lo/Lv;Lo/agg;Lo/bs;Lo/alB;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lo/Lv;->a(Lo/agg;Lo/bs;Lo/alB;)V

    return-void
.end method

.method private final a(Lo/agg;Lo/bs;Lo/alB;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/agg;",
            "Lo/bs;",
            "Lo/alB<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 115
    invoke-interface {p1}, Lo/agg;->bu()Lo/agg;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "requiredCurrentEpisode"

    .line 116
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/agg;->S()I

    move-result v1

    .line 121
    invoke-interface {v0}, Lo/agg;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 119
    invoke-interface {v0}, Lo/agg;->p()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lo/agg;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lo/agg;->bt()Lo/agg;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lo/KeymasterArguments;

    .line 129
    invoke-interface {v0}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requiredCurrentEpisode.id"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 128
    invoke-direct {v1, v0, v2}, Lo/KeymasterArguments;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lo/DateTransformation;

    .line 127
    invoke-interface {p2, v1}, Lo/bs;->b(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v2

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$1;-><init>(Lo/agg;Lo/bs;Lo/alB;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$obtainNecessaryDataAndEmitController$$inlined$let$lambda$2;-><init>(Lo/agg;Lo/bs;Lo/alB;)V

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 132
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {p3}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    move-object p1, p0

    check-cast p1, Lo/Lv;

    .line 149
    invoke-interface {p3}, Lo/alB;->invoke()Ljava/lang/Object;

    .line 150
    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_1

    .line 152
    :cond_2
    invoke-interface {p3}, Lo/alB;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private final b(Landroid/view/ViewGroup;)V
    .locals 3

    .line 242
    invoke-direct {p0}, Lo/Lv;->q()V

    .line 243
    invoke-virtual {p0}, Lo/Lv;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lo/PS;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lo/Lv;->b:Lo/PS;

    .line 246
    iget-object p1, p0, Lo/Lv;->b:Lo/PS;

    check-cast p1, Lo/nV;

    invoke-interface {v0, p1}, Lo/nS;->e(Lo/nV;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/Lv;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/Lv;->j:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method

.method public static final synthetic c(Lo/Lv;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lo/Lv;->j()V

    return-void
.end method

.method public static final synthetic d(Lo/Lv;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/Lv;->t()V

    return-void
.end method

.method private final q()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lo/Lv;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lo/Lv;->b:Lo/PS;

    if-eqz v1, :cond_0

    .line 253
    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    const/4 v0, 0x0

    .line 254
    check-cast v0, Lo/PS;

    iput-object v0, p0, Lo/Lv;->b:Lo/PS;

    :cond_0
    return-void
.end method

.method private final t()V
    .locals 2

    .line 259
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/Lv;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 260
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Lv;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/Lz;",
            ">;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Lz;",
            ">;Z)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "controllerItemClicks"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClickItemsSubject"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lo/Lv$Application;

    invoke-direct {v0, p0, p2, p3}, Lo/Lv$Application;-><init>(Lo/Lv;Lio/reactivex/subjects/PublishSubject;Z)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 209
    invoke-super {p0}, Lo/SynchronousResultReceiver;->d()V

    .line 211
    iget-object v0, p0, Lo/Lv;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extra_cw_item_video_id"

    .line 59
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_tracking_info_holder"

    .line 60
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of v0, p2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuDialogFragment$processArguments$1;-><init>(Lo/Lv;)V

    check-cast v0, Lo/alN;

    .line 58
    invoke-static {p1, p2, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    move-object p1, p0

    check-cast p1, Lo/Lv;

    .line 101
    invoke-virtual {p1}, Lo/Lv;->dismiss()V

    .line 102
    sget-object p1, Lo/akj;->a:Lo/akj;

    :goto_0
    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected h()V
    .locals 0

    .line 237
    invoke-direct {p0}, Lo/Lv;->t()V

    .line 238
    invoke-super {p0}, Lo/SynchronousResultReceiver;->h()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lo/Lv;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/SynchronousResultReceiver;->onDestroyView()V

    invoke-virtual {p0}, Lo/Lv;->i()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 188
    invoke-super {p0}, Lo/SynchronousResultReceiver;->onStart()V

    .line 190
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->titleActionMenu:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lo/Lv;->j:Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Lv;->e:Ljava/lang/Long;

    .line 192
    invoke-virtual {p0}, Lo/Lv;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0, v0}, Lo/Lv;->b(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 198
    invoke-super {p0}, Lo/SynchronousResultReceiver;->onStop()V

    .line 200
    invoke-direct {p0}, Lo/Lv;->q()V

    .line 202
    iget-object v0, p0, Lo/Lv;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/Lv;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 204
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/Lv;->e:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1, p2}, Lo/SynchronousResultReceiver;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lo/Lv;->e()Lio/reactivex/Observable;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Lo/Lv;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object p2

    .line 264
    new-instance v0, Lo/Lv$StateListAnimator;

    invoke-direct {v0, p2}, Lo/Lv$StateListAnimator;-><init>(Lo/UnicodeScript;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/reactivex/ObservableSource;

    .line 162
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 164
    new-instance p2, Lo/Lv$TaskDescription;

    invoke-direct {p2, p0}, Lo/Lv$TaskDescription;-><init>(Lo/Lv;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    .line 180
    new-instance v0, Lo/Lv$Activity;

    invoke-direct {v0, p0}, Lo/Lv$Activity;-><init>(Lo/Lv;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 163
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/Lv;->h:Lio/reactivex/disposables/Disposable;

    return-void
.end method
