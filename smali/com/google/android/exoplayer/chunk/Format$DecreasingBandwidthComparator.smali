.class public final Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/chunk/Format;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;)I
    .locals 2

    iget v0, p2, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    iget v1, p1, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/exoplayer/chunk/Format;

    check-cast p2, Lcom/google/android/exoplayer/chunk/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;->compare(Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/Format;)I

    move-result v0

    return v0
.end method
