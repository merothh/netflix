.class final Lo/Q;
.super Lo/Z;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Q$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Lo/Y;

.field private b:Ljava/nio/ByteBuffer;

.field private final c:Lorg/chromium/net/UploadDataProvider;

.field private final d:I

.field private e:Z


# direct methods
.method constructor <init>(Lo/Y;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lo/Z;-><init>()V

    .line 28
    new-instance v0, Lo/Q$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/Q$ActionBar;-><init>(Lo/Q;Lo/Q$2;)V

    iput-object v0, p0, Lo/Q;->c:Lorg/chromium/net/UploadDataProvider;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/Q;->e:Z

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lo/Q;->a:Lo/Y;

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lo/Q;->d:I

    const/16 p1, 0x4000

    .line 69
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method constructor <init>(Lo/Y;J)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lo/Z;-><init>()V

    .line 28
    new-instance v0, Lo/Q$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/Q$ActionBar;-><init>(Lo/Q;Lo/Q$2;)V

    iput-object v0, p0, Lo/Q;->c:Lorg/chromium/net/UploadDataProvider;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/Q;->e:Z

    if-eqz p1, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 52
    iput-object p1, p0, Lo/Q;->a:Lo/Y;

    long-to-int p1, p2

    .line 53
    iput p1, p0, Lo/Q;->d:I

    .line 54
    iget p1, p0, Lo/Q;->d:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content length < 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2GB."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument connection cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lo/Q;)I
    .locals 0

    .line 20
    iget p0, p0, Lo/Q;->d:I

    return p0
.end method

.method static synthetic c(Lo/Q;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private d(I)V
    .locals 3

    .line 90
    iget v0, p0, Lo/Q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Lo/Q;->d:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exceeded content-length limit of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Q;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/Q;->e:Z

    if-nez v0, :cond_4

    .line 100
    iget v0, p0, Lo/Q;->d:I

    if-eq v0, v1, :cond_2

    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, p1, :cond_3

    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 109
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 111
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 112
    iput-object p1, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    return-void

    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for writing after connect"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic e(Lo/Q;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lo/Q;->e:Z

    return p0
.end method


# virtual methods
.method b()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lo/Q;->e:Z

    .line 123
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lo/Q;->d:I

    if-lt v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Content received is less than Content-Length"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method e()Lorg/chromium/net/UploadDataProvider;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/Q;->c:Lorg/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lo/Q;->a()V

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Lo/Q;->d(I)V

    .line 76
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lo/Q;->a()V

    .line 82
    invoke-direct {p0, p3}, Lo/Q;->d(I)V

    .line 83
    iget-object v0, p0, Lo/Q;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
