.class Lcom/netflix/msl/msg/MslControl$RespondService;
.super Ljava/lang/Object;
.source "MslControl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/netflix/msl/msg/MslControl$MslChannel;",
        ">;"
    }
.end annotation


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final in:Ljava/io/InputStream;

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private final out:Ljava/io/OutputStream;

.field private final request:Lcom/netflix/msl/msg/MessageInputStream;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;I)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p6}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Respond service created for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->in:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->timeout:I

    return-void
.end method

.method private peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v0

    add-int/lit8 v1, p3, 0x2

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v3, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v9

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Response wishes to attach a user ID token but there is no master token."

    invoke-direct {v1, v2, v0, v9}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    iget v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->timeout:I

    move-object v2, p1

    move-object v5, p2

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    move-result-object v1

    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    add-int/lit8 v2, p3, 0x2

    if-nez v0, :cond_4

    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    if-nez v3, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v3, v4, p1, v1, v0}, Lcom/netflix/msl/msg/MslControl;->access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v9

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v9

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-eqz v4, :cond_9

    :try_start_2
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v1, v4, v0, v3}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v9

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0
.end method

.method private trustedNetworkExecute(Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_INTEGRITY_PROTECTION:Lcom/netflix/msl/MslError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    :try_start_2
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v6, v1, v4, v2, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_1
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_ENCRYPTION:Lcom/netflix/msl/MslError;

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v0, Lcom/netflix/msl/MslErrorResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response requires encryption or integrity protection but cannot be protected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    if-nez v1, :cond_8

    :try_start_6
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v3, :cond_6

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    :cond_7
    :try_start_8
    new-instance v0, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Response wishes to attach a user ID token but there is no master token."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v1

    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public call()Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-static {v0, v4, v5, v2}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/netflix/msl/msg/MslControl$RespondService;->trustedNetworkExecute(Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageOutputStream;->stopCaching()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v4}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v5

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v4, v6, v5, v1}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v3, :cond_3

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    throw v0

    :catch_2
    move-exception v1

    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error building the response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v3, :cond_5

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error building the response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v1

    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error building the response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    const/4 v5, 0x3

    invoke-direct {p0, v0, v4, v5}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/MslError;->MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v5, v7}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v2

    if-eqz v3, :cond_8

    invoke-interface {v3, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_8
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    throw v0

    :catch_7
    move-exception v2

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending the response."

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    :try_start_6
    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v2

    :goto_2
    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v8}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v8

    invoke-interface {v8, v4, v2}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v5, v6, v4, v2}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v2

    if-eqz v3, :cond_b

    invoke-interface {v3, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_b
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    throw v0

    :cond_c
    move-object v2, v1

    goto :goto_2

    :catch_9
    move-exception v2

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v0, v1

    goto/16 :goto_1

    :cond_d
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending the response."

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    goto/16 :goto_1

    :cond_e
    :try_start_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v5, v7}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v2

    if-eqz v3, :cond_f

    invoke-interface {v3, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_f
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error sending the response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_b
    move-exception v2

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v1

    goto/16 :goto_1

    :cond_10
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending the response."

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$RespondService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    return-object v0
.end method
