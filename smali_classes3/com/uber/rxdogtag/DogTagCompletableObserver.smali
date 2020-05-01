.class public final Lcom/uber/rxdogtag/DogTagCompletableObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# instance fields
.field private final a:Ljava/lang/Throwable;

.field private final c:Lio/reactivex/CompletableObserver;

.field private final e:Lcom/uber/rxdogtag/RxDogTag$Configuration;


# direct methods
.method constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/CompletableObserver;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->a:Ljava/lang/Throwable;

    .line 42
    iput-object p1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->e:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    .line 43
    iput-object p2, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c:Lio/reactivex/CompletableObserver;

    return-void
.end method

.method public static synthetic b(Lcom/uber/rxdogtag/DogTagCompletableObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->e:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->a:Ljava/lang/Throwable;

    const-string v2, "onSubscribe"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/uber/rxdogtag/DogTagCompletableObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic c(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->e:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->a:Ljava/lang/Throwable;

    const-string v2, "onComplete"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagCompletableObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public hasCustomOnError()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c:Lio/reactivex/CompletableObserver;

    instance-of v1, v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    .line 65
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

    .line 59
    new-instance v0, Lo/ajp;

    invoke-direct {v0, p0}, Lo/ajp;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;)V

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c:Lio/reactivex/CompletableObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lo/ajr;

    invoke-direct {v2, v1}, Lo/ajr;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-static {v0, v2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->e:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->a:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 48
    new-instance v0, Lo/ajk;

    invoke-direct {v0, p0}, Lo/ajk;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;)V

    new-instance v1, Lo/ajl;

    invoke-direct {v1, p0, p1}, Lo/ajl;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;Lio/reactivex/disposables/Disposable;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method
