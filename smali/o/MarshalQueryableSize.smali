.class public Lo/MarshalQueryableSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AssetFileDescriptor;


# instance fields
.field private final b:Lo/CompatResources;

.field private final c:Lo/MarshalQueryableReprocessFormatsMap;


# direct methods
.method public constructor <init>(Lo/MarshalQueryableReprocessFormatsMap;Lo/CompatResources;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/MarshalQueryableSize;->c:Lo/MarshalQueryableReprocessFormatsMap;

    .line 32
    iput-object p2, p0, Lo/MarshalQueryableSize;->b:Lo/CompatResources;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lo/MarshalQueryableSizeF;
    .locals 2

    .line 48
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/MarshalQueryableSize;->c:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/MarshalQueryableReprocessFormatsMap;)V

    .line 50
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lo/MarshalQueryableSize;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lo/MarshalQueryableSizeF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    throw p1
.end method

.method a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lo/MarshalQueryableSizeF;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/MarshalQueryableSize;->b:Lo/CompatResources;

    invoke-virtual {v0, p1, p2}, Lo/CompatResources;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 96
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()Lo/MarshalQueryableSizeF;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Lo/MarshalQueryableSizeF;
    .locals 3

    .line 58
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/MarshalQueryableSize;->c:Lo/MarshalQueryableReprocessFormatsMap;

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/MarshalQueryableReprocessFormatsMap;I)V

    const/4 v1, 0x0

    .line 61
    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->write([BII)V

    .line 62
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()Lo/MarshalQueryableSizeF;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    :try_start_1
    invoke-static {p1}, Lo/VerificationParams;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    throw p1
.end method

.method public b()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/MarshalQueryableSize;->c:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/MarshalQueryableReprocessFormatsMap;)V

    return-object v0
.end method

.method public b(Ljava/io/InputStream;I)Lo/MarshalQueryableSizeF;
    .locals 2

    .line 73
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/MarshalQueryableSize;->c:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/MarshalQueryableReprocessFormatsMap;I)V

    .line 76
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lo/MarshalQueryableSize;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lo/MarshalQueryableSizeF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    throw p1
.end method

.method public synthetic c([B)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/MarshalQueryableSize;->a([B)Lo/MarshalQueryableSizeF;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2

    .line 106
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lo/MarshalQueryableSize;->c:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/MarshalQueryableReprocessFormatsMap;I)V

    return-object v0
.end method

.method public synthetic d(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/MarshalQueryableSize;->b(Ljava/io/InputStream;I)Lo/MarshalQueryableSizeF;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d()Lo/SplitDependencyLoader;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/MarshalQueryableSize;->b()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/MarshalQueryableSize;->a(Ljava/io/InputStream;)Lo/MarshalQueryableSizeF;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(I)Lo/SplitDependencyLoader;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/MarshalQueryableSize;->c(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    move-result-object p1

    return-object p1
.end method
