.class public Lorg/java_websocket/SocketChannelIOHelper;
.super Ljava/lang/Object;
.source "SocketChannelIOHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/java_websocket/SocketChannelIOHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/SocketChannelIOHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {p2, p0}, Lorg/java_websocket/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v0

    goto :goto_0
.end method

.method public static writeBlocking(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lorg/java_websocket/SocketChannelIOHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/nio/channels/spi/AbstractSelectableChannel;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lorg/java_websocket/SocketChannelIOHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/java_websocket/WrappedByteChannel;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v0}, Lorg/java_websocket/WrappedByteChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    return-void
.end method
