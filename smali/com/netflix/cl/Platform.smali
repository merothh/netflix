.class public Lcom/netflix/cl/Platform;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/cl/Platform$LocalLogger;,
        Lcom/netflix/cl/Platform$ErrorReporter;,
        Lcom/netflix/cl/Platform$PlatformImpl;
    }
.end annotation


# static fields
.field private static sEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/netflix/cl/Platform;->sEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static getCurrentTimeInMs()J
    .locals 2

    .line 226
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/netflix/cl/Platform$PlatformImpl;->getCurrentTimeInMs()J

    move-result-wide v0

    return-wide v0

    .line 229
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getErrorReporter()Lcom/netflix/cl/Platform$ErrorReporter;
    .locals 1

    .line 266
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    invoke-interface {v0}, Lcom/netflix/cl/Platform$PlatformImpl;->getErrorReporter()Lcom/netflix/cl/Platform$ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;
    .locals 1

    .line 246
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    invoke-interface {v0}, Lcom/netflix/cl/Platform$PlatformImpl;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggingSchema()Lcom/netflix/cl/model/LoggingSchema;
    .locals 1

    .line 259
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    invoke-interface {v0}, Lcom/netflix/cl/Platform$PlatformImpl;->getLoggingSchema()Lcom/netflix/cl/model/LoggingSchema;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggingSource()Lcom/netflix/cl/model/LoggingSource;
    .locals 1

    .line 255
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    invoke-interface {v0}, Lcom/netflix/cl/Platform$PlatformImpl;->getLoggingSource()Lcom/netflix/cl/model/LoggingSource;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform()Lcom/netflix/cl/Platform$PlatformImpl;
    .locals 1

    .line 217
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    return-object v0
.end method

.method public static getSequence()J
    .locals 2

    .line 239
    sget-object v0, Lcom/netflix/cl/Platform;->sEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public static reInit()V
    .locals 1

    .line 273
    sget-object v0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    invoke-interface {v0}, Lcom/netflix/cl/Platform$PlatformImpl;->reInit()V

    return-void
.end method

.method public static resetSequence()V
    .locals 3

    .line 280
    sget-object v0, Lcom/netflix/cl/Platform;->sEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method static setImp(Lcom/netflix/cl/Platform$PlatformImpl;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/netflix/cl/Platform;->sPlatform:Lcom/netflix/cl/Platform$PlatformImpl;

    return-void
.end method
