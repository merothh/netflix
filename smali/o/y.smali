.class Lo/y;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private c:Lo/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lo/y;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Lcom/netflix/mediaclient/net/NetworkRequestType;Lorg/chromium/net/RequestFinishedInfo;)Z
    .locals 4

    .line 138
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-static {v0}, Lo/G;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "nf_cr_stats"

    const-string v3, "onCronetRequestFinished %s"

    .line 147
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return p0
.end method


# virtual methods
.method public b(Lo/E;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lo/y;->c:Lo/E;

    return-void
.end method

.method c(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 7

    .line 84
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 85
    instance-of v6, v5, Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-eqz v6, :cond_1

    .line 86
    check-cast v5, Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-object v2, v5

    goto :goto_0

    .line 87
    :cond_1
    instance-of v6, v5, Lo/P;

    if-eqz v6, :cond_3

    if-nez v3, :cond_2

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_2
    check-cast v5, Lo/P;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_3
    instance-of v6, v5, Lcom/netflix/mediaclient/net/RequestMetricsMarker;

    if-eqz v6, :cond_0

    if-nez v4, :cond_4

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_4
    check-cast v5, Lcom/netflix/mediaclient/net/RequestMetricsMarker;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-nez v2, :cond_7

    .line 101
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/G;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->I:Lcom/netflix/mediaclient/net/NetworkRequestType;

    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v2, v1

    .line 106
    :cond_7
    :goto_1
    iget-object v0, p0, Lo/y;->c:Lo/E;

    if-eqz v0, :cond_9

    .line 107
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 110
    invoke-virtual {v0}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSentByteCount()Ljava/lang/Long;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 114
    :goto_2
    iget-object v5, p0, Lo/y;->c:Lo/E;

    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6, v1, v0}, Lo/E;->a(Lcom/netflix/mediaclient/net/NetworkRequestType;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 117
    :cond_9
    invoke-static {v2, p1}, Lo/y;->a(Lcom/netflix/mediaclient/net/NetworkRequestType;Lorg/chromium/net/RequestFinishedInfo;)Z

    move-result v0

    if-eqz v3, :cond_a

    .line 118
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    return-void

    .line 125
    :cond_b
    new-instance v2, Lo/N;

    iget-object v5, p0, Lo/y;->a:Landroid/content/Context;

    invoke-direct {v2, v5, p1, v4}, Lo/N;-><init>(Landroid/content/Context;Lorg/chromium/net/RequestFinishedInfo;Ljava/util/List;)V

    if-eqz v1, :cond_c

    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/P;

    .line 128
    invoke-interface {v1, v2}, Lo/P;->c(Lo/D;)V

    goto :goto_4

    .line 132
    :cond_c
    iget-object p1, p0, Lo/y;->c:Lo/E;

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    .line 133
    invoke-interface {p1, v2}, Lo/E;->a(Lo/D;)V

    :cond_d
    return-void
.end method
