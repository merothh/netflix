.class public Lcom/netflix/android/org/json/zip/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"

# interfaces
.implements Lcom/netflix/android/org/json/zip/BitReader;


# static fields
.field static final mask:[I


# instance fields
.field private available:I

.field private in:Ljava/io/InputStream;

.field private nrBits:J

.field private unread:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/android/org/json/zip/BitInputStream;->mask:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->unread:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->nrBits:J

    iput-object p1, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->unread:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->nrBits:J

    iput-object p1, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    iput p2, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->unread:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    return-void
.end method


# virtual methods
.method public bit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/zip/BitInputStream;->read(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nrBits()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->nrBits:J

    return-wide v0
.end method

.method public pad(I)Z
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->nrBits:J

    int-to-long v4, p1

    rem-long/2addr v2, v4

    long-to-int v0, v2

    sub-int v3, p1, v0

    const/4 v0, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/netflix/android/org/json/zip/BitInputStream;->bit()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public read(I)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v1, 0x20

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Bad read width."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v0

    move v1, p1

    :goto_1
    if-lez v1, :cond_5

    iget v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->unread:I

    iget v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->unread:I

    if-gez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempt to read past end."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    :cond_4
    iget v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    if-le v1, v0, :cond_6

    iget v0, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    :goto_2
    iget v3, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->unread:I

    iget v4, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    sub-int/2addr v4, v0

    ushr-int/2addr v3, v4

    sget-object v4, Lcom/netflix/android/org/json/zip/BitInputStream;->mask:[I

    aget v4, v4, v0

    and-int/2addr v3, v4

    sub-int v4, v1, v0

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-wide v4, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->nrBits:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->nrBits:J

    iget v3, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/netflix/android/org/json/zip/BitInputStream;->available:I

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method
