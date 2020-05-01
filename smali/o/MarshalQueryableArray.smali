.class public Lo/MarshalQueryableArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MarshalQueryableParcelable;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:I

.field private b:Ljava/nio/ByteBuffer;

.field private final c:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    .line 36
    iput p1, p0, Lo/MarshalQueryableArray;->a:I

    .line 37
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lo/MarshalQueryableArray;->c:J

    return-void
.end method

.method private a(ILo/MarshalQueryableParcelable;II)V
    .locals 2

    .line 153
    instance-of v0, p2, Lo/MarshalQueryableArray;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lo/MarshalQueryableArray;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 157
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 158
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->c()I

    move-result v0

    iget v1, p0, Lo/MarshalQueryableArray;->a:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/MarshalQueryableRect;->c(IIIII)V

    .line 159
    iget-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    new-array p1, p4, [B

    .line 165
    iget-object p3, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 166
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->d()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(I)B
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lo/MarshalQueryableArray;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_1
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 85
    iget v0, p0, Lo/MarshalQueryableArray;->a:I

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lo/StringParceledListSlice;->a(Z)V

    .line 86
    iget-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()J
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get the pointer of a BufferMemoryChunk"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lo/MarshalQueryableArray;->c:J

    return-wide v0
.end method

.method public b(ILo/MarshalQueryableParcelable;II)V
    .locals 5

    .line 92
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lo/MarshalQueryableArray;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying from BufferMemoryChunk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lo/MarshalQueryableArray;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to BufferMemoryChunk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which are the same "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BufferMemoryChunk"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 114
    :cond_0
    invoke-interface {p2}, Lo/MarshalQueryableParcelable;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lo/MarshalQueryableArray;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 115
    monitor-enter p2

    .line 116
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lo/MarshalQueryableArray;->a(ILo/MarshalQueryableParcelable;II)V

    .line 118
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 118
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 119
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 124
    :cond_1
    monitor-enter p0

    .line 125
    :try_start_5
    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 126
    :try_start_6
    invoke-direct {p0, p1, p2, p3, p4}, Lo/MarshalQueryableArray;->a(ILo/MarshalQueryableParcelable;II)V

    .line 127
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_2
    move-exception p1

    .line 127
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1

    :catchall_3
    move-exception p1

    .line 128
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1
.end method

.method public c()I
    .locals 1

    .line 52
    iget v0, p0, Lo/MarshalQueryableArray;->a:I

    return v0
.end method

.method public declared-synchronized c(I[BII)I
    .locals 2

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lo/MarshalQueryableArray;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 73
    iget v0, p0, Lo/MarshalQueryableArray;->a:I

    invoke-static {p1, p4, v0}, Lo/MarshalQueryableRect;->c(III)I

    move-result p4

    .line 74
    array-length v0, p2

    iget v1, p0, Lo/MarshalQueryableArray;->a:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/MarshalQueryableRect;->c(IIIII)V

    .line 76
    iget-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    iget-object p1, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_0
    iput-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/nio/ByteBuffer;
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(I[BII)I
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lo/MarshalQueryableArray;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 60
    iget v0, p0, Lo/MarshalQueryableArray;->a:I

    invoke-static {p1, p4, v0}, Lo/MarshalQueryableRect;->c(III)I

    move-result p4

    .line 61
    array-length v0, p2

    iget v1, p0, Lo/MarshalQueryableArray;->a:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/MarshalQueryableRect;->c(IIIII)V

    .line 63
    iget-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-object p1, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lo/MarshalQueryableArray;->b:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
