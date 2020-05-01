.class public Lo/wY;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/wY;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lo/wY;->d:J

    return-void
.end method


# virtual methods
.method public b()J
    .locals 4

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/wY;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d(J)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lo/wY;->d:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public e()J
    .locals 2

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
