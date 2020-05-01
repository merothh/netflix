.class public Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
.super Lo/SplitDependencyLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/MarshalQueryableParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/MarshalQueryableReprocessFormatsMap;


# direct methods
.method public constructor <init>(Lo/MarshalQueryableReprocessFormatsMap;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lo/MarshalQueryableReprocessFormatsMap;->h()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/MarshalQueryableReprocessFormatsMap;I)V

    return-void
.end method

.method public constructor <init>(Lo/MarshalQueryableReprocessFormatsMap;I)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lo/SplitDependencyLoader;-><init>()V

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-static {v1}, Lo/StringParceledListSlice;->a(Z)V

    .line 49
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MarshalQueryableReprocessFormatsMap;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->d:Lo/MarshalQueryableReprocessFormatsMap;

    .line 50
    iput v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    .line 51
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->d:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-virtual {p1, p2}, Lo/MarshalQueryableReprocessFormatsMap;->a(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->d:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-static {p1, p2}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    return-void
.end method

.method private e()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw v0
.end method


# virtual methods
.method public b()Lo/MarshalQueryableSizeF;
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->e()V

    .line 64
    new-instance v0, Lo/MarshalQueryableSizeF;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    invoke-direct {v0, v1, v2}, Lo/MarshalQueryableSizeF;-><init>(Lo/CompatibilityInfo;I)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    return v0
.end method

.method c(I)V
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->e()V

    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MarshalQueryableParcelable;

    invoke-interface {v0}, Lo/MarshalQueryableParcelable;->c()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->d:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-virtual {v0, p1}, Lo/MarshalQueryableReprocessFormatsMap;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MarshalQueryableParcelable;

    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MarshalQueryableParcelable;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v2, v1}, Lo/MarshalQueryableParcelable;->b(ILo/MarshalQueryableParcelable;II)V

    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 145
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->d:Lo/MarshalQueryableReprocessFormatsMap;

    invoke-static {p1, v0}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    return-void
.end method

.method public close()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    .line 125
    invoke-super {p0}, Lo/SplitDependencyLoader;->close()V

    return-void
.end method

.method public synthetic d()Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()Lo/MarshalQueryableSizeF;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 86
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    .line 105
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->e()V

    .line 110
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c(I)V

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:Lo/CompatibilityInfo;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MarshalQueryableParcelable;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/MarshalQueryableParcelable;->e(I[BII)I

    .line 112
    iget p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:I

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionLength="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
