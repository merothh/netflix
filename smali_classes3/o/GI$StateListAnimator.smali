.class public final Lo/GI$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GI;->c(IILjava/lang/String;ZZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Z

.field final synthetic d:Lo/GI;

.field public final synthetic e:I

.field public final synthetic h:Z


# direct methods
.method constructor <init>(Lo/GI;IILjava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lo/GI$StateListAnimator;->d:Lo/GI;

    iput p2, p0, Lo/GI$StateListAnimator;->e:I

    iput p3, p0, Lo/GI$StateListAnimator;->b:I

    iput-object p4, p0, Lo/GI$StateListAnimator;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lo/GI$StateListAnimator;->c:Z

    iput-boolean p6, p0, Lo/GI$StateListAnimator;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/GY$Application;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lo/GI$StateListAnimator;->d:Lo/GI;

    invoke-static {v0}, Lo/GI;->a(Lo/GI;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lo/GI$StateListAnimator;->d:Lo/GI;

    invoke-static {v1}, Lo/GI;->e(Lo/GI;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v1

    .line 55
    new-instance v2, Lo/GI$StateListAnimator$3;

    invoke-direct {v2, p1}, Lo/GI$StateListAnimator$3;-><init>(Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/ReplaySubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "browseManagerObservable\n\u2026 !subscriber.isDisposed }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;-><init>(Lo/GI$StateListAnimator;Lio/reactivex/ObservableEmitter;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 131
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$3;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$3;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 56
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
