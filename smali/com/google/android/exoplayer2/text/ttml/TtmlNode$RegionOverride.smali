.class Lcom/google/android/exoplayer2/text/ttml/TtmlNode$RegionOverride;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegionOverride"
.end annotation


# instance fields
.field height:F

.field line:F

.field position:F

.field width:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode$RegionOverride;->line:F

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode$RegionOverride;->position:F

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode$RegionOverride;->width:F

    .line 101
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode$RegionOverride;->height:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode$1;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode$RegionOverride;-><init>()V

    return-void
.end method
