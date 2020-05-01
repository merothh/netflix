.class public final Lo/GI$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GI;->a(Ljava/lang/String;)Lio/reactivex/Observable;
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
.field final synthetic a:Lo/GI;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/GI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/GI$Activity;->a:Lo/GI;

    iput-object p2, p0, Lo/GI$Activity;->b:Ljava/lang/String;

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
            "Lo/GY$StateListAnimator;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lo/GI$Activity;->a:Lo/GI;

    invoke-static {v0}, Lo/GI;->a(Lo/GI;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lo/GI$Activity;->a:Lo/GI;

    invoke-static {v1}, Lo/GI;->e(Lo/GI;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v1

    .line 142
    new-instance v2, Lo/GI$Activity$5;

    invoke-direct {v2, p1}, Lo/GI$Activity$5;-><init>(Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/ReplaySubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "browseManagerObservable\n\u2026 !subscriber.isDisposed }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;-><init>(Lo/GI$Activity;Lio/reactivex/ObservableEmitter;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 190
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$3;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$3;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 143
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 141
    invoke-static {v0, p1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
