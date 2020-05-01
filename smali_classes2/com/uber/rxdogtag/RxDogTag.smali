.class public final Lcom/uber/rxdogtag/RxDogTag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;,
        Lcom/uber/rxdogtag/RxDogTag$Configuration;,
        Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;,
        Lcom/uber/rxdogtag/RxDogTag$Configurer;,
        Lcom/uber/rxdogtag/RxDogTag$Builder;
    }
.end annotation


# direct methods
.method public static a()Lcom/uber/rxdogtag/RxDogTag$Builder;
    .locals 1

    .line 84
    new-instance v0, Lcom/uber/rxdogtag/RxDogTag$Builder;

    invoke-direct {v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic a(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V
    .locals 2

    const-class v0, Lcom/uber/rxdogtag/RxDogTag;

    monitor-enter v0

    .line 107
    :try_start_0
    new-instance v1, Lo/ajL;

    invoke-direct {v1, p0}, Lo/ajL;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 120
    new-instance v1, Lo/ajR;

    invoke-direct {v1, p0}, Lo/ajR;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 133
    new-instance v1, Lo/ajP;

    invoke-direct {v1, p0}, Lo/ajP;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 146
    new-instance v1, Lo/ajN;

    invoke-direct {v1, p0}, Lo/ajN;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 159
    new-instance v1, Lo/ajO;

    invoke-direct {v1, p0}, Lo/ajO;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b([Ljava/lang/Object;Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 326
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 327
    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic b(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/uber/rxdogtag/RxDogTag;->e(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 313
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/uber/rxdogtag/RxDogTag;->a(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    return-void
.end method

.method static c(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 10

    .line 250
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->d:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/uber/rxdogtag/RxDogTag;->e(Ljava/lang/Throwable;Ljava/util/Set;)Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 253
    instance-of v0, p2, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 254
    check-cast p2, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    .line 255
    invoke-virtual {p2}, Lio/reactivex/exceptions/OnErrorNotImplementedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v3, p2

    move-object p2, v0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 261
    :cond_1
    new-instance v3, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    invoke-direct {v3, v0, p2}, Lio/reactivex/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v2, [Ljava/lang/StackTraceElement;

    .line 262
    invoke-virtual {v3, v0}, Lio/reactivex/exceptions/OnErrorNotImplementedException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 265
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v4, 0x3

    if-eqz p3, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    .line 271
    :goto_1
    iget-boolean p0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->e:Z

    const/4 v6, 0x1

    if-eqz p0, :cond_3

    .line 272
    array-length p0, v0

    add-int/2addr p0, v6

    new-array p0, p0, [Ljava/lang/StackTraceElement;

    .line 273
    aput-object p1, p0, v2

    .line 274
    array-length p1, v0

    if-eqz p1, :cond_7

    .line 275
    array-length p1, v0

    invoke-static {v0, v2, p0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 284
    :cond_3
    sget-object p0, Lo/ajT;->d:Lo/ajT;

    .line 285
    invoke-static {v0, p0}, Lcom/uber/rxdogtag/RxDogTag;->b([Ljava/lang/Object;Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;)I

    move-result p0

    const/4 v7, -0x1

    if-eq p0, v7, :cond_4

    add-int/2addr p0, v6

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 293
    :goto_2
    array-length v7, v0

    add-int/2addr v7, v5

    sub-int/2addr v7, p0

    new-array v7, v7, [Ljava/lang/StackTraceElement;

    .line 295
    aput-object p1, v7, v2

    const/4 p1, 0x2

    .line 296
    new-instance v8, Ljava/lang/StackTraceElement;

    const-string v9, "[[ \u2191\u2191 Inferred subscribe point \u2191\u2191 ]]"

    invoke-direct {v8, v9, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v8, v7, v6

    if-eqz p3, :cond_5

    .line 298
    new-instance v8, Ljava/lang/StackTraceElement;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v2

    const-string p3, "[[ Originating callback: %s ]]"

    .line 300
    invoke-static {v9, p3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v8, p3, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v8, v7, p1

    const/4 p1, 0x3

    .line 302
    :cond_5
    new-instance p3, Ljava/lang/StackTraceElement;

    const-string v4, "[[ \u2193\u2193 Original trace \u2193\u2193 ]]"

    invoke-direct {p3, v4, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object p3, v7, p1

    .line 303
    array-length p1, v0

    if-eqz p1, :cond_6

    .line 304
    array-length p1, v0

    sub-int/2addr p1, p0

    invoke-static {v0, p0, v7, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    move-object p0, v7

    .line 308
    :cond_7
    :goto_3
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 309
    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/StackTraceElement;)Z
    .locals 1

    .line 287
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[[ \u2193\u2193 Original trace \u2193\u2193 ]]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->e(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 149
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->c(Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object v1

    .line 150
    instance-of v2, v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v2, :cond_0

    .line 151
    check-cast v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    invoke-interface {v1}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance p1, Lcom/uber/rxdogtag/DogTagMaybeObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagMaybeObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/MaybeObserver;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->e(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 136
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->e(Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v1

    .line 137
    instance-of v2, v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v2, :cond_0

    .line 138
    check-cast v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    invoke-interface {v1}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance p1, Lcom/uber/rxdogtag/DogTagSingleObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagSingleObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/SingleObserver;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method private static synthetic d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 123
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->a(Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object v1

    .line 124
    instance-of v2, v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v2, :cond_0

    .line 125
    check-cast v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    invoke-interface {v1}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    new-instance p1, Lcom/uber/rxdogtag/DogTagSubscriber;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagSubscriber;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lorg/reactivestreams/Subscriber;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method static d(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 208
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Lo/ajQ;

    invoke-direct {v2, v0, p0}, Lo/ajQ;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;)V

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 221
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lio/reactivex/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 223
    :try_start_1
    invoke-virtual {p1}, Lio/reactivex/exceptions/OnErrorNotImplementedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 224
    invoke-interface {p0, p1}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    throw p0
.end method

.method private static synthetic e(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 162
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->e(Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object v1

    .line 163
    instance-of v2, v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v2, :cond_0

    .line 164
    check-cast v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    invoke-interface {v1}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    new-instance p1, Lcom/uber/rxdogtag/DogTagCompletableObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagCompletableObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/CompletableObserver;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic e(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 110
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->a(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    .line 111
    instance-of v2, v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Lio/reactivex/observers/LambdaConsumerIntrospection;

    invoke-interface {v1}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance p1, Lcom/uber/rxdogtag/DogTagObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observer;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic e(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->d(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/Throwable;Ljava/util/Set;)Ljava/lang/StackTraceElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 184
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 185
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/uber/rxdogtag/RxDogTag;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/StackTraceElement;

    const-string p1, "unknown"

    const-string v0, "Unknown"

    invoke-direct {p0, v0, p1, p1, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private static synthetic e(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 212
    instance-of v0, p3, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {p1, p3}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_0
    instance-of v0, p3, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subscribeActual failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Ljava/lang/StackTraceElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/uber/rxdogtag/RxDogTag;->c(Ljava/lang/StackTraceElement;)Z

    move-result p0

    return p0
.end method
