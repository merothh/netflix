.class public final Lcom/uber/rxdogtag/DogTagObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/observers/LambdaConsumerIntrospection;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uber/rxdogtag/RxDogTag$Configuration;

.field private final c:Ljava/lang/Throwable;

.field private final e:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uber/rxdogtag/RxDogTag$Configuration;",
            "Lio/reactivex/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->c:Ljava/lang/Throwable;

    .line 44
    iput-object p1, p0, Lcom/uber/rxdogtag/DogTagObserver;->a:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    .line 45
    iput-object p2, p0, Lcom/uber/rxdogtag/DogTagObserver;->e:Lio/reactivex/Observer;

    return-void
.end method

.method public static synthetic a(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagObserver;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagObserver;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic c(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->e:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Object;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->e:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->a:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagObserver;->c:Ljava/lang/Throwable;

    const-string v2, "onNext"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagObserver;->c(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagObserver;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagObserver;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Throwable;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->a:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagObserver;->c:Ljava/lang/Throwable;

    const-string v2, "onSubscribe"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Throwable;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->a:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagObserver;->c:Ljava/lang/Throwable;

    const-string v2, "onComplete"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hasCustomOnError()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->e:Lio/reactivex/Observer;

    instance-of v1, v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    .line 72
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

    .line 66
    new-instance v0, Lo/ajB;

    invoke-direct {v0, p0}, Lo/ajB;-><init>(Lcom/uber/rxdogtag/DogTagObserver;)V

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagObserver;->e:Lio/reactivex/Observer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lo/ajA;

    invoke-direct {v2, v1}, Lo/ajA;-><init>(Lio/reactivex/Observer;)V

    invoke-static {v0, v2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagObserver;->a:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagObserver;->c:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lo/ajC;

    invoke-direct {v0, p0}, Lo/ajC;-><init>(Lcom/uber/rxdogtag/DogTagObserver;)V

    new-instance v1, Lo/ajz;

    invoke-direct {v1, p0, p1}, Lo/ajz;-><init>(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 50
    new-instance v0, Lo/ajt;

    invoke-direct {v0, p0}, Lo/ajt;-><init>(Lcom/uber/rxdogtag/DogTagObserver;)V

    new-instance v1, Lo/ajw;

    invoke-direct {v1, p0, p1}, Lo/ajw;-><init>(Lcom/uber/rxdogtag/DogTagObserver;Lio/reactivex/disposables/Disposable;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method
