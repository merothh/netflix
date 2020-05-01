.class Lcom/uber/autodispose/AutoDispose$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/uber/autodispose/CompletableSubscribeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/AutoDispose$1;->c(Lio/reactivex/Completable;)Lcom/uber/autodispose/CompletableSubscribeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/Completable;

.field final synthetic d:Lcom/uber/autodispose/AutoDispose$1;


# direct methods
.method constructor <init>(Lcom/uber/autodispose/AutoDispose$1;Lio/reactivex/Completable;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/uber/autodispose/AutoDispose$1$1;->d:Lcom/uber/autodispose/AutoDispose$1;

    iput-object p2, p0, Lcom/uber/autodispose/AutoDispose$1$1;->c:Lio/reactivex/Completable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 121
    new-instance v0, Lcom/uber/autodispose/AutoDisposeCompletable;

    iget-object v1, p0, Lcom/uber/autodispose/AutoDispose$1$1;->c:Lio/reactivex/Completable;

    iget-object v2, p0, Lcom/uber/autodispose/AutoDispose$1$1;->d:Lcom/uber/autodispose/AutoDispose$1;

    iget-object v2, v2, Lcom/uber/autodispose/AutoDispose$1;->b:Lio/reactivex/CompletableSource;

    invoke-direct {v0, v1, v2}, Lcom/uber/autodispose/AutoDisposeCompletable;-><init>(Lio/reactivex/Completable;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0}, Lcom/uber/autodispose/AutoDisposeCompletable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method
