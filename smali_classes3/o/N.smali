.class public Lo/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/D;


# instance fields
.field private final a:Z

.field private b:J

.field private c:J

.field private d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/net/RequestMetricsMarker;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private final p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/Date;

.field private v:Ljava/util/Date;

.field private y:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/net/RequestFinishedInfo;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/net/RequestFinishedInfo;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/net/RequestMetricsMarker;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lo/N;->b:J

    .line 49
    iput-wide v0, p0, Lo/N;->c:J

    .line 50
    iput-wide v0, p0, Lo/N;->d:J

    .line 51
    iput-wide v0, p0, Lo/N;->f:J

    .line 52
    iput-wide v0, p0, Lo/N;->j:J

    .line 53
    iput-wide v0, p0, Lo/N;->h:J

    .line 54
    iput-wide v0, p0, Lo/N;->g:J

    .line 55
    iput-wide v0, p0, Lo/N;->i:J

    const/4 v2, -0x1

    .line 57
    iput v2, p0, Lo/N;->k:I

    .line 58
    iput v2, p0, Lo/N;->m:I

    const/4 v3, 0x0

    .line 59
    iput-object v3, p0, Lo/N;->n:Ljava/lang/String;

    .line 60
    iput v2, p0, Lo/N;->o:I

    .line 71
    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 72
    :goto_0
    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lo/N;->a:Z

    .line 73
    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/N;->p:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lo/N;->e:Ljava/util/List;

    .line 76
    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object p3

    if-nez p3, :cond_3

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "missing metrics for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nf_cr_stats"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_3
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getDnsStart()Ljava/util/Date;

    move-result-object v3

    .line 84
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getDnsEnd()Ljava/util/Date;

    move-result-object v5

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 86
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lo/N;->b:J

    .line 90
    :cond_4
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSslStart()Ljava/util/Date;

    move-result-object v3

    .line 91
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSslEnd()Ljava/util/Date;

    move-result-object v5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 93
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lo/N;->f:J

    .line 97
    :cond_5
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getConnectStart()Ljava/util/Date;

    move-result-object v3

    .line 98
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getConnectEnd()Ljava/util/Date;

    move-result-object v5

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    .line 100
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lo/N;->c:J

    .line 107
    iget-wide v5, p0, Lo/N;->f:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_6

    iget-wide v7, p0, Lo/N;->c:J

    cmp-long v3, v7, v5

    if-lez v3, :cond_6

    sub-long/2addr v7, v5

    .line 108
    iput-wide v7, p0, Lo/N;->d:J

    goto :goto_2

    .line 110
    :cond_6
    iget-wide v5, p0, Lo/N;->c:J

    iput-wide v5, p0, Lo/N;->d:J

    .line 115
    :cond_7
    :goto_2
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTtfbMs()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 116
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_8
    iput-wide v0, p0, Lo/N;->j:J

    .line 119
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getRequestStart()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo/N;->u:Ljava/util/Date;

    .line 120
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getRequestEnd()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo/N;->v:Ljava/util/Date;

    .line 121
    iget-object v0, p0, Lo/N;->u:Ljava/util/Date;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/N;->v:Ljava/util/Date;

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v3, p0, Lo/N;->u:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lo/N;->h:J

    .line 126
    :cond_9
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/N;->g:J

    .line 132
    :cond_a
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSentByteCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 134
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lo/N;->i:J

    .line 137
    :cond_b
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSocketReused()Z

    move-result v0

    iput-boolean v0, p0, Lo/N;->l:Z

    .line 140
    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 142
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    iput v1, p0, Lo/N;->k:I

    .line 143
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/N;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/N;->r:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v3, "Via"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_c

    .line 145
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 146
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/N;->q:Ljava/lang/String;

    .line 148
    :cond_c
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-Ftl-Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 150
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/N;->s:Ljava/lang/String;

    .line 154
    :cond_d
    iget-boolean v0, p0, Lo/N;->a:Z

    if-nez v0, :cond_e

    if-nez v2, :cond_e

    .line 156
    invoke-virtual {p2}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 157
    instance-of v0, p2, Lorg/chromium/net/NetworkException;

    if-eqz v0, :cond_e

    .line 158
    check-cast p2, Lorg/chromium/net/NetworkException;

    .line 159
    invoke-virtual {p2}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result v0

    iput v0, p0, Lo/N;->m:I

    .line 160
    invoke-virtual {p2}, Lorg/chromium/net/NetworkException;->getCronetInternalErrorCode()I

    move-result v0

    iput v0, p0, Lo/N;->o:I

    .line 161
    invoke-virtual {p2}, Lorg/chromium/net/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/N;->n:Ljava/lang/String;

    .line 165
    :cond_e
    invoke-virtual {p3}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getResponseStart()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lo/N;->y:Ljava/util/Date;

    .line 167
    invoke-static {p1}, Lo/G;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/N;->t:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "h2"

    .line 306
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "2"

    return-object p0

    :cond_0
    const-string p0, "1.x"

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lo/N;->d:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lo/N;->p:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 5

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "networkStats"

    .line 174
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    iget-object v1, p0, Lo/N;->p:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-wide v1, p0, Lo/N;->b:J

    const-string v3, "dnsTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    iget-wide v1, p0, Lo/N;->c:J

    const-string v3, "connectionTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 178
    iget-wide v1, p0, Lo/N;->f:J

    const-string v3, "sslTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 179
    iget-wide v1, p0, Lo/N;->j:J

    const-string v3, "ttfb"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    iget-wide v1, p0, Lo/N;->h:J

    iget-wide v3, p0, Lo/N;->j:J

    sub-long/2addr v1, v3

    const-string v3, "remainingDownloadTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    iget-wide v1, p0, Lo/N;->g:J

    const-string v3, "receivedBytesCount"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    iget-boolean v1, p0, Lo/N;->l:Z

    const-string v2, "socketReused"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 183
    iget v1, p0, Lo/N;->k:I

    if-ltz v1, :cond_0

    const-string v2, "httpStatusCode"

    .line 184
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    :cond_0
    iget v1, p0, Lo/N;->m:I

    if-ltz v1, :cond_1

    const-string v2, "cronetErrorCode"

    .line 187
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    iget v1, p0, Lo/N;->o:I

    const-string v2, "cronetInternalErrorCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    :cond_1
    iget-object v1, p0, Lo/N;->r:Ljava/lang/String;

    const-string v2, "httpVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    iget-object v1, p0, Lo/N;->t:Ljava/lang/String;

    const-string v2, "networkType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lo/N;->a:Z

    return v0
.end method

.method public e()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lo/N;->b:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lo/N;->h:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lo/N;->f:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 252
    iget v0, p0, Lo/N;->m:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 247
    iget v0, p0, Lo/N;->k:I

    return v0
.end method

.method public j()J
    .locals 2

    .line 236
    iget-wide v0, p0, Lo/N;->j:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lo/N;->s:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lo/N;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lo/N;->q:Ljava/lang/String;

    return-object v0
.end method
