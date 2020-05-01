.class Lcom/facebook/battery/metrics/cpu/Sysconf;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromLibcore(Ljava/lang/String;J)J
    .locals 7

    :try_start_0
    const-string v0, "libcore.io.OsConstants"

    .line 58
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    const-string v1, "libcore.io.Libcore"

    .line 60
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "libcore.io.Os"

    .line 61
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "os"

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sysconf"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 63
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/facebook/battery/metrics/cpu/Sysconf;->logReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 71
    invoke-static {p0}, Lcom/facebook/battery/metrics/cpu/Sysconf;->logReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 69
    invoke-static {p0}, Lcom/facebook/battery/metrics/cpu/Sysconf;->logReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 67
    invoke-static {p0}, Lcom/facebook/battery/metrics/cpu/Sysconf;->logReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 65
    invoke-static {p0}, Lcom/facebook/battery/metrics/cpu/Sysconf;->logReflectionException(Ljava/lang/Exception;)V

    :goto_0
    return-wide p1
.end method

.method public static getScClkTck(J)J
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    goto :goto_0

    .line 38
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string v0, "_SC_CLK_TCK"

    .line 39
    invoke-static {v0, p0, p1}, Lcom/facebook/battery/metrics/cpu/Sysconf;->fromLibcore(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, p0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move-wide p0, v0

    :cond_2
    return-wide p0
.end method

.method public static getScNProcessorsConf(J)J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 48
    sget p0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-static {p0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide p0

    return-wide p0

    .line 49
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string v0, "_SC_NPROCESSORS_CONF"

    .line 50
    invoke-static {v0, p0, p1}, Lcom/facebook/battery/metrics/cpu/Sysconf;->fromLibcore(Ljava/lang/String;J)J

    move-result-wide p0

    :cond_1
    return-wide p0
.end method

.method private static logReflectionException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Sysconf"

    const-string v1, "Unable to read _SC_CLK_TCK by reflection"

    .line 80
    invoke-static {v0, v1, p0}, Lcom/facebook/battery/metrics/core/SystemMetricsLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
