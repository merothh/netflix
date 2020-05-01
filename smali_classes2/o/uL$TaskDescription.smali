.class public final Lo/uL$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field public c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

.field public d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

.field final e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;


# direct methods
.method constructor <init>(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZ)V
    .locals 2

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-wide p1, p0, Lo/uL$TaskDescription;->b:J

    .line 486
    iput-object p3, p0, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 487
    iget-object p1, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 488
    invoke-static {p1}, Lo/uL$TaskDescription;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 489
    iput-object p1, p0, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    goto/16 :goto_2

    :cond_0
    const-string p2, "application/nflx-cmisc"

    .line 490
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 491
    instance-of p1, p3, Lo/uG;

    if-eqz p1, :cond_1

    .line 492
    move-object p1, p3

    check-cast p1, Lo/uG;

    invoke-virtual {p1}, Lo/uG;->e()V

    .line 494
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    new-instance p2, Lo/uH;

    invoke-direct {p2, p3}, Lo/uH;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)V

    iget-object p4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)V

    iput-object p1, p0, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    goto :goto_2

    :cond_2
    const-string p2, "application/x-rawcc"

    .line 497
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 498
    new-instance p1, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;

    iget-object p2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;-><init>(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    .line 499
    :cond_3
    invoke-static {p1}, Lo/uL$TaskDescription;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 500
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    if-eqz p4, :cond_5

    const/4 p1, 0x4

    :cond_5
    if-eqz p5, :cond_6

    or-int/lit8 p1, p1, 0x8

    .line 510
    :cond_6
    iget-object p2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string p4, "audio/mp4a-latm"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 512
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    new-instance p4, Lo/uJ;

    const-wide/32 v0, 0x109a0

    invoke-direct {p4, v0, v1}, Lo/uJ;-><init>(J)V

    invoke-direct {p2, p1, p4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/Fmp4TimestampAdjuster;)V

    goto :goto_0

    .line 514
    :cond_7
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 516
    :goto_0
    new-instance p1, Lo/uM;

    invoke-direct {p1, p2}, Lo/uM;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;)V

    .line 520
    :goto_1
    new-instance p2, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object p4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p2, p1, p4}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)V

    iput-object p2, p0, Lo/uL$TaskDescription;->e:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 522
    :goto_2
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object p1

    iput-object p1, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 599
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/webm"

    .line 594
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/webm"

    .line 595
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(I)J
    .locals 5

    .line 581
    invoke-virtual {p0, p1}, Lo/uL$TaskDescription;->c(I)J

    move-result-wide v0

    iget-object v2, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget v3, p0, Lo/uL$TaskDescription;->a:I

    sub-int/2addr p1, v3

    iget-wide v3, p0, Lo/uL$TaskDescription;->b:J

    .line 582
    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method a(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    .locals 6

    .line 527
    iget-object v0, p0, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    .line 528
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v1

    .line 530
    iput-wide p1, p0, Lo/uL$TaskDescription;->b:J

    .line 531
    iput-object p3, p0, Lo/uL$TaskDescription;->d:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iput-object v1, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 538
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 543
    :cond_1
    iget-wide p1, p0, Lo/uL$TaskDescription;->b:J

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 549
    :cond_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 550
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v2

    iget-wide v4, p0, Lo/uL$TaskDescription;->b:J

    .line 551
    invoke-interface {v0, p2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 552
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result p1

    .line 553
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_3

    .line 556
    iget p3, p0, Lo/uL$TaskDescription;->a:I

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p1

    add-int/2addr p3, p2

    iput p3, p0, Lo/uL$TaskDescription;->a:I

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    .line 563
    iget p2, p0, Lo/uL$TaskDescription;->a:I

    iget-wide v1, p0, Lo/uL$TaskDescription;->b:J

    invoke-interface {v0, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result p3

    sub-int/2addr p3, p1

    add-int/2addr p2, p3

    iput p2, p0, Lo/uL$TaskDescription;->a:I

    :goto_0
    return-void

    .line 560
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw p1
.end method

.method public b(J)I
    .locals 3

    .line 586
    iget-object v0, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lo/uL$TaskDescription;->b:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result p1

    iget p2, p0, Lo/uL$TaskDescription;->a:I

    add-int/2addr p1, p2

    return p1
.end method

.method public b(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    .line 590
    iget-object v0, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lo/uL$TaskDescription;->a:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 3

    .line 573
    iget-object v0, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v1, p0, Lo/uL$TaskDescription;->b:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v0

    return v0
.end method

.method public c(I)J
    .locals 2

    .line 577
    iget-object v0, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lo/uL$TaskDescription;->a:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()I
    .locals 2

    .line 569
    iget-object v0, p0, Lo/uL$TaskDescription;->c:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lo/uL$TaskDescription;->a:I

    add-int/2addr v0, v1

    return v0
.end method
