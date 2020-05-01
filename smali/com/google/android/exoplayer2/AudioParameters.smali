.class public final Lcom/google/android/exoplayer2/AudioParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final drcMode:I

.field public final target_ref_level:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/google/android/exoplayer2/AudioParameters;->drcMode:I

    .line 22
    iput p2, p0, Lcom/google/android/exoplayer2/AudioParameters;->target_ref_level:I

    return-void
.end method
