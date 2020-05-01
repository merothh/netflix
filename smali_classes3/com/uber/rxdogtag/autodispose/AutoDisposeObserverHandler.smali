.class final Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/uber/rxdogtag/ObserverHandler;


# static fields
.field static final e:Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;

    invoke-direct {v0}, Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;-><init>()V

    sput-object v0, Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;->e:Lcom/uber/rxdogtag/autodispose/AutoDisposeObserverHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 0

    .line 51
    instance-of p1, p2, Lcom/uber/autodispose/observers/AutoDisposingObserver;

    if-eqz p1, :cond_0

    .line 52
    check-cast p2, Lcom/uber/autodispose/observers/AutoDisposingObserver;

    invoke-interface {p2}, Lcom/uber/autodispose/observers/AutoDisposingObserver;->b()Lio/reactivex/Observer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public a(Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 0

    .line 43
    instance-of p1, p2, Lcom/uber/autodispose/observers/AutoDisposingSubscriber;

    if-eqz p1, :cond_0

    .line 44
    check-cast p2, Lcom/uber/autodispose/observers/AutoDisposingSubscriber;

    invoke-interface {p2}, Lcom/uber/autodispose/observers/AutoDisposingSubscriber;->b()Lorg/reactivestreams/Subscriber;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public c(Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 0

    .line 59
    instance-of p1, p2, Lcom/uber/autodispose/observers/AutoDisposingMaybeObserver;

    if-eqz p1, :cond_0

    .line 60
    check-cast p2, Lcom/uber/autodispose/observers/AutoDisposingMaybeObserver;

    invoke-interface {p2}, Lcom/uber/autodispose/observers/AutoDisposingMaybeObserver;->c()Lio/reactivex/MaybeObserver;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public e(Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 0

    .line 75
    instance-of p1, p2, Lcom/uber/autodispose/observers/AutoDisposingCompletableObserver;

    if-eqz p1, :cond_0

    .line 76
    check-cast p2, Lcom/uber/autodispose/observers/AutoDisposingCompletableObserver;

    invoke-interface {p2}, Lcom/uber/autodispose/observers/AutoDisposingCompletableObserver;->d()Lio/reactivex/CompletableObserver;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public e(Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 0

    .line 67
    instance-of p1, p2, Lcom/uber/autodispose/observers/AutoDisposingSingleObserver;

    if-eqz p1, :cond_0

    .line 68
    check-cast p2, Lcom/uber/autodispose/observers/AutoDisposingSingleObserver;

    invoke-interface {p2}, Lcom/uber/autodispose/observers/AutoDisposingSingleObserver;->a()Lio/reactivex/SingleObserver;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AutoDisposeObserverHandler"

    return-object v0
.end method
