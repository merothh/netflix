.class public final Lcom/google/android/exoplayer/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field public static final TYPE_sbtl:I

.field public static final TYPE_soun:I

.field public static final TYPE_subt:I

.field public static final TYPE_text:I

.field public static final TYPE_vide:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final id:I

.field public final mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field public final timescale:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    const-string/jumbo v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    return-void
.end method

.method public constructor <init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->type:I

    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    iput-wide p7, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->durationUs:J

    iput-object p9, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iput-object p10, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput p11, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iput-object p12, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    iput-object p13, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    return-void
.end method
