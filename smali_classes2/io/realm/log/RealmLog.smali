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

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->NO_LOGGERS:[Lio/realm/log/Logger;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    .line 36
    sget-object v0, Lio/realm/log/RealmLog;->NO_LOGGERS:[Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 37
    const v0, 0x7fffffff

    sput v0, Lio/realm/log/RealmLog;->minimumNativeLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lio/realm/log/Logger;)V
    .locals 3

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null logger has to be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    sget-object v1, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {p0}, Lio/realm/log/Logger;->getMinimumNativeDebugLevel()I

    move-result v0

    .line 51
    sget v2, Lio/realm/log/RealmLog;->minimumNativeLogLevel:I

    if-ge v0, v2, :cond_1

    .line 52
    invoke-static {v0}, Lio/realm/log/RealmLog;->setMinimumNativeDebugLevel(I)V

    .line 54
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

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    const v0, 0x7fffffff

    invoke-static {v0}, Lio/realm/log/RealmLog;->setMinimumNativeDebugLevel(I)V

    .line 94
    sget-object v0, Lio/realm/log/RealmLog;->NO_LOGGERS:[Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public static varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 159
    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 161
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 162
    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public static varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 261
    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 263
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 264
    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public static fatal(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public static varargs fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 295
    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 297
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 298
    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public static info(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public static varargs info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 193
    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 195
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 196
    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public static remove(Lio/realm/log/Logger;)Z
    .locals 4

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null logger has to be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    sget-object v3, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    monitor-enter v3

    .line 73
    :try_start_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    const v1, 0x7fffffff

    .line 75
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 76
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/log/Logger;

    invoke-interface {v0}, Lio/realm/log/Logger;->getMinimumNativeDebugLevel()I

    move-result v0

    .line 77
    if-ge v0, v1, :cond_2

    .line 75
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v1}, Lio/realm/log/RealmLog;->setMinimumNativeDebugLevel(I)V

    .line 82
    sget-object v0, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    sget-object v1, Lio/realm/log/RealmLog;->LOGGERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/realm/log/Logger;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/log/Logger;

    sput-object v0, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 83
    monitor-exit v3

    .line 84
    const/4 v0, 0x1

    return v0

    .line 83
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

    .prologue
    .line 59
    sput p0, Lio/realm/log/RealmLog;->minimumNativeLogLevel:I

    .line 60
    invoke-static {p0}, Lio/realm/internal/Util;->setDebugLevel(I)V

    .line 61
    return-void
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static trace(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public static varargs trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 125
    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 127
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 128
    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public static varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 227
    sget-object v1, Lio/realm/log/RealmLog;->loggersAsArray:[Lio/realm/log/Logger;

    .line 229
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 230
    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1, p2}, Lio/realm/log/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method
