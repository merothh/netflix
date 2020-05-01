.class public Lcom/netflix/msl/io/LZWInputStream;
.super Ljava/io/InputStream;
.source "LZWInputStream.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final INITIAL_DICTIONARY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private bits:I

.field private final buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private codeOffset:I

.field private final codes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/InputStream;

.field private final prevdata:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x100

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/netflix/msl/io/LZWInputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    sget-object v3, Lcom/netflix/msl/io/LZWInputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/netflix/msl/io/LZWInputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    iput v2, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    iput-boolean v2, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    iput-object p1, p0, Lcom/netflix/msl/io/LZWInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private decompress([BII)I
    .locals 9

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, p3, :cond_d

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    sub-int v0, v3, v0

    div-int/lit8 v3, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    new-array v4, v3, [B

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v7, p0, Lcom/netflix/msl/io/LZWInputStream;->in:Ljava/io/InputStream;

    array-length v8, v4

    sub-int/2addr v8, v0

    invoke-virtual {v7, v4, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v5, :cond_2

    if-nez v6, :cond_1

    move v0, v5

    :goto_3
    return v0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_3

    :cond_2
    add-int/2addr v0, v7

    goto :goto_2

    :cond_3
    array-length v3, v4

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_4

    aget-byte v7, v4, v0

    iget-object v8, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v3, v2

    move v4, v2

    :goto_5
    iget v0, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    if-ge v3, v0, :cond_6

    iget v0, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    sub-int/2addr v0, v3

    iget v7, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    rsub-int/lit8 v7, v7, 0x8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iget v8, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    shl-int/2addr v0, v8

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v8, v7, 0x8

    ushr-int v8, v0, v8

    add-int v0, v3, v7

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    add-int/2addr v3, v7

    iput v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    const/16 v7, 0x8

    if-ne v3, v7, :cond_5

    iput v2, p0, Lcom/netflix/msl/io/LZWInputStream;->codeOffset:I

    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->codes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_5
    and-int/lit16 v3, v8, 0xff

    iget v7, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    sub-int/2addr v7, v0

    shl-int/2addr v3, v7

    or-int/2addr v3, v4

    move v4, v3

    move v3, v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    :cond_7
    :goto_6
    array-length v7, v0

    move v4, v6

    move v6, v2

    :goto_7
    if-ge v6, v7, :cond_c

    aget-byte v8, v0, v6

    if-ge v4, p3, :cond_b

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v4, p2

    aput-byte v8, p1, v4

    :goto_8
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto :goto_7

    :cond_8
    if-nez v0, :cond_a

    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v7, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    aget-byte v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_9
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    iget-object v7, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v7, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    shl-int v7, v1, v7

    if-ne v3, v7, :cond_9

    iget v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/msl/io/LZWInputStream;->bits:I

    :cond_9
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->dictionary:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    aget-byte v7, v0, v2

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9

    :cond_b
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/netflix/msl/io/LZWInputStream;->prevdata:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v6, v4

    goto/16 :goto_0

    :cond_d
    move v0, v6

    goto/16 :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWInputStream;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public read()I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Input stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v2, [B

    invoke-direct {p0, v1, v3, v2}, Lcom/netflix/msl/io/LZWInputStream;->decompress([BII)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    aget-byte v0, v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Input stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lez p2, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Specified offset cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Specified length cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Requested length exceeds buffer size at offset."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, p3

    :goto_0
    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v3, p2, 0x1

    iget-object v0, p0, Lcom/netflix/msl/io/LZWInputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move p2, v3

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    :goto_1
    return p3

    :cond_5
    invoke-direct {p0, p1, p2, v2}, Lcom/netflix/msl/io/LZWInputStream;->decompress([BII)I

    move-result v0

    if-ne v0, v1, :cond_7

    if-ne v2, p3, :cond_6

    move p3, v1

    goto :goto_1

    :cond_6
    sub-int/2addr p3, v2

    goto :goto_1

    :cond_7
    sub-int v0, v2, v0

    sub-int/2addr p3, v0

    goto :goto_1
.end method
