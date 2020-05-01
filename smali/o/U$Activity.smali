.class Lo/U$Activity;
.super Lorg/chromium/net/UploadDataProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic c:Lo/U;


# direct methods
.method private constructor <init>(Lo/U;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lo/U$Activity;->c:Lo/U;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/U;Lo/U$2;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lo/U$Activity;-><init>(Lo/U;)V

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 105
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {v1}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {v0}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 107
    iget-object p2, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {p2}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    iget-object p2, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {p2}, Lo/U;->b(Lo/U;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 109
    iget-object p1, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {p1}, Lo/U;->b(Lo/U;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {p1}, Lo/U;->a(Lo/U;)Lo/X;

    move-result-object p1

    invoke-virtual {p1}, Lo/X;->b()V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {v0}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 115
    iget-object v1, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {v1}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {v2}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 116
    iget-object v1, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {v1}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p2, p0, Lo/U$Activity;->c:Lo/U;

    invoke-static {p2}, Lo/U;->e(Lo/U;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    .line 118
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 3

    .line 124
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed Http body"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
