.class abstract Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;
.super Ljava/lang/Object;
.source "BasicBifManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/bif/IBifManager;


# static fields
.field private static final CHUNK_SIZE:I = 0x400

.field private static final HEADER_SIZE:I = 0x40

.field private static final INDEX_ENTRY_SIZE:I = 0x8

.field private static final MAX_INDEX_SIZE:I = 0x7080

.field private static final TAG:Ljava/lang/String; = "BasicBifManager"


# instance fields
.field private final mBifMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInterval:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    .line 36
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    return-void
.end method


# virtual methods
.method public getIndexFrame(I)Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 40
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "BasicBifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->isBifLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    div-int/2addr v0, v2

    .line 49
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    .line 52
    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 54
    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v0, v2

    .line 55
    new-array v0, v3, [B

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->getRandomAccessFile()Ljava/io/RandomAccessFile;

    move-result-object v4

    .line 58
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 61
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    const-string/jumbo v5, "BasicBifManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "return @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", with size "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", read "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v2, "BasicBifManager"

    const-string/jumbo v3, "Failed reading bif "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    move-object v0, v1

    .line 73
    goto/16 :goto_0
.end method

.method protected abstract getRandomAccessFile()Ljava/io/RandomAccessFile;
.end method

.method protected abstract isBifLoaded()Z
.end method

.method protected parseIndexFromInputStream(Ljava/io/InputStream;)Z
    .locals 11

    .prologue
    const/16 v2, 0x400

    const/16 v8, 0x40

    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 80
    const/4 v3, 0x0

    const/16 v5, 0x40

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 81
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string/jumbo v5, "BasicBifManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    if-ge v3, v8, :cond_1

    .line 85
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 145
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 93
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 94
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    .line 95
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string/jumbo v1, "BasicBifManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "version= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", bifCount= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",mInterval= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mInterval:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    if-lez v5, :cond_8

    const/16 v1, 0x7080

    if-gt v5, v1, :cond_8

    .line 100
    add-int/lit8 v1, v5, 0x1

    mul-int/lit8 v5, v1, 0x8

    .line 101
    new-array v6, v5, [B

    .line 103
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const-string/jumbo v1, "BasicBifManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "try to read index "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v0

    .line 106
    :goto_1
    if-ge v3, v5, :cond_6

    .line 108
    sub-int v1, v5, v3

    if-ge v1, v2, :cond_b

    .line 109
    sub-int v1, v5, v3

    .line 111
    :goto_2
    invoke-virtual {v4, v6, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 112
    if-eq v7, v1, :cond_4

    .line 113
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 114
    const-string/jumbo v8, "BasicBifManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "attempt to read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, ", actual "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, " bytes"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_4
    if-gtz v7, :cond_5

    .line 119
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 122
    :cond_5
    add-int v1, v3, v7

    move v3, v1

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v2, v0

    .line 126
    :goto_3
    if-ge v2, v3, :cond_a

    .line 127
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 128
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 129
    const/4 v7, -0x1

    if-ne v1, v7, :cond_7

    .line 130
    const v1, 0x7fffffff

    .line 132
    :cond_7
    iget-object v7, p0, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v1, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v1, v2, 0x8

    move v2, v1

    goto :goto_3

    .line 135
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 136
    const-string/jumbo v1, "BasicBifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bif count may not be correct"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .line 141
    :cond_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto/16 :goto_2
.end method
