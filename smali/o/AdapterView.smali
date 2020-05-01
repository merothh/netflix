.class public final Lo/AdapterView;
.super Lo/ActivityChooserView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ActivityChooserView<",
        "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lo/AdapterView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
    .locals 1

    const-string v0, "shareUtils"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUtils"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/ActivityChooserView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 18
    new-instance p1, Lo/AbsSpinner;

    invoke-direct {p1}, Lo/AbsSpinner;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 19
    new-instance p2, Lo/WebViewUpdateService;

    invoke-direct {p2, p1}, Lo/WebViewUpdateService;-><init>(Lo/AbsSpinner;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lo/AdapterView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public a(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;II)",
            "Lio/reactivex/Single<",
            "Lo/ActivityChooserView$Application;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lo/AdapterView;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lo/AbsSpinner;->e(Lo/Serializable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 30
    new-instance v8, Lo/AdapterView$Activity;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lo/AdapterView$Activity;-><init>(Lo/AdapterView;Lo/Serializable;IILcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;)V

    check-cast v8, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v8}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 71
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "shareInfo.flatMap { shar\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic c(Lo/Serializable;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    invoke-virtual {p0, p1, p2}, Lo/AdapterView;->d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V

    return-void
.end method

.method public d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;->a:Lcom/netflix/mediaclient/android/sharing/impl/targets/InstagramVideoDetails$prefetchResourcesForShareable$onError$1;

    check-cast v0, Lo/alA;

    .line 86
    invoke-virtual {p0}, Lo/AdapterView;->d()Lo/AbsSpinner;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Lo/AbsSpinner;->e(Lo/Serializable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 87
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 89
    new-instance p2, Lo/AdapterView$Application;

    invoke-direct {p2, v0}, Lo/AdapterView$Application;-><init>(Lo/alA;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lo/AlphabetIndexer;

    invoke-direct {v1, v0}, Lo/AlphabetIndexer;-><init>(Lo/alA;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 89
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
