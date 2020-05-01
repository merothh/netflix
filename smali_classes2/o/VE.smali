.class public Lo/VE;
.super Lo/Vs;
.source ""

# interfaces
.implements Lo/Wg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VE$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/VE$Application;


# instance fields
.field private a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/disposables/CompositeDisposable;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final g:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/Wu;

.field private final j:Lo/UserManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserManager<",
            "Ljava/util/LinkedHashMap<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VE$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VE$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/VE;->c:Lo/VE$Application;

    return-void
.end method

.method public constructor <init>(Lo/Wu;Lio/reactivex/Observable;Lo/UserManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Wu;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lo/UserManager<",
            "Ljava/util/LinkedHashMap<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisoryRepository"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/WI;

    .line 28
    move-object v1, p1

    check-cast v1, Lo/WI;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p2, v0}, Lo/Vs;-><init>(Lio/reactivex/Observable;[Lo/WI;)V

    iput-object p1, p0, Lo/VE;->i:Lo/Wu;

    iput-object p2, p0, Lo/VE;->g:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/VE;->j:Lo/UserManager;

    .line 35
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lo/VE;->a:Ljava/util/LinkedHashMap;

    .line 36
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/VE;->b:Lio/reactivex/disposables/CompositeDisposable;

    const-string p1, "INVALID_FROM_AdvisoryUIPresenter"

    .line 42
    iput-object p1, p0, Lo/VE;->d:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lo/VE;->g:Lio/reactivex/Observable;

    .line 47
    new-instance p2, Lo/VE$4;

    invoke-direct {p2, p0}, Lo/VE$4;-><init>(Lo/VE;)V

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026ed == false\n            }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;-><init>(Lo/VE;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 72
    iget-object p1, p0, Lo/VE;->g:Lio/reactivex/Observable;

    .line 73
    sget-object p2, Lo/VE$1;->b:Lo/VE$1;

    check-cast p2, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "safeManagedStateObservab\u2026ackgrounded\n            }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$4;-><init>(Lo/VE;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 79
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/VE;)Lo/Wu;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/VE;->i:Lo/Wu;

    return-object p0
.end method

.method public static final synthetic b(Lo/VE;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/VE;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lo/VE;)Lo/UserManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/VE;->j:Lo/UserManager;

    return-object p0
.end method

.method public static final synthetic d(Lo/VE;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/VE;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/VE;->a:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/VE;->e:Z

    return-void
.end method

.method public b()V
    .locals 9

    .line 149
    iget-object v0, p0, Lo/VE;->b:Lio/reactivex/disposables/CompositeDisposable;

    .line 151
    iget-object v1, p0, Lo/VE;->a:Ljava/util/LinkedHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v1

    .line 153
    sget-object v2, Lo/VE$TaskDescription;->c:Lo/VE$TaskDescription;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    .line 155
    new-instance v2, Lo/VE$Activity;

    invoke-direct {v2, p0}, Lo/VE$Activity;-><init>(Lo/VE;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "Observable\n             \u2026      )\n                }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$showAdvisories$3;->b:Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$showAdvisories$3;

    move-object v4, v1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 215
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public c()V
    .locals 9

    .line 93
    iget-object v0, p0, Lo/VE;->g:Lio/reactivex/Observable;

    .line 96
    new-instance v1, Lo/VE$StateListAnimator;

    invoke-direct {v1, p0}, Lo/VE$StateListAnimator;-><init>(Lo/VE;)V

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "safeManagedStateObservab\u2026ntrolEvent)\n            }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lo/VE;->j:Lo/UserManager;

    invoke-interface {v1}, Lo/UserManager;->d()Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "contentAdvisoryRepository.dataEvents"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/ObservablesKt;->zipWith(Lio/reactivex/Observable;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 106
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v3

    const-string v0, "safeManagedStateObservab\u2026o ID\n            .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$initialObservePlayerEventsToShowAdvisories$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$initialObservePlayerEventsToShowAdvisories$2;-><init>(Lo/VE;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 107
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

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

    .line 23
    invoke-static {p0, p1}, Lo/Wg$StateListAnimator;->b(Lo/Wg;Lio/reactivex/Observable;)V

    return-void
.end method

.method public final d(Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lo/VE;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/VE;->e:Z

    return v0
.end method

.method public e()V
    .locals 10

    .line 121
    iget-object v0, p0, Lo/VE;->b:Lio/reactivex/disposables/CompositeDisposable;

    .line 122
    iget-object v1, p0, Lo/VE;->g:Lio/reactivex/Observable;

    .line 125
    new-instance v2, Lo/VE$ActionBar;

    invoke-direct {v2, p0}, Lo/VE$ActionBar;-><init>(Lo/VE;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 134
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v4

    const-string v1, "safeManagedStateObservab\u2026\n                .take(1)"

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$observePlayerEventsToShowAdvisoriesWithData$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$observePlayerEventsToShowAdvisoriesWithData$2;-><init>(Lo/VE;)V

    move-object v7, v1

    check-cast v7, Lo/alA;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 135
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "AdvisoryUIPresenter"

    const-string v1, "Cancelling Advisories..."

    .line 228
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lo/VE;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 230
    iget-object v0, p0, Lo/VE;->i:Lo/Wu;

    invoke-interface {v0}, Lo/Wu;->j()V

    .line 231
    iget-object v0, p0, Lo/VE;->i:Lo/Wu;

    invoke-interface {v0}, Lo/Wu;->b()V

    .line 234
    invoke-virtual {p0}, Lo/VE;->e()V

    return-void
.end method
