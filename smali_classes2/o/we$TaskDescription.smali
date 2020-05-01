.class public final Lo/we$TaskDescription;
.super Lorg/chromium/net/RequestFinishedInfo$Listener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/we;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/we$TaskDescription;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 173
    sget-object v0, Lo/we$TaskDescription;->d:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lorg/chromium/net/RequestFinishedInfo$Listener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 180
    instance-of v2, v1, Lo/wU;

    if-eqz v2, :cond_1

    .line 181
    move-object v2, v1

    check-cast v2, Lo/wU;

    invoke-interface {v2, p1}, Lo/wU;->a(Lorg/chromium/net/RequestFinishedInfo;)V

    .line 183
    :cond_1
    instance-of v2, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v2, :cond_0

    .line 184
    check-cast v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 185
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v3, 0x40000

    .line 187
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v3

    .line 189
    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v1}, Lo/ud;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    if-eqz v3, :cond_2

    .line 197
    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->A:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->C:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_1

    .line 194
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->E:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 191
    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->D:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->B:Lcom/netflix/mediaclient/net/NetworkRequestType;

    .line 200
    :goto_1
    const-class v3, Lo/E;

    invoke-static {v3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/E;

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSentByteCount()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v1, v4, v5, v2}, Lo/E;->a(Lcom/netflix/mediaclient/net/NetworkRequestType;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    :cond_6
    return-void
.end method
