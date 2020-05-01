.class public Lcom/netflix/android/org/json/zip/BitOutputStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/org/json/zip/BitWriter;


# instance fields
.field private nrBits:J

.field private out:Ljava/io/OutputStream;

.field private unwritten:I

.field private vacant:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    const/16 v0, 0x8

    .line 56
    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    .line 66
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public nrBits()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    return-wide v0
.end method

.method public one()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0, v0}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    return-void
.end method

.method public pad(I)V
    .locals 4

    .line 98
    iget-wide v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr p1, v1

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    sub-int/2addr p1, v0

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p0, v1, v0}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(II)V
    .locals 6

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_4

    const/16 v0, 0x20

    if-gt p2, v0, :cond_4

    :cond_1
    :goto_0
    if-lez p2, :cond_3

    .line 129
    iget v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    if-le p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    .line 132
    :goto_1
    iget v1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    sub-int/2addr p2, v0

    ushr-int v2, p1, p2

    sget-object v3, Lcom/netflix/android/org/json/zip/BitInputStream;->mask:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    iget v3, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    sub-int v4, v3, v0

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    .line 135
    iget-wide v1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->nrBits:J

    sub-int/2addr v3, v0

    .line 136
    iput v3, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    .line 137
    iget v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->unwritten:I

    const/16 v0, 0x8

    .line 140
    iput v0, p0, Lcom/netflix/android/org/json/zip/BitOutputStream;->vacant:I

    goto :goto_0

    :cond_3
    return-void

    .line 125
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Bad write width."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zero()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/netflix/android/org/json/zip/BitOutputStream;->write(II)V

    return-void
.end method
