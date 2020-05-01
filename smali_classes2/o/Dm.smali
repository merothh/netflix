.class public final Lo/Dm;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/Dr;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/Dq;

.field private c:Z


# direct methods
.method public constructor <init>(Lo/Dq;Lio/reactivex/Observable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Dq;",
            "Lio/reactivex/Observable<",
            "Lo/Dr;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/UpdateLock;

    .line 17
    move-object v2, p1

    check-cast v2, Lo/UpdateLock;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, p2, v1}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/Dm;->b:Lo/Dq;

    .line 19
    iput-boolean v0, p0, Lo/Dm;->c:Z

    .line 23
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/16 v1, 0x8ca

    invoke-virtual {p2, v1, v2, p1, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    const-string p1, "safeManagedStateObservab\u2026dSchedulers.mainThread())"

    invoke-static {v3, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;-><init>(Lo/Dm;)V

    move-object v6, p1

    check-cast v6, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 24
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/Dm;Landroid/view/Window;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lo/Dm;->b(Landroid/view/Window;Z)V

    return-void
.end method

.method private final b(Landroid/view/Window;Z)V
    .locals 0

    .line 48
    iput-boolean p2, p0, Lo/Dm;->c:Z

    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p0, Lo/Dm;->b:Lo/Dq;

    invoke-interface {p2, p1}, Lo/Dq;->a(Landroid/view/Window;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p2, p0, Lo/Dm;->b:Lo/Dq;

    invoke-interface {p2, p1}, Lo/Dq;->e(Landroid/view/Window;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lo/Dm;Landroid/view/Window;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 46
    iget-boolean p2, p0, Lo/Dm;->c:Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Dm;->b(Landroid/view/Window;Z)V

    return-void
.end method
