.class Lcom/netflix/msl/msg/MslControl$ErrorService;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private final msgCtx:Lcom/netflix/msl/msg/MessageContext;

.field private final out:Ljava/io/OutputStream;

.field private final request:Lcom/netflix/msl/msg/MessageInputStream;

.field final synthetic this$0:Lcom/netflix/msl/msg/MslControl;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$ApplicationError;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p6}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Error service created for an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    iput-object p4, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    iput-object p5, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->out:Ljava/io/OutputStream;

    iput-object p6, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->msgCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v3

    :try_start_0
    sget-object v0, Lcom/netflix/msl/msg/MslControl$1;->$SwitchMap$com$netflix$msl$msg$MslControl$ApplicationError:[I

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/MslControl$ApplicationError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled application error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->appError:Lcom/netflix/msl/msg/MslControl$ApplicationError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    :goto_1
    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->request:Lcom/netflix/msl/msg/MessageInputStream;

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->getLanguages()Ljava/util/List;

    move-result-object v0

    :goto_3
    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v5}, Lcom/netflix/msl/msg/MslControl;->access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Lcom/netflix/msl/msg/ErrorMessageRegistry;->getUserMessage(Lcom/netflix/msl/MslError;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v4, v3, v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->this$0:Lcom/netflix/msl/msg/MslControl;

    invoke-static {v1}, Lcom/netflix/msl/msg/MslControl;->access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl$ErrorService;->out:Ljava/io/OutputStream;

    sget-object v4, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/netflix/msl/msg/MessageStreamFactory;->createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MessageOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->close()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/msl/MslError;->ENTITY_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    :goto_4
    move-object v1, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/netflix/msl/MslError;->USER_REJECTED_BY_APP:Lcom/netflix/msl/MslError;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netflix/msl/msg/MslControl;->cancelled(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error building the error response."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MslControl$ErrorService;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
