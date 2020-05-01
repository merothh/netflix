.class final Lorg/xbill/DNS/TCPClient;
.super Lorg/xbill/DNS/Client;
.source "TCPClient.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 15
    return-void
.end method

.method private _recv(I)[B
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 78
    new-array v3, p1, [B

    .line 79
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 80
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    move v1, v2

    .line 82
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_4

    .line 83
    :try_start_0
    iget-object v5, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v6, v5

    .line 85
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 86
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    throw v0

    .line 87
    :cond_2
    long-to-int v5, v6

    add-int/2addr v1, v5

    .line 88
    if-ge v1, p1, :cond_0

    .line 89
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 90
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 92
    :cond_3
    iget-object v5, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v6, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v5, v6, v7}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 99
    :cond_5
    return-object v3
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B
    .locals 3

    .prologue
    .line 117
    new-instance v1, Lorg/xbill/DNS/TCPClient;

    invoke-direct {v1, p3, p4}, Lorg/xbill/DNS/TCPClient;-><init>(J)V

    .line 119
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/xbill/DNS/TCPClient;->bind(Ljava/net/SocketAddress;)V

    .line 121
    :cond_0
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 122
    invoke-virtual {v1, p2}, Lorg/xbill/DNS/TCPClient;->send([B)V

    .line 123
    invoke-virtual {v1}, Lorg/xbill/DNS/TCPClient;->recv()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 126
    invoke-virtual {v1}, Lorg/xbill/DNS/TCPClient;->cleanup()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/xbill/DNS/TCPClient;->cleanup()V

    throw v0
.end method

.method static sendrecv(Ljava/net/SocketAddress;[BJ)[B
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/xbill/DNS/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 20
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 21
    return-void
.end method

.method connect(Ljava/net/SocketAddress;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 30
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v2, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_3
    throw v0

    .line 36
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method

.method recv()[B
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/TCPClient;->_recv(I)[B

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 106
    invoke-direct {p0, v0}, Lorg/xbill/DNS/TCPClient;->_recv(I)[B

    move-result-object v1

    .line 107
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 108
    const-string/jumbo v2, "TCP read"

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 109
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 108
    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TCPClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 110
    return-object v1
.end method

.method send([B)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 44
    const-string/jumbo v1, "TCP write"

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 45
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    .line 44
    invoke-static {v1, v3, v4, p1}, Lorg/xbill/DNS/TCPClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 46
    new-array v1, v6, [B

    .line 47
    array-length v3, p1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 48
    array-length v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 49
    new-array v3, v6, [Ljava/nio/ByteBuffer;

    .line 50
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v3, v5

    .line 53
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    move v1, v2

    .line 55
    :cond_0
    :goto_0
    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_4

    .line 56
    iget-object v4, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 58
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 59
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    throw v0

    .line 60
    :cond_2
    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 61
    :try_start_1
    array-length v4, p1

    add-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 63
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 65
    :cond_3
    iget-object v4, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v6, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v4, v6, v7}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 72
    :cond_5
    return-void
.end method
