.class Lorg/chromium/net/urlconnection/CronetInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mException:Ljava/io/IOException;

.field private final mHttpURLConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

.field private mResponseDataCompleted:Z


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mHttpURLConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    return-void
.end method

.method private getMoreDataIfNeeded()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mResponseDataCompleted:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    throw v0

    .line 79
    :cond_1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const v0, 0x8000

    .line 82
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 84
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 87
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mHttpURLConnection:Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getMoreData(Ljava/nio/ByteBuffer;)V

    .line 88
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 89
    :cond_3
    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method private hasUnreadData()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

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


# virtual methods
.method public read()I
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetInputStream;->getMoreDataIfNeeded()V

    .line 36
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

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

    .line 44
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetInputStream;->getMoreDataIfNeeded()V

    .line 51
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 53
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method setResponseDataCompleted(Ljava/io/IOException;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mResponseDataCompleted:Z

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
