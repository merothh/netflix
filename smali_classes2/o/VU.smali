.class public Lo/VU;
.super Lo/VW;
.source ""

# interfaces
.implements Lo/Wg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VU$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/VU$Activity;

# The value of this static final field might be set in the static constructor
.field private static final j:Ljava/lang/String; = "PlayerSeekbarPresenter"


# instance fields
.field private a:I

.field private final b:Lo/aeA;

.field private d:Z

.field private e:I

.field private final f:Lo/WG;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VU$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VU$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/VU;->c:Lo/VU$Activity;

    const-string v0, "PlayerSeekbarPresenter"

    .line 29
    sput-object v0, Lo/VU;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/WG;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WG;",
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

    .line 16
    move-object v0, p1

    check-cast v0, Lo/WI;

    invoke-direct {p0, v0, p2}, Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/VU;->f:Lo/WG;

    .line 20
    new-instance p1, Lo/aeA;

    invoke-direct {p1}, Lo/aeA;-><init>()V

    iput-object p1, p0, Lo/VU;->b:Lo/aeA;

    .line 35
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$1;-><init>(Lo/VU;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 34
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 76
    iget-object p1, p0, Lo/VU;->f:Lo/WG;

    invoke-interface {p1}, Lo/WG;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiView.uiEventsThatNeeds\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerSeekbarPresenter$2;-><init>(Lo/VU;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 78
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic e(Lo/VU;)Lo/WG;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/VU;->f:Lo/WG;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lo/VU;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/VU;->d:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/VU;->g:Z

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 22
    iput p1, p0, Lo/VU;->a:I

    return-void
.end method

.method public final d(II)V
    .locals 2

    .line 111
    iget-object v0, p0, Lo/VU;->f:Lo/WG;

    invoke-interface {v0, p1}, Lo/WG;->d(I)V

    .line 112
    iget-object v0, p0, Lo/VU;->f:Lo/WG;

    iget-object v1, p0, Lo/VU;->b:Lo/aeA;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lo/aeA;->e(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeLineFormatterHelper.\u2026orMs(duration - progress)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lo/WG;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(IIZ)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2}, Lo/VU;->d(II)V

    if-eqz p3, :cond_0

    .line 106
    iget-object p1, p0, Lo/VU;->f:Lo/WG;

    invoke-interface {p1}, Lo/WG;->e()V

    :cond_0
    return-void
.end method

.method public d(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 24
    iput p1, p0, Lo/VU;->e:I

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/VU;->g:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .line 24
    iget v0, p0, Lo/VU;->e:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 22
    iget v0, p0, Lo/VU;->a:I

    return v0
.end method
