.class final Lo/R;
.super Lo/Z;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/R$TaskDescription;
    }
.end annotation


# static fields
.field private static e:I = 0x4000


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:Lo/X;

.field private final c:J

.field private final d:Lo/Y;

.field private final h:Lorg/chromium/net/UploadDataProvider;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lo/Y;JLo/X;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Lo/Z;-><init>()V

    .line 49
    new-instance v0, Lo/R$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/R$TaskDescription;-><init>(Lo/R;Lo/R$3;)V

    iput-object v0, p0, Lo/R;->h:Lorg/chromium/net/UploadDataProvider;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 67
    iput-wide p2, p0, Lo/R;->c:J

    .line 68
    iget-wide p2, p0, Lo/R;->c:J

    sget v2, Lo/R;->e:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 69
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    .line 70
    iput-object p1, p0, Lo/R;->d:Lo/Y;

    .line 71
    iput-object p4, p0, Lo/R;->b:Lo/X;

    .line 72
    iput-wide v0, p0, Lo/R;->i:J

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content length must be larger than 0 for non-chunked upload."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lo/R;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lo/R;->c:J

    return-wide v0
.end method

.method private a(I)V
    .locals 6

    .line 143
    iget-wide v0, p0, Lo/R;->i:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lo/R;->c:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lo/R;->c:J

    iget-wide v4, p0, Lo/R;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lo/R;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic d(Lo/R;)Lo/X;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/R;->b:Lo/X;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 108
    iget-object v0, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lo/R;->h()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lo/R;->a()V

    .line 133
    iget-object v0, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 134
    iget-object v0, p0, Lo/R;->b:Lo/X;

    invoke-virtual {v0}, Lo/X;->e()V

    .line 135
    invoke-virtual {p0}, Lo/R;->c()V

    return-void
.end method

.method private i()V
    .locals 5

    .line 119
    iget-wide v0, p0, Lo/R;->i:J

    iget-wide v2, p0, Lo/R;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 122
    invoke-direct {p0}, Lo/R;->h()V

    :cond_0
    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .line 159
    iget-wide v0, p0, Lo/R;->i:J

    iget-wide v2, p0, Lo/R;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Content received is less than Content-Length."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()V
    .locals 0

    return-void
.end method

.method e()Lorg/chromium/net/UploadDataProvider;
    .locals 1

    .line 166
    iget-object v0, p0, Lo/R;->h:Lorg/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method public write(I)V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lo/R;->a()V

    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, v0}, Lo/R;->a(I)V

    .line 79
    invoke-direct {p0}, Lo/R;->g()V

    .line 80
    iget-object v0, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    iget-wide v0, p0, Lo/R;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/R;->i:J

    .line 82
    invoke-direct {p0}, Lo/R;->i()V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lo/R;->a()V

    .line 88
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 91
    invoke-direct {p0, p3}, Lo/R;->a(I)V

    move v0, p3

    :goto_0
    if-lez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lo/R;->g()V

    .line 95
    iget-object v1, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 96
    iget-object v2, p0, Lo/R;->a:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    goto :goto_0

    .line 99
    :cond_0
    iget-wide p1, p0, Lo/R;->i:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lo/R;->i:J

    .line 100
    invoke-direct {p0}, Lo/R;->i()V

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
