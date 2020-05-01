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

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2475
    invoke-virtual {p6}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2476
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Respond service created for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2477
    :cond_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 2478
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 2479
    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->in:Ljava/io/InputStream;

    .line 2480
    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    .line 2481
    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    .line 2482
    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->timeout:I

    .line 2483
    return-void
.end method

.method private peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 2592
    invoke-interface {p1}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v0

    .line 2597
    add-int/lit8 v1, p3, 0x2

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    .line 2694
    :goto_0
    return-object v0

    .line 2605
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

    .line 2608
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 2610
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 2611
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v2

    .line 2612
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v3, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 2613
    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2614
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v0

    .line 2615
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 2616
    goto :goto_0

    .line 2617
    :catch_0
    move-exception v0

    .line 2619
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v9

    goto :goto_0

    .line 2621
    :cond_2
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Response wishes to attach a user ID token but there is no master token."

    invoke-direct {v1, v2, v0, v9}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2629
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

    .line 2630
    iget-object v0, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    .line 2631
    add-int/lit8 v2, p3, 0x2

    .line 2635
    if-nez v0, :cond_4

    .line 2636
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0

    .line 2640
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    .line 2641
    if-nez v3, :cond_7

    .line 2644
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2653
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    .line 2654
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v3, v4, p1, v1, v0}, Lcom/netflix/msl/msg/MslControl;->access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    .line 2657
    if-nez v0, :cond_6

    move-object v0, v9

    .line 2658
    goto/16 :goto_0

    .line 2645
    :catch_1
    move-exception v3

    .line 2647
    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v9

    goto/16 :goto_0

    .line 2666
    :cond_6
    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    .line 2667
    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 2668
    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    .line 2673
    :cond_7
    iget-boolean v4, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-eqz v4, :cond_9

    .line 2676
    :try_start_2
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2686
    :cond_8
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    .line 2687
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v1, v4, v0, v3}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v1

    .line 2688
    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/msl/msg/MslControl$RespondService;->peerToPeerExecute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    .line 2677
    :catch_2
    move-exception v0

    .line 2679
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v9

    goto/16 :goto_0

    .line 2694
    :cond_9
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0
.end method

.method private trustedNetworkExecute(Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2506
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2509
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    .line 2567
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_0
    return-object v0

    .line 2516
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2517
    sget-object v1, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_INTEGRITY_PROTECTION:Lcom/netflix/msl/MslError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 2522
    :goto_1
    if-eqz v2, :cond_5

    .line 2525
    :try_start_2
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 2526
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    .line 2527
    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v6, v1, v4, v2, v5}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 2528
    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2529
    :cond_1
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    .line 2530
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2567
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    .line 2518
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v1}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2519
    sget-object v1, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_ENCRYPTION:Lcom/netflix/msl/MslError;

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 2521
    goto :goto_1

    .line 2532
    :catch_0
    move-exception v1

    .line 2534
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 2567
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    .line 2536
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

    .line 2567
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    .line 2543
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

    .line 2546
    :try_start_6
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 2547
    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    .line 2548
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 2549
    if-eqz v3, :cond_6

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2550
    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    .line 2551
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2567
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2553
    :catch_1
    move-exception v1

    .line 2555
    :try_start_7
    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 2567
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p1}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    .line 2557
    :cond_7
    :try_start_8
    new-instance v0, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v2, "Response wishes to attach a user ID token but there is no master token."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v0

    .line 2562
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    .line 2563
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v1

    .line 2564
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2567
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

    .prologue
    const/4 v1, 0x0

    .line 2711
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v3

    .line 2713
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v2

    .line 2718
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

    .line 2761
    :try_start_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2762
    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/netflix/msl/msg/MslControl$RespondService;->trustedNetworkExecute(Lcom/netflix/msl/msg/MessageBuilder;I)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    .line 2767
    :goto_0
    if-eqz v0, :cond_0

    .line 2768
    iget-object v5, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v5}, Lcom/netflix/msl/msg/MessageOutputStream;->stopCaching()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    .line 2831
    :cond_0
    :goto_1
    return-object v0

    .line 2719
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2721
    goto :goto_1

    .line 2722
    :catch_1
    move-exception v0

    .line 2724
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 2727
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v4}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 2728
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v5

    .line 2729
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    .line 2730
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v1

    .line 2731
    :cond_2
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 2732
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getMessageId()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v4, v6, v5, v1}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 2733
    if-eqz v3, :cond_3

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2734
    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    .line 2735
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2739
    throw v0

    .line 2736
    :catch_2
    move-exception v1

    .line 2737
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error building the response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    .line 2740
    :catch_3
    move-exception v0

    .line 2742
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 2745
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 2746
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 2747
    if-eqz v3, :cond_5

    invoke-interface {v3, v1}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2748
    :cond_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v1

    .line 2749
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 2753
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error building the response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2750
    :catch_4
    move-exception v1

    .line 2751
    new-instance v2, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error building the response."

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v2

    .line 2764
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

    .line 2772
    :catch_5
    move-exception v0

    move-object v0, v1

    .line 2774
    goto/16 :goto_1

    .line 2775
    :catch_6
    move-exception v0

    .line 2777
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    goto/16 :goto_1

    .line 2781
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 2782
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    .line 2783
    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/MslError;->MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v5, v7}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v2

    .line 2784
    if-eqz v3, :cond_8

    invoke-interface {v3, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2785
    :cond_8
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v2

    .line 2786
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    .line 2793
    throw v0

    .line 2787
    :catch_7
    move-exception v2

    .line 2789
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v0, v1

    goto/16 :goto_1

    .line 2791
    :cond_9
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending the response."

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2794
    :catch_8
    move-exception v0

    .line 2796
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v0, v1

    goto/16 :goto_1

    .line 2800
    :cond_a
    :try_start_6
    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v5}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 2801
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v6

    .line 2802
    invoke-virtual {v0}, Lcom/netflix/msl/MslException;->getError()Lcom/netflix/msl/MslError;

    move-result-object v4

    .line 2803
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    .line 2804
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v2

    .line 2805
    :goto_2
    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v8}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v8

    invoke-interface {v8, v4, v2}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 2806
    iget-object v8, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v5, v6, v4, v2}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v2

    .line 2807
    if-eqz v3, :cond_b

    invoke-interface {v3, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2808
    :cond_b
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v2

    .line 2809
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 2816
    throw v0

    :cond_c
    move-object v2, v1

    .line 2804
    goto :goto_2

    .line 2810
    :catch_9
    move-exception v2

    .line 2812
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v0, v1

    goto/16 :goto_1

    .line 2814
    :cond_d
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending the response."

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    .line 2817
    :catch_a
    move-exception v0

    .line 2819
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    goto/16 :goto_1

    .line 2823
    :cond_e
    :try_start_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 2824
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->decrementMessageId(J)J

    move-result-wide v4

    .line 2825
    iget-object v6, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v5, v7}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v2

    .line 2826
    if-eqz v3, :cond_f

    invoke-interface {v3, v2}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    .line 2827
    :cond_f
    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v3}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$RespondService;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v2

    .line 2828
    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    .line 2835
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error sending the response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2829
    :catch_b
    move-exception v2

    .line 2831
    invoke-static {v2}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v1

    goto/16 :goto_1

    .line 2833
    :cond_10
    new-instance v1, Lcom/netflix/msl/MslErrorResponseException;

    const-string/jumbo v3, "Error sending the response."

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/msl/MslErrorResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$RespondService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    return-object v0
.end method
