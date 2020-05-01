.class public final Lo/AutoCompleteTextView;
.super Lo/AdapterViewFlipper;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AdapterViewFlipper<",
        "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lo/AutoCompleteTextView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
    .locals 1

    const-string v0, "shareUtils"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUtils"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/AdapterViewFlipper;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V

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
    invoke-direct {p0, p1, p2}, Lo/AutoCompleteTextView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lo/Serializable;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    invoke-virtual {p0, p1, p2}, Lo/AutoCompleteTextView;->c(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V

    return-void
.end method

.method public c(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V
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

    .line 172
    sget-object v0, Lcom/netflix/mediaclient/android/sharing/impl/targets/SnapchatVideoDetails$prefetchResourcesForShareable$onError$1;->e:Lcom/netflix/mediaclient/android/sharing/impl/targets/SnapchatVideoDetails$prefetchResourcesForShareable$onError$1;

    check-cast v0, Lo/alA;

    .line 179
    invoke-virtual {p0}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Lo/AbsSpinner;->e(Lo/Serializable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 180
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 181
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 182
    new-instance p2, Lo/AutoCompleteTextView$ActionBar;

    invoke-direct {p2, v0}, Lo/AutoCompleteTextView$ActionBar;-><init>(Lo/alA;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Lo/Button;

    invoke-direct {v1, v0}, Lo/Button;-><init>(Lo/alA;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 182
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
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
            "Lo/AdapterViewFlipper$StateListAnimator;",
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
    invoke-virtual {p0}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

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
    new-instance v8, Lo/AutoCompleteTextView$Activity;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lo/AutoCompleteTextView$Activity;-><init>(Lo/AutoCompleteTextView;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;Lo/Serializable;II)V

    check-cast v8, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v8}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "shareInfo.flatMap { shar\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(IIIIII)Lo/AdapterViewFlipper$Activity;
    .locals 5

    int-to-float v0, p2

    int-to-float v1, p1

    div-float v2, v0, v1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float v3, p4, p3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    mul-float v3, v3, v1

    float-to-int p3, v3

    goto :goto_0

    :cond_0
    div-float/2addr p3, p4

    mul-float p3, p3, v0

    float-to-int p1, p3

    move p3, p2

    :goto_0
    int-to-double v1, p3

    const-wide v3, 0x3fc3333333333333L    # 0.15

    mul-double v1, v1, v3

    double-to-int p4, v1

    int-to-double v1, p1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double v1, v1, v3

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float v1, p1

    int-to-float p5, p5

    div-float/2addr v1, p5

    int-to-float p5, p6

    mul-float p5, p5, v1

    float-to-int p5, p5

    const/high16 p6, 0x40000000    # 2.0f

    if-le p2, p3, :cond_1

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p6

    sub-float p2, v0, p2

    int-to-float p3, p4

    sub-float/2addr p2, p3

    goto :goto_1

    :cond_1
    int-to-float v1, p3

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p2, p6

    sub-float/2addr v1, p2

    int-to-float p2, p4

    sub-float p2, v1, p2

    :goto_1
    int-to-float p3, p5

    div-float/2addr p3, p6

    sub-float/2addr p2, p3

    div-float/2addr p2, v0

    .line 162
    new-instance p3, Lo/AdapterViewFlipper$Activity;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-direct {p3, p1, p5, p4, p2}, Lo/AdapterViewFlipper$Activity;-><init>(IIFF)V

    return-object p3
.end method
