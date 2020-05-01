.class public Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "FetchVideosHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final end:I

.field private final requestId:J

.field private final start:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback",
            "<TT;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    .line 39
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->getRequestId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->requestId:J

    .line 41
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->title:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->start:I

    .line 43
    iput p5, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->end:I

    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetched videos starts, title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method private handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->getRequestId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Ignoring stale onVideosFetched callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->onErrorResponse()V

    goto :goto_0

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "No videos in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->onNoVideosInResponse()V

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetched videos, title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 95
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->callback:Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->title:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->start:I

    iget v3, p0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->end:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;->updateDataSet(Ljava/util/List;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 66
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 60
    return-void
.end method

.method public onDiscoveryVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Discovery;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onDiscoveryVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 72
    return-void
.end method

.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 54
    return-void
.end method
