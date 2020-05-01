.class public final Lcom/uber/rxdogtag/DogTagSubscriber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/observers/LambdaConsumerIntrospection;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;

.field private final c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

.field private final e:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uber/rxdogtag/RxDogTag$Configuration;",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->a:Ljava/lang/Throwable;

    .line 50
    iput-object p1, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    .line 51
    iput-object p2, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->e:Lorg/reactivestreams/Subscriber;

    return-void
.end method

.method public static synthetic a(Lcom/uber/rxdogtag/DogTagSubscriber;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSubscriber;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->e:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->a:Ljava/lang/Throwable;

    const-string v2, "onComplete"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/uber/rxdogtag/DogTagSubscriber;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSubscriber;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->a:Ljava/lang/Throwable;

    const-string v2, "onSubscribe"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Lorg/reactivestreams/Subscription;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->e:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public static synthetic c(Lcom/uber/rxdogtag/DogTagSubscriber;Lorg/reactivestreams/Subscription;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSubscriber;->b(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->a:Ljava/lang/Throwable;

    const-string v2, "onNext"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/DogTagSubscriber;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSubscriber;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lcom/uber/rxdogtag/DogTagSubscriber;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uber/rxdogtag/DogTagSubscriber;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public hasCustomOnError()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->e:Lorg/reactivestreams/Subscriber;

    instance-of v1, v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    .line 78
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

    .line 72
    new-instance v0, Lo/ajK;

    invoke-direct {v0, p0}, Lo/ajK;-><init>(Lcom/uber/rxdogtag/DogTagSubscriber;)V

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->e:Lorg/reactivestreams/Subscriber;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lo/ajJ;

    invoke-direct {v2, v1}, Lo/ajJ;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-static {v0, v2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->c:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagSubscriber;->a:Ljava/lang/Throwable;

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

    .line 62
    new-instance v0, Lo/ajI;

    invoke-direct {v0, p0}, Lo/ajI;-><init>(Lcom/uber/rxdogtag/DogTagSubscriber;)V

    new-instance v1, Lo/ajM;

    invoke-direct {v1, p0, p1}, Lo/ajM;-><init>(Lcom/uber/rxdogtag/DogTagSubscriber;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 56
    new-instance v0, Lo/ajH;

    invoke-direct {v0, p0}, Lo/ajH;-><init>(Lcom/uber/rxdogtag/DogTagSubscriber;)V

    new-instance v1, Lo/ajG;

    invoke-direct {v1, p0, p1}, Lo/ajG;-><init>(Lcom/uber/rxdogtag/DogTagSubscriber;Lorg/reactivestreams/Subscription;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    return-void
.end method
