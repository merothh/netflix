.class public Lo/SystemSensorManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final i:J


# direct methods
.method public constructor <init>(IIIII)V
    .locals 11

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    .line 40
    invoke-direct/range {v3 .. v10}, Lo/SystemSensorManager;-><init>(IIIIIJ)V

    return-void
.end method

.method public constructor <init>(IIIIIJ)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lo/SystemSensorManager;->b:I

    .line 68
    iput p2, p0, Lo/SystemSensorManager;->e:I

    .line 69
    iput p3, p0, Lo/SystemSensorManager;->a:I

    .line 70
    iput p4, p0, Lo/SystemSensorManager;->d:I

    .line 71
    iput p5, p0, Lo/SystemSensorManager;->c:I

    .line 72
    iput-wide p6, p0, Lo/SystemSensorManager;->i:J

    return-void
.end method
