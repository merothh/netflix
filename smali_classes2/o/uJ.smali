.class public Lo/uJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/util/Fmp4TimestampAdjuster;


# instance fields
.field private final e:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lo/uJ;->e:J

    return-void
.end method


# virtual methods
.method public adjustSampleTimestamp(J)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lo/uJ;->e:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
