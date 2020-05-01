.class public final Lcom/uber/rxdogtag/DogTagSingleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/observers/LambdaConsumerIntrospection;"
    }
.end annotation


# instance fields
.field private final c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

.field private final d:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uber/rxdogtag/RxDogTag$Configuration;",
            "Lio/reactivex/SingleObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->e:Ljava/lang/Throwable;

    .line 44
    iput-object p1, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    .line 45
    iput-object p2, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->d:Lio/reactivex/SingleObserver;

    return-void
.end method

.method public static synthetic a(Lcom/uber/rxdogtag/DogTagSingleObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->d:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->e:Ljava/lang/Throwable;

    const-string v2, "onSubscribe"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/uber/rxdogtag/DogTagSingleObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->e(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->e:Ljava/lang/Throwable;

    const-string v2, "onSuccess"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagSingleObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagSingleObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic e(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->d:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public hasCustomOnError()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->d:Lio/reactivex/SingleObserver;

    instance-of v1, v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    .line 68
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

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSingleObserver;->e:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 50
    new-instance v0, Lo/ajy;

    invoke-direct {v0, p0}, Lo/ajy;-><init>(Lcom/uber/rxdogtag/DogTagSingleObserver;)V

    new-instance v1, Lo/ajE;

    invoke-direct {v1, p0, p1}, Lo/ajE;-><init>(Lcom/uber/rxdogtag/DogTagSingleObserver;Lio/reactivex/disposables/Disposable;)V

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

    .line 56
    new-instance v0, Lo/ajD;

    invoke-direct {v0, p0}, Lo/ajD;-><init>(Lcom/uber/rxdogtag/DogTagSingleObserver;)V

    new-instance v1, Lo/ajF;

    invoke-direct {v1, p0, p1}, Lo/ajF;-><init>(Lcom/uber/rxdogtag/DogTagSingleObserver;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method
