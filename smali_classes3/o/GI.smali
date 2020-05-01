.class public final Lo/GI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GI$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/GI$Application;


# instance fields
.field private final d:Lio/reactivex/disposables/CompositeDisposable;

.field private final e:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/hW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GI$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GI$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/GI;->c:Lo/GI$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "ReplaySubject.create()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GI;->e:Lio/reactivex/subjects/ReplaySubject;

    .line 39
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lo/GI;->d:Lio/reactivex/disposables/CompositeDisposable;

    .line 42
    iget-object v0, p0, Lo/GI;->d:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v1, Lo/Zx;

    invoke-direct {v1}, Lo/Zx;-><init>()V

    invoke-virtual {v1}, Lo/Zx;->i()Lio/reactivex/Observable;

    move-result-object v2

    .line 43
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$1;-><init>(Lo/GI;)V

    move-object v5, v1

    check-cast v5, Lo/alA;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static final synthetic a(Lo/GI;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/GI;->d:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic e(Lo/GI;)Lio/reactivex/subjects/ReplaySubject;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/GI;->e:Lio/reactivex/subjects/ReplaySubject;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/GY$StateListAnimator;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lo/GI$Activity;

    invoke-direct {v0, p0, p1}, Lo/GI$Activity;-><init>(Lo/GI;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026              )\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(IILjava/lang/String;ZZ)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "ZZ)",
            "Lio/reactivex/Observable<",
            "Lo/GY$Application;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v7, Lo/GI$StateListAnimator;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lo/GI$StateListAnimator;-><init>(Lo/GI;IILjava/lang/String;ZZ)V

    check-cast v7, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v7}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026              )\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()V
    .locals 1

    .line 199
    iget-object v0, p0, Lo/GI;->d:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method
