.class public final Lo/Wn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Wn$ActionBar;,
        Lo/Wn$Activity;,
        Lo/Wn$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserManager<",
        "Lo/Wn$Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/Wn$StateListAnimator;


# instance fields
.field private final a:Lo/Wl;

.field private final b:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Wn$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Wn$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Wn$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Wn;->d:Lo/Wn$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/Wl;

    invoke-direct {v0}, Lo/Wl;-><init>()V

    iput-object v0, p0, Lo/Wn;->a:Lo/Wl;

    .line 29
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<PrePlayData>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Wn;->b:Lio/reactivex/subjects/PublishSubject;

    .line 32
    iget-object v0, p0, Lo/Wn;->a:Lo/Wl;

    invoke-virtual {v0}, Lo/Wl;->d()Lio/reactivex/Observable;

    move-result-object v0

    check-cast p1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "interactiveMomentsPrePla\u2026eUntil(destroyObservable)"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$1;-><init>(Lo/Wn;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 37
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$2;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/Wn;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Wn;->b:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic d(Lo/Wn;)Lo/Wl;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Wn;->a:Lo/Wl;

    return-object p0
.end method


# virtual methods
.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Wn$Activity;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/Wn;->b:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final e(Lo/hW;Lo/UK$TaskDescription;)V
    .locals 3

    const-string v0, "browse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p2}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object p2

    invoke-interface {p2}, Lo/Bc;->bb()Lo/AK;

    move-result-object p2

    const-string v0, "playerData.videoDetails.playable"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    .line 51
    new-instance v0, Lo/Wn$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/Wn$ActionBar;-><init>(Lo/Wn;Lo/hW;)V

    check-cast v0, Lo/ci;

    .line 49
    invoke-interface {p1, p2, v0}, Lo/hW;->d(Ljava/lang/String;Lo/ci;)V

    goto :goto_1

    .line 54
    :cond_1
    iget-object p1, p0, Lo/Wn;->b:Lio/reactivex/subjects/PublishSubject;

    new-instance p2, Lo/Wn$Activity;

    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2, v1}, Lo/Wn$Activity;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;ILo/amc;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
