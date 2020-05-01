.class public final Lio/realm/log/RealmLog;
.super Ljava/lang/Object;
.source "RealmLog.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final LOGGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/log/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_LOGGERS:[Lio/realm/log/Logger;

.field private static volatile loggersAsArray:[Lio/realm/log/Logger;

.field private static minimumNativeLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->NO_LOGGERS:[Lio/realm/log/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    sget-object v0, Lio/realm/log/RealmLog;->NO_LOGGERS:[Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const v0, 0x7fffffff

    sput v0, Lio/realm/log/RealmLog;->minimumNativeLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lio/realm/log/Logger;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null logger has to be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lio/realm/log/Logger;->getMinimumNativeDebugLevel()I

    move-result v0

    sget v2, Lio/realm/log/RealmLog;->minimumNativeLogLevel:I

    if-ge v0, v2, :cond_1

    invoke-static {v0}, Lio/realm/log/RealmLog;->setMinimumNativeDebugLevel(I)V

    :cond_1
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    sget-object v2, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/realm/log/Logger;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clear()V
    .locals 2

    sget-object v1, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, 0x7fffffff

    invoke-static {v0}, Lio/realm/log/RealmLog;->setMinimumNativeDebugLevel(I)V

    sget-object v0, Lio/realm/log/RealmLog;->NO_LOGGERS:[Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static fatal(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static info(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static remove(Lio/realm/log/Logger;)Z
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null logger has to be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v3, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/log/Logger;

    invoke-interface {v0}, Lio/realm/log/Logger;->getMinimumNativeDebugLevel()I

    move-result v0

    if-ge v0, v1, :cond_2

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lio/realm/log/RealmLog;->setMinimumNativeDebugLevel(I)V

    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    sget-object v1, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/realm/log/Logger;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    monitor-exit v3

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static setMinimumNativeDebugLevel(I)V
    .locals 0

    sput p0, Lio/realm/log/RealmLog;->minimumNativeLogLevel:I

    invoke-static {p0}, Lio/realm/internal/Util;->setDebugLevel(I)V

    return-void
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static trace(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
