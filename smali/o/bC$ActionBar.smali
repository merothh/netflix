.class public final Lo/bC$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bC;->b(Lo/DateTransformation;)Lio/reactivex/Observable;
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
.field final synthetic a:Lo/bC;

.field final synthetic d:Lo/DateTransformation;


# direct methods
.method constructor <init>(Lo/bC;Lo/DateTransformation;)V
    .locals 0

    iput-object p1, p0, Lo/bC$ActionBar;->a:Lo/bC;

    iput-object p2, p0, Lo/bC$ActionBar;->d:Lo/DateTransformation;

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
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lo/bC$ActionBar;->a:Lo/bC;

    invoke-virtual {v0}, Lo/bC;->b()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lo/bC$ActionBar;->a:Lo/bC;

    invoke-static {v1}, Lo/bC;->c(Lo/bC;)Lo/Zx;

    move-result-object v1

    iget-object v2, p0, Lo/bC$ActionBar;->d:Lo/DateTransformation;

    invoke-virtual {v1, v2}, Lo/Zx;->e(Lo/DateTransformation;)Lio/reactivex/Observable;

    move-result-object v3

    .line 55
    new-instance v1, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$1$1;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$1$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 59
    new-instance v1, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$1$2;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$1$2;-><init>(Lio/reactivex/ObservableEmitter;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 54
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
