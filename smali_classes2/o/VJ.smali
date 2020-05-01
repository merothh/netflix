.class public final Lo/VJ;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VJ$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/UP;",
        "Lo/UU;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/VJ$Application;

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "PlayerInterrupterUIPresenter"

.field private static f:J

.field private static j:J


# instance fields
.field private a:Z

.field private final d:Lo/Wx;

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VJ$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VJ$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/VJ;->b:Lo/VJ$Application;

    const-string v0, "PlayerInterrupterUIPresenter"

    .line 24
    sput-object v0, Lo/VJ;->c:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 32
    sput-wide v0, Lo/VJ;->f:J

    .line 39
    sput-wide v0, Lo/VJ;->j:J

    return-void
.end method

.method public constructor <init>(Lo/Wx;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wx;",
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

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 21
    move-object v1, p1

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/VJ;->d:Lo/Wx;

    iput-object p3, p0, Lo/VJ;->e:Lio/reactivex/Observable;

    .line 47
    sget-object p1, Lo/VJ$Activity;->d:Lo/VJ$Activity;

    check-cast p1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    sget-object p3, Lo/VJ$1;->c:Lo/VJ$1;

    check-cast p3, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p3

    const-wide/16 v0, 0x1

    .line 58
    invoke-virtual {p3, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p3

    .line 59
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {p3, v4, v5, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 60
    iget-object v2, p0, Lo/VJ;->e:Lio/reactivex/Observable;

    check-cast v2, Lio/reactivex/ObservableSource;

    move-object v3, p1

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-static {v2, v3}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {p3, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v3

    const-string p3, "safeManagedStateObservab\u2026e, userInteractionEvent))"

    invoke-static {v3, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance p3, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$2;-><init>(Lo/VJ;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    move-object v6, p3

    check-cast v6, Lo/alA;

    .line 88
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$3;->d:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$3;

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 61
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 101
    iget-object p1, p0, Lo/VJ;->e:Lio/reactivex/Observable;

    check-cast p1, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    sget-object p3, Lo/VJ$5;->e:Lo/VJ$5;

    check-cast p3, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    new-instance p3, Lo/VJ$3;

    invoke-direct {p3, p0}, Lo/VJ$3;-><init>(Lo/VJ;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v1, v2, p3, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 111
    iget-object p3, p0, Lo/VJ;->e:Lio/reactivex/Observable;

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 113
    iget-object p3, p0, Lo/VJ;->d:Lo/Wx;

    invoke-interface {p3}, Lo/Wx;->w()Lio/reactivex/Observable;

    move-result-object p3

    sget-object v0, Lo/VJ$2;->e:Lo/VJ$2;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026tTimeToShowInterrupter })"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$7;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$7;-><init>(Lo/VJ;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 114
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 123
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$8;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$8;-><init>(Lo/VJ;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    move-object v0, p2

    .line 122
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 136
    iget-object p1, p0, Lo/VJ;->d:Lo/Wx;

    invoke-interface {p1}, Lo/Wx;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lo/VJ;->e:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 138
    sget-object p2, Lo/VJ$4;->a:Lo/VJ$4;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiView.uiEventsThatNeeds\u2026topWatching\n            }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$10;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerInterrupterUIPresenter$10;-><init>(Lo/VJ;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 143
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lo/VJ;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c(Lo/VJ;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lo/VJ;->a:Z

    return p0
.end method

.method public static final synthetic d(Lo/VJ;)Lio/reactivex/Observable;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/VJ;->e:Lio/reactivex/Observable;

    return-object p0
.end method

.method public static final synthetic e(Lo/VJ;)Lo/Wx;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/VJ;->d:Lo/Wx;

    return-object p0
.end method

.method public static final synthetic e(Lo/VJ;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lo/VJ;->a:Z

    return-void
.end method
