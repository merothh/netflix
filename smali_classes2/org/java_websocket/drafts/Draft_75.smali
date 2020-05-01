.class public Lorg/java_websocket/drafts/Draft_75;
.super Lorg/java_websocket/drafts/Draft;
.source "Draft_75.java"


# instance fields
.field protected currentFrame:Ljava/nio/ByteBuffer;

.field private inframe:Z

.field protected readingState:Z

.field protected readyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end field

.field private final reuseableRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft;-><init>()V

    iput-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    iput-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->inframe:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->readyframes:Ljava/util/List;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->reuseableRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 2

    const-string/jumbo v0, "WebSocket-Origin"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Origin"

    invoke-interface {p2, v1}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/java_websocket/drafts/Draft_75;->basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    const-string/jumbo v0, "Origin"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_75;->basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public copyInstance()Lorg/java_websocket/drafts/Draft;
    .locals 1

    new-instance v0, Lorg/java_websocket/drafts/Draft_75;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_75;-><init>()V

    return-object v0
.end method

.method public createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "only text frames supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    sget v0, Lorg/java_websocket/drafts/Draft_75;->INITIAL_FAMESIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0}, Lorg/java_websocket/framing/FramedataImpl1;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/java_websocket/framing/FrameBuilder;->setFin(Z)V

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v1}, Lorg/java_websocket/framing/FrameBuilder;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    invoke-interface {v0, p2}, Lorg/java_websocket/framing/FrameBuilder;->setTransferemasked(Z)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v1, v0}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    sget-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public increaseBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .locals 3

    const-string/jumbo v0, "Upgrade"

    const-string/jumbo v1, "WebSocket"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Upgrade"

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Origin"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->hasFieldValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Origin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "random"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 2

    const-string/jumbo v0, "Web Socket Protocol Handshake"

    invoke-interface {p2, v0}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    const-string/jumbo v0, "Upgrade"

    const-string/jumbo v1, "WebSocket"

    invoke-interface {p2, v0, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Connection"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "WebSocket-Origin"

    const-string/jumbo v1, "Origin"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Host"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WebSocket-Location"

    invoke-interface {p2, v1, v0}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_75;->translateRegularFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected translateRegularFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iput-boolean v4, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {v2}, Lorg/java_websocket/framing/FramedataImpl1;-><init>()V

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2, v4}, Lorg/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    iget-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->inframe:Z

    if-eqz v0, :cond_4

    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    :goto_2
    invoke-virtual {v2, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->readyframes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :cond_3
    iput-boolean v3, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    iput-boolean v3, p0, Lorg/java_websocket/drafts/Draft_75;->inframe:Z

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_75;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    :cond_6
    :goto_3
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lorg/java_websocket/drafts/Draft_75;->increaseBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->readingState:Z

    if-eqz v0, :cond_a

    new-instance v2, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {v2}, Lorg/java_websocket/framing/FramedataImpl1;-><init>()V

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2, v3}, Lorg/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    iget-boolean v0, p0, Lorg/java_websocket/drafts/Draft_75;->inframe:Z

    if-eqz v0, :cond_b

    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    :goto_4
    invoke-virtual {v2, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    iput-boolean v4, p0, Lorg/java_websocket/drafts/Draft_75;->inframe:Z

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->readyframes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_75;->readyframes:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_75;->readyframes:Ljava/util/List;

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_75;->currentFrame:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_4
.end method
