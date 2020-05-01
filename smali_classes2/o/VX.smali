.class public final Lo/VX;
.super Lo/VZ;
.source ""


# instance fields
.field private final a:Lo/WK;

.field private b:Z

.field private c:[I

.field private d:[I

.field private e:[I


# direct methods
.method public constructor <init>(Lo/WK;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WK;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lo/VZ;-><init>(Lo/WK;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VX;->a:Lo/WK;

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 18
    fill-array-data v0, :array_0

    iput-object v0, p0, Lo/VX;->e:[I

    new-array v0, p1, [I

    .line 19
    fill-array-data v0, :array_1

    iput-object v0, p0, Lo/VX;->d:[I

    new-array p1, p1, [I

    .line 20
    fill-array-data p1, :array_2

    iput-object p1, p0, Lo/VX;->c:[I

    .line 25
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;-><init>(Lo/VX;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 24
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 45
    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    sget-object p2, Lo/VX$5;->d:Lo/VX$5;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 47
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v2

    const-string p1, "safeManagedStateObservab\u2026ed }\n            .skip(1)"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$3;-><init>(Lo/VX;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    .line 57
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$4;->a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$4;

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 48
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object p1, p0, Lo/VX;->a:Lo/WK;

    invoke-interface {p1}, Lo/WK;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiView.uiEventsThatNeeds\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$5;-><init>(Lo/VX;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 84
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$6;->a:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$6;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final a([I)Z
    .locals 5

    .line 109
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget v4, p1, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method public static final synthetic a(Lo/VX;)[I
    .locals 0

    .line 11
    iget-object p0, p0, Lo/VX;->c:[I

    return-object p0
.end method

.method private final b()V
    .locals 5

    .line 92
    iget-object v0, p0, Lo/VX;->e:[I

    invoke-direct {p0, v0}, Lo/VX;->a([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lo/VX;->d:[I

    invoke-direct {p0, v0}, Lo/VX;->a([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lo/VX;->c:[I

    invoke-direct {p0, v0}, Lo/VX;->a([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lo/VX;->e:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lo/VX;->d:[I

    aget v4, v3, v1

    if-le v2, v4, :cond_0

    .line 96
    aget v0, v0, v1

    int-to-float v0, v0

    aget v2, v3, v1

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0

    .line 98
    :cond_0
    aget v2, v3, v1

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 100
    :goto_0
    iget-object v2, p0, Lo/VX;->d:[I

    aget v2, v2, v1

    iget-object v3, p0, Lo/VX;->c:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 101
    iget-object v1, p0, Lo/VX;->a:Lo/WK;

    invoke-interface {v1, v0}, Lo/WK;->c(I)V

    .line 102
    iget-object v1, p0, Lo/VX;->a:Lo/WK;

    invoke-interface {v1, v0}, Lo/WK;->b(I)V

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lo/VX;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lo/VX;->b:Z

    return p0
.end method

.method public static final synthetic c(Lo/VX;)[I
    .locals 0

    .line 11
    iget-object p0, p0, Lo/VX;->e:[I

    return-object p0
.end method

.method public static final synthetic d(Lo/VX;)Lo/WK;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/VX;->a:Lo/WK;

    return-object p0
.end method

.method public static final synthetic e(Lo/VX;Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lo/VX;->b:Z

    return-void
.end method

.method public static final synthetic e(Lo/VX;)[I
    .locals 0

    .line 11
    iget-object p0, p0, Lo/VX;->d:[I

    return-object p0
.end method

.method public static final synthetic f(Lo/VX;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/VX;->b()V

    return-void
.end method
