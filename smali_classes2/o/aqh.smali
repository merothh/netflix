.class public final Lo/aqh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I

.field public static final b:J

.field public static final c:J

.field public static final d:I

.field public static final e:I

.field public static h:Lo/aqj;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 18
    invoke-static/range {v0 .. v8}, Lo/apL;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lo/aqh;->c:J

    const-string v2, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 23
    invoke-static/range {v2 .. v7}, Lo/apL;->b(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lo/aqh;->e:I

    .line 32
    invoke-static {}, Lo/apL;->d()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lo/amG;->e(II)I

    move-result v3

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v4, 0x1

    const/16 v6, 0x8

    .line 30
    invoke-static/range {v2 .. v7}, Lo/apL;->b(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lo/aqh;->d:I

    .line 39
    invoke-static {}, Lo/apL;->d()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    .line 40
    sget v1, Lo/aqh;->d:I

    const v2, 0x1ffffe

    .line 39
    invoke-static {v0, v1, v2}, Lo/amG;->c(III)I

    move-result v4

    const-string v3, "kotlinx.coroutines.scheduler.max.pool.size"

    const v6, 0x1ffffe

    const/4 v7, 0x4

    .line 37
    invoke-static/range {v3 .. v8}, Lo/apL;->b(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lo/aqh;->a:I

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 48
    invoke-static/range {v1 .. v9}, Lo/apL;->a(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/aqh;->b:J

    .line 52
    sget-object v0, Lo/aqa;->b:Lo/aqa;

    check-cast v0, Lo/aqj;

    sput-object v0, Lo/aqh;->h:Lo/aqj;

    return-void
.end method
