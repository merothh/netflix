.class public Lo/tm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tm$ActionBar;,
        Lo/tm$TaskDescription;
    }
.end annotation


# instance fields
.field private final c:Lo/tm$TaskDescription;

.field private final d:J

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(JLo/tm$TaskDescription;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lo/tm;->d:J

    .line 28
    iput-object p3, p0, Lo/tm;->c:Lo/tm$TaskDescription;

    return-void
.end method

.method synthetic constructor <init>(JLo/tm$TaskDescription;Lo/tm$3;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lo/tm;-><init>(JLo/tm$TaskDescription;)V

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 0

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0

    .line 36
    instance-of p1, p6, Lo/tH$PictureInPictureParams;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/tm;->e:Ljava/lang/Object;

    if-eq p6, p1, :cond_1

    .line 37
    iget-object p1, p0, Lo/tm;->c:Lo/tm$TaskDescription;

    if-eqz p1, :cond_0

    .line 38
    iget-wide p4, p0, Lo/tm;->d:J

    move-object p2, p6

    check-cast p2, Lo/tH$PictureInPictureParams;

    invoke-interface {p1, p4, p5, p3, p2}, Lo/tm$TaskDescription;->e(JILo/tH$PictureInPictureParams;)V

    .line 40
    :cond_0
    iput-object p6, p0, Lo/tm;->e:Ljava/lang/Object;

    :cond_1
    return-void
.end method
