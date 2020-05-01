.class public final Lo/oK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/oK$TaskDescription;
    }
.end annotation


# static fields
.field public static final e:Lo/oK$TaskDescription;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/oK$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/oK$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/oK;->e:Lo/oK$TaskDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "oxId"

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sourceRequestType"

    invoke-static {p3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/oK;->m:Ljava/lang/String;

    iput-object p2, p0, Lo/oK;->n:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 53
    iput-wide p1, p0, Lo/oK;->h:J

    .line 55
    iput-wide p1, p0, Lo/oK;->g:J

    .line 57
    iput-wide p1, p0, Lo/oK;->f:J

    .line 59
    iput-wide p1, p0, Lo/oK;->j:J

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/oK;->i:Ljava/util/HashMap;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/oK;->o:Ljava/util/List;

    .line 65
    new-instance p1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v2, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    iput-object p1, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 68
    iget-object p1, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz p1, :cond_0

    .line 70
    iget-object p2, p0, Lo/oK;->n:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lo/oK;->e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 71
    iget-object v1, p0, Lo/oK;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 72
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    const-string v1, "isLite"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    .line 73
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/aek;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-string v2, "deviceMemory"

    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p2

    .line 74
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "requestType"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "offlineRequestLatency"

    .line 68
    invoke-virtual {p1, p3, p2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_0
    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/oK;->f:J

    return-void
.end method

.method public final b()V
    .locals 2

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/oK;->h:J

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 10

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lo/oK;->b:Z

    .line 91
    iget-object v2, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v2, :cond_0

    .line 94
    iget-wide v5, p0, Lo/oK;->h:J

    .line 95
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v7, p0, Lo/oK;->h:J

    sub-long v7, v3, v7

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oK;->e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v3, "browseData"

    const-string v4, "offlineRequestLatency"

    .line 91
    invoke-virtual/range {v2 .. v9}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_0
    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 10

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lo/oK;->d:Z

    .line 106
    iget-object v2, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v2, :cond_0

    .line 109
    iget-wide v5, p0, Lo/oK;->g:J

    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v7, p0, Lo/oK;->g:J

    sub-long v7, v3, v7

    .line 111
    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oK;->e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v3, "manifest"

    const-string v4, "offlineRequestLatency"

    .line 106
    invoke-virtual/range {v2 .. v9}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 8

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lo/oK;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lo/oK;->o:Ljava/util/List;

    new-instance v2, Lkotlin/Pair;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-string v6, "it"

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    iget-object p2, p0, Lo/oK;->i:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_1
    iget-object p1, p0, Lo/oK;->i:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    iget-object v1, p0, Lo/oK;->o:Ljava/util/List;

    .line 148
    new-instance v2, Lkotlin/Pair;

    .line 149
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 150
    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_2
    iget-object p1, p0, Lo/oK;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 156
    :goto_1
    iget-object p1, p0, Lo/oK;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lo/oK;->c:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lo/oK;->c:Z

    .line 158
    iget-object v0, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v0, :cond_3

    .line 161
    iget-wide v3, p0, Lo/oK;->j:J

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iget-wide v1, p0, Lo/oK;->j:J

    sub-long v5, p1, v1

    .line 163
    iget-object p1, p0, Lo/oK;->o:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetFetchLatencies"

    invoke-direct {p0, p2, p1}, Lo/oK;->e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v1, "images"

    const-string v2, "offlineRequestLatency"

    .line 158
    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/oK;->c:Z

    return v0
.end method

.method public final d()V
    .locals 2

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/oK;->g:J

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/StatusCode;Z)V
    .locals 10

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lo/oK;->a:Z

    .line 121
    iget-object v2, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v2, :cond_0

    .line 124
    iget-wide v5, p0, Lo/oK;->f:J

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v7, p0, Lo/oK;->f:J

    sub-long v7, v3, v7

    .line 126
    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oK;->e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "isLicensed"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v9

    const-string v3, "license"

    const-string v4, "offlineRequestLatency"

    .line 121
    invoke-virtual/range {v2 .. v9}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_0
    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 8

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 170
    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-eq p1, v3, :cond_3

    .line 172
    iget-wide v3, p0, Lo/oK;->h:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-boolean v3, p0, Lo/oK;->b:Z

    if-nez v3, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lo/oK;->b(Lcom/netflix/mediaclient/StatusCode;)V

    .line 176
    :cond_0
    iget-wide v3, p0, Lo/oK;->g:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-boolean v3, p0, Lo/oK;->d:Z

    if-nez v3, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Lo/oK;->c(Lcom/netflix/mediaclient/StatusCode;)V

    .line 180
    :cond_1
    iget-wide v3, p0, Lo/oK;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    iget-boolean v3, p0, Lo/oK;->a:Z

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0, p1, v3}, Lo/oK;->d(Lcom/netflix/mediaclient/StatusCode;Z)V

    .line 184
    :cond_2
    iget-wide v3, p0, Lo/oK;->j:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    iget-boolean v3, p0, Lo/oK;->c:Z

    if-nez v3, :cond_3

    .line 185
    invoke-virtual {p0, v2, p1}, Lo/oK;->c(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    .line 188
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/oK;->e(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "offlineRequestLatency"

    invoke-virtual {v1, v0, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 189
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object p1

    .line 190
    sget-object v0, Lo/oK;->e:Lo/oK$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 191
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 194
    :cond_4
    check-cast v2, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iput-object v2, p0, Lo/oK;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lo/oK;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iput-wide v0, p0, Lo/oK;->j:J

    .line 135
    :cond_0
    iget-object v2, p0, Lo/oK;->i:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lo/oK;->a:Z

    return v0
.end method
