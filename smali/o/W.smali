.class Lo/W;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final a:Lo/Y;

.field private b:Ljava/io/IOException;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Z


# direct methods
.method public constructor <init>(Lo/Y;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lo/W;->a:Lo/Y;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lo/W;->d:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lo/W;->b:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    throw v0

    .line 90
    :cond_1
    invoke-direct {p0}, Lo/W;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const v0, 0x8000

    .line 93
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    .line 95
    :cond_2
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 98
    iget-object v0, p0, Lo/W;->a:Lo/Y;

    iget-object v1, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lo/Y;->e(Ljava/nio/ByteBuffer;)V

    .line 99
    iget-object v0, p0, Lo/W;->b:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 100
    :cond_3
    throw v0

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method b(Ljava/io/IOException;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lo/W;->b:Ljava/io/IOException;

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lo/W;->d:Z

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public read()I
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/W;->d()V

    .line 41
    invoke-direct {p0}, Lo/W;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 49
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    invoke-direct {p0}, Lo/W;->d()V

    .line 60
    invoke-direct {p0}, Lo/W;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 62
    iget-object v0, p0, Lo/W;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
