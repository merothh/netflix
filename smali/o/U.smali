.class final Lo/U;
.super Lo/Z;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/U$Activity;
    }
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:Lo/Y;

.field private final c:Lorg/chromium/net/UploadDataProvider;

.field private d:Z

.field private final e:Lo/X;


# direct methods
.method constructor <init>(Lo/Y;ILo/X;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lo/Z;-><init>()V

    .line 25
    new-instance v0, Lo/U$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/U$Activity;-><init>(Lo/U;Lo/U$2;)V

    iput-object v0, p0, Lo/U;->c:Lorg/chromium/net/UploadDataProvider;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lo/U;->d:Z

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    .line 42
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    .line 43
    iput-object p1, p0, Lo/U;->b:Lo/Y;

    .line 44
    iput-object p3, p0, Lo/U;->e:Lo/X;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkLength should be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lo/U;)Lo/X;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/U;->e:Lo/X;

    return-object p0
.end method

.method static synthetic b(Lo/U;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lo/U;->d:Z

    return p0
.end method

.method static synthetic e(Lo/U;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 134
    iget-object v0, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lo/U;->j()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lo/U;->a()V

    .line 146
    iget-object v0, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lo/U;->e:Lo/X;

    invoke-virtual {v0}, Lo/X;->e()V

    .line 148
    invoke-virtual {p0}, Lo/U;->c()V

    return-void
.end method


# virtual methods
.method b()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    .line 71
    invoke-super {p0}, Lo/Z;->close()V

    .line 72
    iget-boolean v0, p0, Lo/U;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lo/U;->d:Z

    .line 76
    iget-object v0, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method d()V
    .locals 0

    return-void
.end method

.method e()Lorg/chromium/net/UploadDataProvider;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/U;->c:Lorg/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lo/U;->f()V

    .line 50
    iget-object v0, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lo/U;->a()V

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    move v0, p3

    :goto_0
    if-lez v0, :cond_0

    .line 61
    iget-object v1, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 62
    iget-object v2, p0, Lo/U;->a:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    .line 65
    invoke-direct {p0}, Lo/U;->f()V

    goto :goto_0

    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
