.class public Lo/qC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field private final a:J

.field final b:Z

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J[BI)V
    .locals 10

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/qC;->e:Ljava/util/List;

    const/16 p1, 0x18

    sub-int/2addr p4, p1

    .line 22
    invoke-static {p3, p1, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 23
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 24
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iput-boolean p1, p0, Lo/qC;->b:Z

    .line 29
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result p1

    .line 30
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result p3

    .line 31
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 32
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p4

    int-to-long v2, p4

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lo/qC;->a:J

    .line 33
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result p4

    .line 34
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v0

    .line 35
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v2

    .line 36
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result p2

    .line 37
    iget-object v8, p0, Lo/qC;->e:Ljava/util/List;

    new-instance v9, Lcom/google/android/exoplayer2/text/Cue;

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p4, v3

    int-to-float p4, p4

    int-to-float p1, p1

    div-float p1, p4, p1

    const/4 v3, 0x1

    div-int/lit8 p4, p2, 0x2

    add-int/2addr v0, p4

    int-to-float p4, v0

    int-to-float p3, p3

    div-float v4, p4, p3

    const/4 v5, 0x1

    int-to-float p4, v2

    div-float v6, p4, p3

    int-to-float p2, p2

    div-float v7, p2, p3

    move-object v0, v9

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e([B)I
    .locals 2

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 62
    iget-wide v0, p0, Lo/qC;->a:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 63
    iget-object p1, p0, Lo/qC;->e:Ljava/util/List;

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 57
    :cond_0
    iget-wide v0, p0, Lo/qC;->a:J

    :goto_0
    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    .line 43
    iget-wide v0, p0, Lo/qC;->a:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
