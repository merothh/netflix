.class Lcom/netflix/msl/msg/MslControl$ReceiveService;
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
        "Lcom/netflix/msl/msg/MessageInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final in:Ljava/io/InputStream;

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private final out:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->in:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    iput p6, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->timeout:I

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/msl/msg/MessageInputStream;
    .locals 15

    const/4 v14, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v7

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->in:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/msl/msg/MslControl;->access$400(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v14

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v14

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v1, v5, v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_1

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_1
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    throw v0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v14

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v14

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error receiving the message header."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v14

    goto :goto_0

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_6

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error receiving the message header."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v14

    goto/16 :goto_0

    :cond_7
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error receiving the message header."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    :try_start_4
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v6

    goto/16 :goto_0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v14

    goto/16 :goto_0

    :cond_9
    :try_start_5
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v4, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v5, 0x0

    invoke-static {v3, v0, v2, v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v7, :cond_a

    invoke-interface {v7, v0}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_a
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error peeking into the message payloads."

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, v14

    goto/16 :goto_0

    :cond_b
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error peeking into the message payloads."

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/netflix/msl/MslException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    :try_start_7
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13

    :goto_2
    new-instance v2, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-direct {v2, v0}, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/netflix/msl/MslException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_d
    move-object v0, v14

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_9
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14

    :goto_3
    move-object v0, v14

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    if-eqz v1, :cond_e

    :try_start_b
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15

    :goto_4
    move-object v0, v14

    goto/16 :goto_0

    :cond_e
    :try_start_c
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v3

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v1

    :goto_5
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v4}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v2, v5, v3, v1}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_f

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_f
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_e
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_19

    :goto_6
    throw v0

    :cond_10
    move-object v1, v14

    goto :goto_5

    :catch_9
    move-exception v1

    :try_start_f
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result v2

    if-eqz v2, :cond_11

    :try_start_10
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16

    :goto_7
    move-object v0, v14

    goto/16 :goto_0

    :cond_11
    :try_start_11
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error creating an automatic handshake response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v1

    if-eqz v1, :cond_12

    :try_start_12
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17

    :goto_8
    move-object v0, v14

    goto/16 :goto_0

    :cond_12
    :try_start_13
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v4, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_13

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_13
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error creating an automatic handshake response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_b
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v2

    if-eqz v2, :cond_14

    :try_start_15
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_18

    :goto_9
    move-object v0, v14

    goto/16 :goto_0

    :cond_14
    :try_start_16
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error creating an automatic handshake response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catch_c
    move-exception v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_15
    move-object v0, v14

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_17
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_16
    move-object v0, v14

    goto/16 :goto_0

    :cond_17
    :try_start_18
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v5

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v1

    :goto_a
    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v6}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v2, v3, v5, v1}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_18

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_18
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_19
    throw v0

    :cond_1a
    move-object v1, v14

    goto :goto_a

    :catch_e
    move-exception v1

    :try_start_1a
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_1b
    move-object v0, v14

    goto/16 :goto_0

    :cond_1c
    :try_start_1b
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending an automatic handshake response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_1d
    move-object v0, v14

    goto/16 :goto_0

    :cond_1e
    :try_start_1c
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v5, Lcom/netflix/msl/MslError;->MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

    const/4 v6, 0x0

    invoke-static {v3, v1, v2, v5, v6}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_1f

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_1f
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :try_start_1d
    throw v0

    :catch_10
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    move-result v2

    if-eqz v2, :cond_21

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_20
    move-object v0, v14

    goto/16 :goto_0

    :cond_21
    :try_start_1e
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending an automatic handshake response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_22
    move-object v0, v14

    goto/16 :goto_0

    :cond_23
    :try_start_1f
    invoke-virtual {v6}, Lcom/netflix/msl/msg/MessageInputStream;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v5, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v6, 0x0

    invoke-static {v3, v1, v2, v5, v6}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    if-eqz v7, :cond_24

    invoke-interface {v7, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_24
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :try_start_20
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error sending an automatic handshake response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-result v2

    if-eqz v2, :cond_26

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_25
    move-object v0, v14

    goto/16 :goto_0

    :cond_26
    :try_start_21
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending an automatic handshake response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_27
    new-instance v5, Lcom/netflix/msl/msg/MslControl$RequestService;

    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v7, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v9, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->in:Ljava/io/InputStream;

    iget-object v10, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->out:Ljava/io/OutputStream;

    iget v12, p0, Lcom/netflix/msl/msg/MslControl$ReceiveService;->timeout:I

    const/4 v13, 0x1

    move-object v8, v2

    move-object v11, v4

    invoke-direct/range {v5 .. v13}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;II)V

    invoke-virtual {v5}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;

    goto/16 :goto_0

    :cond_28
    move-object v0, v14

    goto/16 :goto_0

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_3

    :catch_15
    move-exception v0

    goto/16 :goto_4

    :catch_16
    move-exception v0

    goto/16 :goto_7

    :catch_17
    move-exception v0

    goto/16 :goto_8

    :catch_18
    move-exception v0

    goto/16 :goto_9

    :catch_19
    move-exception v1

    goto/16 :goto_6
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$ReceiveService;->call()Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v0

    return-object v0
.end method
