.class public final Lcom/uber/rxdogtag/DogTagMaybeObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/observers/LambdaConsumerIntrospection;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Throwable;

.field private final c:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/uber/rxdogtag/RxDogTag$Configuration;


# direct methods
.method constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uber/rxdogtag/RxDogTag$Configuration;",
            "Lio/reactivex/MaybeObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b:Ljava/lang/Throwable;

    .line 45
    iput-object p1, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->d:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    .line 46
    iput-object p2, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c:Lio/reactivex/MaybeObserver;

    return-void
.end method

.method public static synthetic b(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->d:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b:Ljava/lang/Throwable;

    const-string v2, "onSuccess"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/uber/rxdogtag/DogTagMaybeObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->e(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic c(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->d:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b:Ljava/lang/Throwable;

    const-string v2, "onComplete"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic e(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Throwable;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->d:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b:Ljava/lang/Throwable;

    const-string v2, "onSubscribe"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasCustomOnError()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c:Lio/reactivex/MaybeObserver;

    instance-of v1, v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    .line 74
    invoke-interface {v0}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 68
    new-instance v0, Lo/aju;

    invoke-direct {v0, p0}, Lo/aju;-><init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;)V

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c:Lio/reactivex/MaybeObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lo/ajx;

    invoke-direct {v2, v1}, Lo/ajx;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-static {v0, v2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->d:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 51
    new-instance v0, Lo/ajs;

    invoke-direct {v0, p0}, Lo/ajs;-><init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;)V

    new-instance v1, Lo/ajo;

    invoke-direct {v1, p0, p1}, Lo/ajo;-><init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;Lio/reactivex/disposables/Disposable;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Lo/ajq;

    invoke-direct {v0, p0}, Lo/ajq;-><init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;)V

    new-instance v1, Lo/ajv;

    invoke-direct {v1, p0, p1}, Lo/ajv;-><init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method
