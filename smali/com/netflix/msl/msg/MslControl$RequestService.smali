.class Lcom/netflix/msl/msg/MslControl$RequestService;
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
.field private builder:Lcom/netflix/msl/msg/MessageBuilder;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private in:Ljava/io/InputStream;

.field private maxMessagesHit:Z

.field private final msgCount:I

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private openedStreams:Z

.field private out:Ljava/io/OutputStream;

.field private final remoteEntity:Lcom/netflix/msl/io/Url;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iput p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    iput v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;Lcom/netflix/msl/msg/MessageBuilder;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iput p6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iput p6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    iput v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iput p7, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    iput p8, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    return-void
.end method

.method private execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 10

    const/4 v6, 0x1

    const/4 v9, 0x0

    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-boolean v6, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    move-object v0, v9

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iget-boolean v7, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    move-object v2, p1

    move-object v5, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lcom/netflix/msl/msg/MslControl;->access$1100(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    move-result-object v0

    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    iget-object v8, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->response:Lcom/netflix/msl/msg/MessageInputStream;

    add-int/lit8 v7, p4, 0x2

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v4

    if-nez v4, :cond_7

    :try_start_0
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v2, v3, p1, v0, v1}, Lcom/netflix/msl/msg/MslControl;->access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v9}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v9

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iget-object v3, v0, Lcom/netflix/msl/msg/MslControl$ErrorResult;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;Lcom/netflix/msl/msg/MessageBuilder;II)V

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v1

    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    move-object v0, v1

    :goto_1
    iget-boolean v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->maxMessagesHit:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;

    if-nez v1, :cond_0

    :cond_5
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v9}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3, v5, p3, v7}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v2}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    :try_start_3
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    new-instance v3, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v3, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v0, v1, p1, v4}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v5

    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;Lcom/netflix/msl/msg/MessageBuilder;II)V

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v9

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v9

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v0, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;->handshake:Z

    if-eqz v0, :cond_e

    :try_start_4
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_c
    :try_start_5
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_d
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p1}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v1, v2, p1, v4}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, v7}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v9

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v9

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    if-eqz v0, :cond_14

    :cond_f
    new-instance v2, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;

    invoke-direct {v2, p1}, Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-static {v0, v3, v2, v4}, Lcom/netflix/msl/msg/MslControl;->access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v4

    :try_start_6
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->isHandshake()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_11

    :try_start_7
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    iget-boolean v5, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl;->access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v1

    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    iget-object v1, v1, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, v8, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_11
    :try_start_a
    invoke-virtual {v1}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_12
    :try_start_b
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_13
    :try_start_c
    invoke-direct {p0, v2, v4, p3, v7}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    move-object v0, v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    invoke-direct {v0, v8, v1}, Lcom/netflix/msl/msg/MslControl$MslChannel;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MessageOutputStream;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public call()Lcom/netflix/msl/msg/MslControl$MslChannel;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    iget v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    invoke-interface {v0, v2}, Lcom/netflix/msl/io/Url;->setTimeout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->remoteEntity:Lcom/netflix/msl/io/Url;

    invoke-interface {v0}, Lcom/netflix/msl/io/Url;->openConnection()Lcom/netflix/msl/io/Url$Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/msl/io/Url$Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    new-instance v4, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;

    invoke-direct {v4, p0, v0}, Lcom/netflix/msl/msg/MslControl$RequestService$DelayedInputStream;-><init>(Lcom/netflix/msl/msg/MslControl$RequestService;Lcom/netflix/msl/io/Url$Connection;)V

    iput-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    iget v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v2, v2

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-static {v2, v3, v4}, Lcom/netflix/msl/msg/MslControl;->access$1300(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    iget v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->msgCount:I

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/netflix/msl/msg/MslControl$RequestService;->execute(Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;II)Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->output:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->stopCaching()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v4, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_5

    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_6
    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->this$0:Lcom/netflix/msl/msg/MslControl;

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->builder:Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;->access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_7
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_8

    :try_start_5
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    :try_start_6
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    :cond_9
    :goto_5
    throw v0

    :cond_a
    iget v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->timeout:I

    goto :goto_0

    :catch_2
    move-exception v0

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    if-eqz v0, :cond_b

    :try_start_7
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    :goto_6
    :try_start_8
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    :cond_b
    :goto_7
    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    if-eqz v0, :cond_c

    :try_start_9
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :goto_8
    :try_start_a
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :cond_c
    :goto_9
    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_a
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->openedStreams:Z

    if-eqz v2, :cond_d

    :try_start_b
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$RequestService;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_d
    :goto_c
    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    goto/16 :goto_1

    :cond_e
    throw v0

    :catch_5
    move-exception v2

    goto :goto_c

    :catch_6
    move-exception v2

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v0

    goto :goto_9

    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_7

    :catch_d
    move-exception v0

    goto :goto_6

    :catch_e
    move-exception v1

    goto :goto_5

    :catch_f
    move-exception v1

    goto :goto_4

    :catch_10
    move-exception v2

    goto/16 :goto_3

    :catch_11
    move-exception v2

    goto/16 :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$RequestService;->call()Lcom/netflix/msl/msg/MslControl$MslChannel;

    move-result-object v0

    return-object v0
.end method
