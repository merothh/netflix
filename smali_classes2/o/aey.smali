.class public Lo/aey;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:J

.field private static e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Z
    .locals 4

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lo/aey;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()J
    .locals 6

    .line 46
    sget-wide v0, Lo/aey;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 50
    invoke-static {}, Lo/aey;->d()V

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lo/aey;->e:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 55
    sget-wide v2, Lo/aey;->b:J

    add-long/2addr v2, v0

    goto :goto_0

    .line 59
    :cond_1
    sget-wide v0, Lo/aey;->b:J

    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lo/CarrierIdentifier;->o()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method private static d()V
    .locals 5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "netflix_server_time_ms"

    .line 72
    invoke-static {v2, v3, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lo/aey;->b:J

    const-string v3, "netflix_device_time_ms"

    .line 73
    invoke-static {v2, v3, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lo/aey;->e:J

    :cond_0
    return-void
.end method

.method public static e(J)V
    .locals 2

    .line 31
    sput-wide p0, Lo/aey;->b:J

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lo/aey;->e:J

    .line 33
    const-class p0, Landroid/content/Context;

    invoke-static {p0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget-wide v0, Lo/aey;->b:J

    const-string p1, "netflix_server_time_ms"

    invoke-static {p0, p1, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 34
    const-class p0, Landroid/content/Context;

    invoke-static {p0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget-wide v0, Lo/aey;->e:J

    const-string p1, "netflix_device_time_ms"

    invoke-static {p0, p1, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
