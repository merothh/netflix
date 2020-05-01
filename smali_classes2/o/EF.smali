.class public Lo/EF;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/DC;",
        "Lo/DG;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lo/Fx;


# direct methods
.method public constructor <init>(Lo/Fx;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Fx;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 15
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/EF;->d:Lo/Fx;

    .line 19
    new-instance p1, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDescriptionUIPresenter$1;-><init>(Lo/EF;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 18
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/EF;Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lo/EF;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic d(Lo/EF;)Lo/Fx;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/EF;->d:Lo/Fx;

    return-object p0
.end method

.method private final e(Ljava/lang/String;I)V
    .locals 1

    .line 65
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lo/EF;->d:Lo/Fx;

    invoke-interface {p1}, Lo/Fx;->j()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lo/EF;->d:Lo/Fx;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Lo/Fx;->d(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p1, p0, Lo/EF;->d:Lo/Fx;

    invoke-interface {p1}, Lo/Fx;->h()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lo/EF;->d:Lo/Fx;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Lo/Fx;->d(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lo/EF;->d:Lo/Fx;

    invoke-interface {p1}, Lo/Fx;->f()V

    :goto_0
    return-void
.end method
