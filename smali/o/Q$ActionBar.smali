.class Lo/Q$ActionBar;
.super Lorg/chromium/net/UploadDataProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic c:Lo/Q;


# direct methods
.method private constructor <init>(Lo/Q;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/Q;Lo/Q$2;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lo/Q$ActionBar;-><init>(Lo/Q;)V

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 149
    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->a(Lo/Q;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->e(Lo/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 153
    :cond_1
    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->a(Lo/Q;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 158
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 159
    iget-object v1, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v1}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v1}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v2}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 161
    iget-object p2, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {p2}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v1, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v1}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    const/4 p2, 0x0

    .line 165
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lo/Q$ActionBar;->c:Lo/Q;

    invoke-static {v0}, Lo/Q;->c(Lo/Q;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {p1}, Lorg/chromium/net/UploadDataSink;->onRewindSucceeded()V

    return-void
.end method
