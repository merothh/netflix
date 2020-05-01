.class public Lcom/netflix/msl/io/LZWOutputStream;
.super Ljava/io/OutputStream;
.source "LZWOutputStream.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final INITIAL_DICTIONARY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_BUFFER_SIZE:I = 0x64


# instance fields
.field private bits:I

.field private final buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Code;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private finish:Z

.field private final out:Ljava/io/OutputStream;

.field private final symbols:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x100

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/netflix/msl/io/LZWOutputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    new-instance v3, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v3, v2}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    sget-object v2, Lcom/netflix/msl/io/LZWOutputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/netflix/msl/io/LZWOutputStream;->INITIAL_DICTIONARY:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x8

    iput v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    iput-boolean v2, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    iput-object p1, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private static codesToBytes(Ljava/util/LinkedList;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/msl/io/LZWOutputStream$Code;",
            ">;)[B"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v4, 0x0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v3, v4

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/LZWOutputStream$Code;

    iget v5, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->bits:I

    :cond_1
    :goto_0
    if-lez v5, :cond_0

    if-le v5, v1, :cond_2

    iget v7, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->value:I

    sub-int v8, v5, v1

    ushr-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    int-to-byte v3, v3

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sub-int v1, v5, v1

    move v5, v1

    move v3, v4

    move v1, v2

    goto :goto_0

    :cond_2
    if-gt v5, v1, :cond_1

    iget v7, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->value:I

    sub-int v8, v1, v5

    shl-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v1, 0x8

    ushr-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    int-to-byte v3, v3

    sub-int/2addr v1, v5

    if-nez v1, :cond_3

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    move v3, v4

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    if-ge v1, v2, :cond_5

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->finish()V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .locals 4

    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    new-instance v2, Lcom/netflix/msl/io/LZWOutputStream$Code;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    invoke-direct {v2, v0, v3}, Lcom/netflix/msl/io/LZWOutputStream$Code;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/LZWOutputStream$Code;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/netflix/msl/io/LZWOutputStream$Code;->bits:I

    add-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v3}, Lcom/netflix/msl/io/LZWOutputStream;->codesToBytes(Ljava/util/LinkedList;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    move v0, v2

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->finish:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v3}, Lcom/netflix/msl/io/LZWOutputStream;->codesToBytes(Ljava/util/LinkedList;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/msl/io/LZWOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 7

    iget-boolean v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Output stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Length cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Offset plus length cannot be greater than the array length."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, p2

    :goto_0
    add-int v0, p2, p3

    if-ge v1, v0, :cond_6

    aget-byte v2, p1, v1

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v4, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v4, v3}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    new-instance v3, Lcom/netflix/msl/io/LZWOutputStream$Key;

    invoke-direct {v3, v0}, Lcom/netflix/msl/io/LZWOutputStream$Key;-><init>([B)V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    new-instance v5, Lcom/netflix/msl/io/LZWOutputStream$Code;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v6, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    invoke-direct {v5, v0, v6}, Lcom/netflix/msl/io/LZWOutputStream$Code;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    shr-int v3, v0, v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->bits:I

    :cond_4
    iget-object v3, p0, Lcom/netflix/msl/io/LZWOutputStream;->dictionary:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->symbols:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/netflix/msl/io/LZWOutputStream;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/netflix/msl/io/LZWOutputStream;->flush()V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    return-void
.end method
