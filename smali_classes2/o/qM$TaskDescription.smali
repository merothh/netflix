.class public Lo/qM$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TaskDescription"
.end annotation


# instance fields
.field final a:Landroid/media/MediaCodec$CryptoInfo;

.field final b:I

.field final c:J

.field final d:I

.field final e:I

.field final g:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;


# direct methods
.method public constructor <init>(IILandroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;JI)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lo/qM$TaskDescription;->d:I

    .line 262
    iput p2, p0, Lo/qM$TaskDescription;->b:I

    .line 263
    iput-object p3, p0, Lo/qM$TaskDescription;->a:Landroid/media/MediaCodec$CryptoInfo;

    .line 264
    iput-wide p5, p0, Lo/qM$TaskDescription;->c:J

    .line 265
    iput p7, p0, Lo/qM$TaskDescription;->e:I

    .line 266
    iput-object p4, p0, Lo/qM$TaskDescription;->g:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$PatternWrapper;

    return-void
.end method
