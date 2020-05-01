.class public Lo/vW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/vX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/vW$StateListAnimator;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/Executor;

.field private final d:Lorg/chromium/net/ExperimentalCronetEngine;

.field private final e:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ExperimentalCronetEngine;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/vW;->d:Lorg/chromium/net/ExperimentalCronetEngine;

    .line 31
    iput-object p2, p0, Lo/vW;->b:Ljava/util/concurrent/Executor;

    .line 32
    iput-object p3, p0, Lo/vW;->e:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lo/vX$TaskDescription;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lo/vW;->d:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lo/vW$StateListAnimator;

    invoke-direct {v1, p3}, Lo/vW$StateListAnimator;-><init>(Lo/vX$TaskDescription;)V

    iget-object p3, p0, Lo/vW;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1, p3}, Lorg/chromium/net/ExperimentalCronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    const-string p3, "HEAD"

    .line 38
    invoke-virtual {p1, p3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 40
    invoke-virtual {p1, p3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setPriority(I)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->disableCache()Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p0, Lo/vW;->e:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->build()Lorg/chromium/net/ExperimentalUrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/ExperimentalUrlRequest;->start()V

    return-void
.end method
