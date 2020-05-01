.class public Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;
.super Ljava/lang/Object;
.source "PerformanceProfiler.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "PerformanceProfiler"

.field public static final FAILURE:Ljava/lang/String; = "failed"

.field private static final GRAPH_COLOR_FAILED:Ljava/lang/String; = "red"

.field private static final GRAPH_COLOR_SUCCESS:Ljava/lang/String; = "green"

.field private static final GRAPH_DISCRETE_EVENT_WIDTH:I = 0x1e

.field private static final GRAPH_PARAM_COLOR:Ljava/lang/String; = "color"

.field private static final GRAPH_PARAM_DURATION:Ljava/lang/String; = "duration"

.field private static final GRAPH_PARAM_EPOCH:Ljava/lang/String; = "epoch"

.field private static final OUTPUT_FILENAME:Ljava/lang/String; = "perf_dump.txt"

.field private static final TAG:Ljava/lang/String; = "PerformanceProfiler"

.field private static instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;


# instance fields
.field events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;",
            ">;"
        }
    .end annotation
.end field

.field sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/perf/PerfSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private addTimes(Lorg/json/JSONObject;JJZLjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 342
    const-string/jumbo v0, "epoch"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getEpoch()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 343
    const-string/jumbo v0, "duration"

    sub-long v2, p4, p2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 344
    const-string/jumbo v1, "color"

    if-eqz p6, :cond_0

    const-string/jumbo v0, "red"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    const-string/jumbo v0, ","

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    return-void

    .line 344
    :cond_0
    const-string/jumbo v0, "green"

    goto :goto_0
.end method

.method public static createEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Events;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;-><init>(Ljava/util/Map;)V

    .line 373
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/Events;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->setName(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v1, "PerformanceProfiler"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->setCategory(Ljava/lang/String;)V

    .line 375
    return-object v0
.end method

.method public static createFailedMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "failed"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    .line 59
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    return-object v0
.end method

.method private hasFailed(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 355
    const-string/jumbo v0, "custom"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    const-string/jumbo v1, "failed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 324
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    add-long/2addr v4, v6

    .line 325
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->hasFailed(Lorg/json/JSONObject;)Z

    move-result v6

    move-object v0, p0

    move-object v7, p2

    .line 324
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->addTimes(Lorg/json/JSONObject;JJZLjava/lang/StringBuilder;)V

    .line 326
    return-void
.end method

.method private prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 331
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getTime()J

    move-result-wide v4

    .line 334
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->hasFailed(Lorg/json/JSONObject;)Z

    move-result v6

    move-object v0, p0

    move-object v7, p2

    .line 333
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->addTimes(Lorg/json/JSONObject;JJZLjava/lang/StringBuilder;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string/jumbo v0, "PerformanceProfiler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session not closed, so we can\'t graph it..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOfOpenSessions()V
    .locals 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 259
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string/jumbo v2, "PerformanceProfiler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Session not closed!! :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    return-void
.end method

.method public dumpToDisk(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 271
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->warnOfOpenSessions()V

    .line 273
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v6

    const/16 v1, 0xe8

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 312
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    .line 284
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string/jumbo v3, "PerformanceProfiler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DiscreteEvent prep failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 292
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 293
    :catch_1
    move-exception v0

    .line 294
    const-string/jumbo v3, "PerformanceProfiler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session prep failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 299
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v0, "PerformanceProfiler"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "perf_dump.txt"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    const-string/jumbo v0, "File dumped! Please run perfScripts/perf.sh"

    .line 303
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 304
    const-string/jumbo v1, "PerformanceProfiler"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    goto/16 :goto_0

    .line 306
    :cond_3
    const-string/jumbo v0, "File dump failed!"

    .line 307
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 308
    const-string/jumbo v1, "PerformanceProfiler"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 225
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    return-void
.end method

.method public endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 207
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 183
    if-eqz v0, :cond_1

    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string/jumbo v1, "PerformanceProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->closeSession(Ljava/util/Map;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    const-string/jumbo v0, "PerformanceProfiler"

    const-string/jumbo v1, "Couldn\'t find the SessionStartedEvent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V
    .locals 4

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->warnOfOpenSessions()V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    .line 241
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportPerformanceEvent(Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 245
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->startPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 251
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->endPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    .line 255
    return-void
.end method

.method public getEpoch()J
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Events;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "PerformanceProfiler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Events;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method public startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string/jumbo v1, "PerformanceProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string/jumbo v1, "PerformanceProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string/jumbo v1, "PerformanceProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method
