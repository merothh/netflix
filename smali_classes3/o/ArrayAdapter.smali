.class public final Lo/ArrayAdapter;
.super Lo/AdapterViewFlipper;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AdapterViewFlipper<",
        "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lo/ArrayAdapter;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
    .locals 1

    const-string v0, "shareUtils"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUtils"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lo/AdapterViewFlipper;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 12
    new-instance p1, Lo/AbsSpinner;

    invoke-direct {p1}, Lo/AbsSpinner;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 13
    new-instance p2, Lo/WebViewUpdateService;

    invoke-direct {p2, p1}, Lo/WebViewUpdateService;-><init>(Lo/AbsSpinner;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lo/ArrayAdapter;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public a(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "shareable"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Lo/Serializable;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    invoke-virtual {p0, p1, p2}, Lo/ArrayAdapter;->a(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;)V

    return-void
.end method

.method public d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
            ">;",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
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

    .line 23
    invoke-virtual {p0}, Lo/ArrayAdapter;->d()Lo/AbsSpinner;

    move-result-object v0

    .line 25
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;->e()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 26
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;->c()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, p1, v1, v2}, Lo/AbsSpinner;->e(Lo/Serializable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 27
    new-instance v8, Lo/ArrayAdapter$TaskDescription;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    move v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lo/ArrayAdapter$TaskDescription;-><init>(Lo/ArrayAdapter;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/Serializable;IILo/AnalogClock;)V

    check-cast v8, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v8}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 70
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "shareUtils.getShareInfo(\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
