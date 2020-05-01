.class abstract Lo/pF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pK;


# instance fields
.field private final b:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo/pF;->b:Ljava/util/SortedMap;

    const/16 v0, 0x3e8

    .line 34
    iput v0, p0, Lo/pF;->d:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/RandomAccessFile;
.end method

.method public a(I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 42
    invoke-virtual {p0}, Lo/pF;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    iget v0, p0, Lo/pF;->d:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    .line 47
    iget-object v0, p0, Lo/pF;->b:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lo/pF;->b:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 50
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    invoke-interface {p1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v0

    .line 53
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lo/pF;->a()Ljava/io/RandomAccessFile;

    move-result-object v4

    int-to-long v5, v0

    .line 56
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {v4, v2, v3, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 63
    invoke-static {v2, v3, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "BasicBifManager"

    const-string v3, "Failed reading bif "

    .line 68
    invoke-static {v2, p1, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    return-object v1
.end method

.method protected d(Ljava/io/InputStream;)Z
    .locals 11

    const-string v0, "BasicBifManager"

    const/4 v1, 0x0

    .line 75
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x40

    new-array v3, p1, [B

    .line 78
    invoke-virtual {v2, v3, v1, p1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const-string v5, "read %d bytes"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v5, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-ge v4, p1, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    return v1

    .line 85
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    .line 88
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const/16 v5, 0xc

    .line 89
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const/16 v7, 0x10

    .line 90
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lo/pF;->d:I

    const-string p1, "version= %d, bifCount= %d, mInterval= %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    iget v4, p0, Lo/pF;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v0, p1, v7}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-lez v5, :cond_7

    const/16 p1, 0x7080

    if-gt v5, p1, :cond_7

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x8

    .line 96
    new-array p1, v5, [B

    const-string v3, "try to read index %d"

    new-array v4, v6, [Ljava/lang/Object;

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {v0, v3, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_4

    sub-int v4, v5, v3

    const/16 v7, 0x400

    if-ge v4, v7, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x400

    .line 104
    :goto_1
    invoke-virtual {v2, p1, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    if-eq v7, v4, :cond_2

    const-string v9, "attempt to read %d, actual %d bytes"

    new-array v10, v8, [Ljava/lang/Object;

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v6

    invoke-static {v0, v9, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    if-gtz v7, :cond_3

    .line 110
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    return v1

    :cond_3
    add-int/2addr v3, v7

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 116
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/4 v7, -0x1

    if-ne v4, v7, :cond_5

    const v4, 0x7fffffff

    .line 123
    :cond_5
    iget-object v7, p0, Lo/pF;->b:Ljava/util/SortedMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 130
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    return v6

    :cond_7
    const-string p1, "bif count may not be correct %d"

    new-array v3, v6, [Ljava/lang/Object;

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, p1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method protected abstract e()Z
.end method
