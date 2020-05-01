.class public final Lo/ZB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZB$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/ZB$Application;


# instance fields
.field private a:Z

.field private final b:[J

.field private c:J

.field private d:J

.field private g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZB$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZB$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZB;->e:Lo/ZB$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 48
    iput-object v0, p0, Lo/ZB;->b:[J

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lo/ZB;->i:Z

    return-void
.end method

.method private final a()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lo/ZB;->b:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final b()Lorg/json/JSONObject;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lo/ZB;->b:[J

    aget-wide v3, v0, v1

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lo/ZB;->c:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    iget-object v3, p0, Lo/ZB;->b:[J

    aget-wide v4, v3, v1

    iget-wide v6, p0, Lo/ZB;->c:J

    sub-long/2addr v4, v6

    .line 70
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 66
    :cond_0
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "assetLoadLatencies"

    .line 77
    invoke-direct {p0, v1, v0}, Lo/ZB;->c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final d()V
    .locals 4

    const-wide/16 v0, -0x1

    .line 81
    iput-wide v0, p0, Lo/ZB;->c:J

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 83
    iget-object v3, p0, Lo/ZB;->b:[J

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final e()Z
    .locals 1

    .line 97
    sget-object v0, Lo/hf;->a:Lo/hf$StateListAnimator;

    invoke-virtual {v0}, Lo/hf$StateListAnimator;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "query"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lo/ZB;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lo/ZB;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lo/ZB;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 107
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    .line 108
    invoke-direct {p0}, Lo/ZB;->d()V

    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lo/ZB;->d:J

    const-string v1, "searchQuery"

    .line 112
    invoke-direct {p0, v1, p1}, Lo/ZB;->c(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 113
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/aek;->a(Landroid/content/Context;)J

    move-result-wide v1

    const-string v3, "deviceMemory"

    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string p2, "searchResults"

    goto :goto_0

    :cond_2
    const-string p2, "queryCompletionResults"

    :goto_0
    const-string v1, "resultsType"

    .line 114
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "searchResponseLatency"

    .line 110
    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 p1, 0x0

    const-string v1, "dataResponse"

    .line 116
    invoke-virtual {v0, v1, p2, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 117
    iput-object v0, p0, Lo/ZB;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 3

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lo/ZB;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lo/ZB;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v1, :cond_1

    .line 140
    invoke-direct {p0}, Lo/ZB;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 142
    iget-boolean v0, p0, Lo/ZB;->a:Z

    const-string v2, "isCachedDataResponse"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 143
    iget-boolean v0, p0, Lo/ZB;->i:Z

    const-string v2, "isCachedImageLoad"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "searchResponseCompleted"

    .line 139
    invoke-virtual {v1, v0, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 145
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 146
    sget-object v0, Lo/ZB;->e:Lo/ZB$Application;

    check-cast v0, Lo/MessagePdu;

    .line 147
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 150
    :cond_1
    invoke-direct {p0}, Lo/ZB;->d()V

    const/4 p1, 0x0

    .line 151
    check-cast p1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iput-object p1, p0, Lo/ZB;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lo/ZB;->a:Z

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lo/ZB;->i:Z

    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 121
    invoke-direct {p0}, Lo/ZB;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lo/ZB;->a:Z

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ZB;->c:J

    const/4 p1, 0x0

    const/4 v0, 0x3

    :goto_0
    if-ge p1, v0, :cond_1

    .line 127
    iget-object v1, p0, Lo/ZB;->b:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lo/ZB;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "resultsLoaded"

    const-string v2, "searchResponseLatency"

    invoke-virtual {p1, v1, v2, v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_2
    return-void
.end method

.method public final e(ILcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 5

    .line 157
    invoke-direct {p0}, Lo/ZB;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lo/ZB;->b:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/ZB;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 165
    iget-wide v2, p0, Lo/ZB;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lo/ZB;->b:[J

    aput-wide v0, v2, p1

    .line 172
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lo/ZB;->i:Z

    .line 176
    :cond_2
    invoke-direct {p0}, Lo/ZB;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 177
    sget-object p1, Lo/ZB;->e:Lo/ZB$Application;

    check-cast p1, Lo/MessagePdu;

    .line 183
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, p1}, Lo/ZB;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_3
    :goto_0
    return-void
.end method
