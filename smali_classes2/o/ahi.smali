.class public Lo/ahi;
.super Ljava/io/InputStream;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/io/ByteArrayOutputStream;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lo/ahi;->a:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 39
    sget-object v4, Lo/ahi;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 261
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lo/ahi;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/ahi;->d:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ahi;->e:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lo/ahi;->b:I

    const/16 v1, 0x8

    .line 268
    iput v1, p0, Lo/ahi;->h:I

    .line 270
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lo/ahi;->g:Ljava/util/LinkedList;

    .line 272
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    .line 275
    iput-boolean v0, p0, Lo/ahi;->j:Z

    .line 49
    iput-object p1, p0, Lo/ahi;->c:Ljava/io/InputStream;

    return-void
.end method

.method private c([BII)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_d

    .line 148
    iget-object v2, p0, Lo/ahi;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    iget v4, p0, Lo/ahi;->b:I

    sub-int/2addr v2, v4

    .line 149
    iget v4, p0, Lo/ahi;->h:I

    sub-int/2addr v4, v2

    .line 150
    div-int/lit8 v2, v4, 0x8

    rem-int/2addr v4, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v2, v4

    .line 154
    new-array v4, v2, [B

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_3

    .line 157
    iget-object v7, p0, Lo/ahi;->c:Ljava/io/InputStream;

    array-length v8, v4

    sub-int/2addr v8, v6

    invoke-virtual {v7, v4, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    if-nez v1, :cond_1

    return v8

    :cond_1
    return v1

    :cond_2
    add-int/2addr v6, v7

    goto :goto_2

    .line 168
    :cond_3
    array-length v2, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_4

    aget-byte v7, v4, v6

    .line 169
    iget-object v8, p0, Lo/ahi;->e:Ljava/util/LinkedList;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 174
    :goto_4
    iget v6, p0, Lo/ahi;->h:I

    if-ge v2, v6, :cond_6

    sub-int/2addr v6, v2

    .line 176
    iget v7, p0, Lo/ahi;->b:I

    rsub-int/lit8 v7, v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 177
    iget-object v7, p0, Lo/ahi;->e:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    .line 181
    iget v8, p0, Lo/ahi;->b:I

    shl-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v9, v6, 0x8

    ushr-int/2addr v7, v9

    add-int/2addr v2, v6

    add-int/2addr v8, v6

    .line 188
    iput v8, p0, Lo/ahi;->b:I

    .line 189
    iget v6, p0, Lo/ahi;->b:I

    if-ne v6, v3, :cond_5

    .line 190
    iput v0, p0, Lo/ahi;->b:I

    .line 191
    iget-object v6, p0, Lo/ahi;->e:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_5
    and-int/lit16 v6, v7, 0xff

    .line 196
    iget v7, p0, Lo/ahi;->h:I

    sub-int/2addr v7, v2

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    goto :goto_4

    .line 200
    :cond_6
    iget-object v2, p0, Lo/ahi;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 204
    iget-object v3, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 205
    iget v3, p0, Lo/ahi;->h:I

    add-int/2addr v3, v5

    iput v3, p0, Lo/ahi;->h:I

    goto :goto_6

    :cond_7
    if-nez v2, :cond_8

    .line 220
    iget-object v3, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 221
    iget-object v6, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    aget-byte v3, v3, v0

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 223
    :cond_8
    iget-object v3, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    aget-byte v6, v2, v0

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    :goto_5
    iget-object v3, p0, Lo/ahi;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 232
    iget-object v3, p0, Lo/ahi;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v6, p0, Lo/ahi;->h:I

    shl-int/2addr v5, v6

    if-ne v3, v5, :cond_9

    add-int/lit8 v6, v6, 0x1

    .line 233
    iput v6, p0, Lo/ahi;->h:I

    :cond_9
    if-nez v2, :cond_a

    .line 238
    iget-object v2, p0, Lo/ahi;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 243
    :cond_a
    :goto_6
    array-length v3, v2

    move v4, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_c

    aget-byte v5, v2, v1

    if-ge v4, p3, :cond_b

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v4, p2

    .line 245
    aput-byte v5, p1, v4

    move v4, v6

    goto :goto_8

    .line 247
    :cond_b
    iget-object v6, p0, Lo/ahi;->g:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 251
    :cond_c
    iget-object v1, p0, Lo/ahi;->f:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move v1, v4

    goto/16 :goto_0

    :cond_d
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lo/ahi;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lo/ahi;->j:Z

    .line 68
    iget-object v0, p0, Lo/ahi;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lo/ahi;->close()V

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public read()I
    .locals 4

    .line 77
    iget-boolean v0, p0, Lo/ahi;->j:Z

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lo/ahi;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, v1, v2, v0}, Lo/ahi;->c([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    .line 86
    :cond_0
    aget-byte v0, v1, v2

    return v0

    .line 90
    :cond_1
    iget-object v0, p0, Lo/ahi;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0

    .line 78
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3

    .line 98
    iget-boolean v0, p0, Lo/ahi;->j:Z

    if-nez v0, :cond_7

    if-gtz p2, :cond_6

    if-ltz p3, :cond_5

    .line 105
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    move v0, p2

    move p2, p3

    :goto_0
    if-lez p2, :cond_0

    .line 111
    iget-object v1, p0, Lo/ahi;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 112
    iget-object v2, p0, Lo/ahi;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, -0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return p3

    .line 121
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lo/ahi;->c([BII)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    if-ne p2, p3, :cond_2

    return v0

    :cond_2
    sub-int/2addr p3, p2

    return p3

    :cond_3
    sub-int/2addr p2, p1

    sub-int/2addr p3, p2

    return p3

    .line 106
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Requested length exceeds buffer size at offset."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Specified length cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Specified offset cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input stream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
