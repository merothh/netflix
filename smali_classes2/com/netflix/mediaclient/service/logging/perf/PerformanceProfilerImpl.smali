.class public final enum Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/kg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;",
        ">;",
        "Lo/kg;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

.field private static final synthetic e:[Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lo/kf;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    .line 57
    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e:[Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static a(I)V
    .locals 2

    .line 471
    invoke-static {p0}, Lo/aed;->a(I)Ljava/util/Map;

    move-result-object p0

    .line 472
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->d:Lcom/netflix/mediaclient/service/logging/perf/Events;

    invoke-virtual {v0, v1, p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 473
    sget-object p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lo/kf;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$Activity;

    .line 124
    invoke-interface {v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$Activity;->c(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lo/kf;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/netflix/cl/model/event/Event;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Z
    .locals 1

    .line 224
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$2;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 232
    :pswitch_0
    sget-object p1, Lo/gL;->d:Lo/gL$TaskDescription;

    invoke-virtual {p1}, Lo/gL$TaskDescription;->c()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/Enum;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 481
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 482
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0

    .line 484
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, p1

    :goto_0
    const-string p1, "name"

    .line 486
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(I)V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lo/kf;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$Activity;

    .line 133
    invoke-interface {v1, p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl$Activity;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lo/kf;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 2

    .line 461
    invoke-static {}, Lo/aeB;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/ki;

    invoke-direct {v1, p0}, Lo/ki;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(I)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 0

    return-void
.end method

.method private static synthetic e(I)V
    .locals 0

    .line 463
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;
    .locals 1

    .line 57
    const-class v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;
    .locals 1

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e:[Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/kf;

    .line 144
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, v2, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-virtual {v2}, Lcom/netflix/cl/model/event/session/DebugSession;->getSessionId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 147
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "PerformanceProfilerImpl"

    const-string v1, "flush..."

    .line 342
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e()V

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 347
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/kf;

    .line 349
    invoke-virtual {v1}, Lo/kf;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Events;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    sget-object v0, Lo/gH;->a:Lo/gH$Activity;

    invoke-virtual {v0}, Lo/gH$Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Ljava/lang/Enum;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    .line 182
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    const-string p1, "discreteEvent CLV2: "

    .line 183
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(Ljava/lang/String;Lcom/netflix/cl/model/event/Event;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-static {p1, p2}, Lo/kf;->c(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lo/kf;

    move-result-object p2

    .line 208
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p2, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 209
    iget-object v0, p2, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    const-string v1, "startSession CLV2: "

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(Ljava/lang/String;Lcom/netflix/cl/model/event/Event;)V

    .line 211
    iget-object v0, p2, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/DebugSession;->getId()J

    move-result-wide v0

    .line 212
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lo/kf;)V

    return-void

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/kf;

    .line 309
    iget-object v3, v2, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    if-nez v3, :cond_0

    iget-object v3, v2, Lo/kf;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    iget-object v2, v2, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    invoke-virtual {v2}, Lcom/netflix/cl/model/event/session/DebugSession;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/Long;)V

    goto :goto_0

    .line 314
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "PerformanceProfilerImpl"

    if-eqz p3, :cond_2

    .line 259
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/kf;

    if-eqz p3, :cond_3

    .line 264
    iget-object v1, p3, Lo/kf;->c:Lcom/netflix/cl/model/event/session/DebugSession;

    if-eqz v1, :cond_0

    .line 267
    new-instance v2, Lcom/netflix/cl/model/event/session/DebugSessionEnded;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Ljava/lang/Enum;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Lcom/netflix/cl/model/event/session/DebugSessionEnded;-><init>(Lcom/netflix/cl/model/event/session/DebugSession;Lorg/json/JSONObject;)V

    .line 268
    iput-object v2, p3, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    .line 269
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    const-string p2, "endSession CLV2: "

    .line 270
    invoke-static {p2, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->a(Ljava/lang/String;Lcom/netflix/cl/model/event/Event;)V

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    iget-object v2, p3, Lo/kf;->e:Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v2}, Lcom/netflix/cl/model/event/session/SessionEnded;->getDurationInMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "%s = %s"

    invoke-static {v0, v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Lo/kf;)V

    goto :goto_0

    :cond_2
    const-string p1, "Couldn\'t find the SessionStartedEvent"

    .line 288
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
