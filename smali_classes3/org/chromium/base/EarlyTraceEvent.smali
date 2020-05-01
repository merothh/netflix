.class public Lorg/chromium/base/EarlyTraceEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;,
        Lorg/chromium/base/EarlyTraceEvent$Event;
    }
.end annotation


# static fields
.field static sAsyncEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedBackgroundStartupTracingFlag:Z

.field static sCompletedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field static sPendingAsyncEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPendingEventByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 111
    sput v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 4

    .line 229
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    invoke-direct {v0, p0}, Lorg/chromium/base/EarlyTraceEvent$Event;-><init>(Ljava/lang/String;)V

    .line 232
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    .line 234
    :cond_1
    sget-object v2, Lorg/chromium/base/EarlyTraceEvent;->sPendingEventByKey:Ljava/util/Map;

    invoke-static {p0}, Lorg/chromium/base/EarlyTraceEvent;->makeEventKeyForCurrentThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/EarlyTraceEvent$Event;

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    return-void

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple pending trace events can\'t have the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    .line 235
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static disable()V
    .locals 2

    .line 182
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 184
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    .line 185
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->maybeFinishLocked()V

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpAsyncEvents(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->getOffsetNanos()J

    move-result-wide v0

    .line 327
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;

    .line 328
    iget-boolean v3, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mIsStart:Z

    if-eqz v3, :cond_0

    .line 329
    iget-object v3, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mName:Ljava/lang/String;

    iget-wide v4, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iget-wide v6, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimestampNanos:J

    add-long/2addr v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lorg/chromium/base/EarlyTraceEvent;->nativeRecordEarlyStartAsyncEvent(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v3, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mName:Ljava/lang/String;

    iget-wide v4, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iget-wide v6, v2, Lorg/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimestampNanos:J

    add-long/2addr v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lorg/chromium/base/EarlyTraceEvent;->nativeRecordEarlyFinishAsyncEvent(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static dumpEvents(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$Event;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->getOffsetNanos()J

    move-result-wide v0

    .line 319
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/EarlyTraceEvent$Event;

    .line 320
    iget-object v3, v2, Lorg/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v4, v2, Lorg/chromium/base/EarlyTraceEvent$Event;->mBeginTimeNanos:J

    add-long/2addr v4, v0

    iget-wide v6, v2, Lorg/chromium/base/EarlyTraceEvent$Event;->mEndTimeNanos:J

    add-long/2addr v6, v0

    iget v8, v2, Lorg/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v9, v2, Lorg/chromium/base/EarlyTraceEvent$Event;->mEndThreadTimeMillis:J

    iget-wide v11, v2, Lorg/chromium/base/EarlyTraceEvent$Event;->mBeginThreadTimeMillis:J

    sub-long/2addr v9, v11

    invoke-static/range {v3 .. v10}, Lorg/chromium/base/EarlyTraceEvent;->nativeRecordEarlyEvent(Ljava/lang/String;JJIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static enabled()Z
    .locals 2

    .line 200
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static end(Ljava/lang/String;)V
    .locals 2

    .line 244
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 247
    :cond_1
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sPendingEventByKey:Ljava/util/Map;

    invoke-static {p0}, Lorg/chromium/base/EarlyTraceEvent;->makeEventKeyForCurrentThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/EarlyTraceEvent$Event;

    if-nez p0, :cond_2

    .line 248
    monitor-exit v0

    return-void

    .line 249
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/base/EarlyTraceEvent$Event;->end()V

    .line 250
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget p0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->maybeFinishLocked()V

    .line 252
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getBackgroundStartupTracingFlag()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 222
    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z

    return v0
.end method

.method private static getOffsetNanos()J
    .locals 4

    .line 337
    invoke-static {}, Lorg/chromium/base/TimeUtils;->nativeGetTimeTicksNowUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 338
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent$Event;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static isActive()Z
    .locals 3

    .line 195
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static makeEventKeyForCurrentThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static maybeFinishLocked()V
    .locals 1

    .line 300
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/base/EarlyTraceEvent;->dumpEvents(Ljava/util/List;)V

    .line 302
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    :cond_0
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/base/EarlyTraceEvent;->dumpAsyncEvents(Ljava/util/List;)V

    .line 306
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    :cond_1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingEventByKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingAsyncEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 309
    sput v0, Lorg/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v0, 0x0

    .line 310
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingEventByKey:Ljava/util/Map;

    .line 311
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sCompletedEvents:Ljava/util/List;

    .line 312
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sPendingAsyncEvents:Ljava/util/List;

    .line 313
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    :cond_2
    return-void
.end method

.method private static native nativeRecordEarlyEvent(Ljava/lang/String;JJIJ)V
.end method

.method private static native nativeRecordEarlyFinishAsyncEvent(Ljava/lang/String;JJ)V
.end method

.method private static native nativeRecordEarlyStartAsyncEvent(Ljava/lang/String;JJ)V
.end method

.method static setBackgroundStartupTracingFlag(Z)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 208
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bg_startup_tracing"

    .line 210
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 211
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
