.class public Lcom/netflix/msl/msg/MslControl;
.super Ljava/lang/Object;
.source "MslControl.java"


# instance fields
.field private final NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

.field private final masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final messageRegistry:Lcom/netflix/msl/msg/ErrorMessageRegistry;

.field private final renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/msl/msg/MslControl;-><init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V

    return-void
.end method

.method public constructor <init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V
    .locals 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of threads must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl;->streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;

    if-eqz p3, :cond_2

    :goto_1
    iput-object p3, p0, Lcom/netflix/msl/msg/MslControl;->messageRegistry:Lcom/netflix/msl/msg/ErrorMessageRegistry;

    if-lez p1, :cond_3

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    :goto_2
    :try_start_0
    new-instance v1, Lcom/netflix/msl/msg/MslControl$DummyMslContext;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/netflix/msl/msg/MslControl$DummyMslContext;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v10, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "HmacSHA256"

    invoke-direct {v11, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v0, Lcom/netflix/msl/tokens/MasterToken;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x1

    new-instance v8, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v8}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v9, "dummy"

    invoke-direct/range {v0 .. v11}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/util/Date;Ljava/util/Date;JJLcom/netflix/android/org/json/JSONObject;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    new-instance p2, Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-direct {p2}, Lcom/netflix/msl/msg/MessageStreamFactory;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/netflix/msl/msg/MslControl$DummyMessageRegistry;

    invoke-direct {p3, v1}, Lcom/netflix/msl/msg/MslControl$DummyMessageRegistry;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;

    invoke-direct {v0, v1}, Lcom/netflix/msl/msg/MslControl$SynchronousExecutor;-><init>(Lcom/netflix/msl/msg/MslControl$1;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception when constructing dummy master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception when constructing dummy master token."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$1000(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/netflix/msl/msg/MslControl;->getIdentity(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/netflix/msl/msg/MslControl;->sendReceive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MslControl;->buildErrorResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->buildRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MslControl;->receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/ErrorMessageRegistry;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->messageRegistry:Lcom/netflix/msl/msg/ErrorMessageRegistry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/msl/msg/MslControl;)Lcom/netflix/msl/msg/MessageStreamFactory;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->streamFactory:Lcom/netflix/msl/msg/MessageStreamFactory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/msg/MslControl;->buildResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/netflix/msl/msg/MslControl;->send(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    return-void
.end method

.method private acquireRenewalLock(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageBuilder;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            ">;",
            "Lcom/netflix/msl/msg/MessageBuilder;",
            "J)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_2

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    if-nez v0, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isRequestingTokens()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_5

    if-eqz v6, :cond_10

    if-nez v0, :cond_10

    :cond_5
    move-object v2, v0

    move-object v3, v1

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_7

    move v0, v4

    :goto_1
    return v0

    :cond_7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p5, p6, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/MasterToken;

    if-nez v1, :cond_8

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v1, "acquireRenewalLock timed out."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    if-eq v1, v0, :cond_6

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v3, v0

    goto :goto_0

    :cond_a
    move-object v1, v0

    :goto_2
    if-eqz v6, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    if-eqz v2, :cond_15

    invoke-virtual {v2, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_c
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_3
    invoke-virtual {p4, v1, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    :cond_e
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_f
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isRequestingTokens()Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v0, :cond_10

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Lcom/netflix/msl/tokens/MasterToken;->isRenewable(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez v0, :cond_11

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_11
    if-eqz v0, :cond_14

    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isRenewable(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_13

    move v0, v4

    goto/16 :goto_1

    :cond_13
    move v0, v5

    goto/16 :goto_1

    :cond_14
    move v0, v5

    goto/16 :goto_1

    :cond_15
    move-object v0, v2

    goto :goto_3

    :cond_16
    move-object v1, v3

    goto :goto_2
.end method

.method private buildErrorResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$SendResult;Lcom/netflix/msl/msg/ErrorHeader;)Lcom/netflix/msl/msg/MslControl$ErrorResult;
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p3, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v8

    iget-object v0, p3, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageOutputStream;->getPayloads()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v0

    sget-object v2, Lcom/netflix/msl/msg/MslControl$1;->$SwitchMap$com$netflix$msl$MslConstants$ResponseCode:[I

    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$ResponseCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    invoke-static {v0}, Lcom/netflix/msl/util/MslContext$ReauthCode;->valueOf(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/util/MslContext$ReauthCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    new-instance v6, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v6, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    :cond_1
    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v6}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported response code mapping onto entity re-authentication codes."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->valueOf(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p2, v0, v2, v3}, Lcom/netflix/msl/msg/MessageContext;->getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v6

    new-instance v0, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v0, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    :cond_2
    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported response code mapping onto user re-authentication codes."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_3
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    new-instance v6, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v6, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    :cond_3
    invoke-virtual {v0, v10}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    invoke-interface {v6}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v6}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    if-eqz v0, :cond_8

    invoke-interface {v2, v0}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    new-instance v7, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v7, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    :cond_5
    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v6}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {v0, v10}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    :cond_7
    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v7}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1

    :cond_9
    move-object v2, v1

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    if-eqz v0, :cond_c

    invoke-interface {v2, v0}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v0, v6}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v1, v0

    :cond_a
    move-object v2, v1

    :goto_4
    invoke-virtual {p4}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    new-instance v7, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;

    invoke-direct {v7, v9, p2}, Lcom/netflix/msl/msg/MslControl$ResendMessageContext;-><init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V

    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v8}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/msg/MessageBuilder;->setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    :cond_b
    invoke-interface {v7}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    new-instance v1, Lcom/netflix/msl/msg/MslControl$ErrorResult;

    invoke-direct {v1, v0, v7}, Lcom/netflix/msl/msg/MslControl$ErrorResult;-><init>(Lcom/netflix/msl/msg/MessageBuilder;Lcom/netflix/msl/msg/MessageContext;)V

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_3

    :cond_d
    move-object v2, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private buildRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    :try_start_0
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "User ID token not bound to master token despite internal check."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v0
.end method

.method private buildResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1, p3}, Lcom/netflix/msl/msg/MessageBuilder;->createResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl;->getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-interface {v4, v0}, Lcom/netflix/msl/util/MslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method protected static cancelled(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :cond_2
    if-eqz p0, :cond_4

    instance-of v1, p0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_3

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_0

    :cond_3
    instance-of v1, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 2

    sget-object v0, Lcom/netflix/msl/msg/MslControl$1;->$SwitchMap$com$netflix$msl$MslConstants$ResponseCode:[I

    invoke-virtual {p3}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$ResponseCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/msl/util/MslStore;->removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    invoke-direct {v2, p1, p2}, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/msl/util/MslStore;->removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private static getIdentity(Lcom/netflix/msl/msg/MessageInputStream;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "This method should not be called with an error message."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNewestMasterToken(Lcom/netflix/msl/util/MslContext;)Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/msl/util/MslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    new-instance v4, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    invoke-direct {v4, p1, v2}, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz v0, :cond_1

    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    invoke-interface {v3}, Lcom/netflix/msl/util/MslStore;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public static getStringFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [C

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "IOException!"

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;
    .locals 14

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->getCryptoContexts()Ljava/util/Map;

    move-result-object v7

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/netflix/msl/msg/FilterStreamFactory;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    :goto_0
    :try_start_0
    new-instance v2, Lcom/netflix/msl/msg/MessageInputStream;

    sget-object v5, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/msg/MessageInputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_4

    move-object v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/netflix/msl/msg/MessageDebugContext;->receivedHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v8

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v7

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v6

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v3

    move-object v9, v6

    move-object v10, v7

    move-object v11, v8

    move-object v8, v3

    :goto_2
    if-eqz p4, :cond_8

    if-eqz v5, :cond_6

    :try_start_1
    invoke-virtual {v5}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v3

    :goto_3
    if-nez v4, :cond_2

    sget-object v6, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v3, v6, :cond_8

    sget-object v6, Lcom/netflix/msl/MslConstants$ResponseCode;->TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v3, v6, :cond_8

    sget-object v6, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v3, v6, :cond_8

    sget-object v6, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v3, v6, :cond_8

    :cond_2
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v6

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v12

    cmp-long v3, v6, v12

    if-eqz v3, :cond_8

    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lcom/netflix/msl/MslError;->UNEXPECTED_RESPONSE_MESSAGE_ID:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2, v11}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    invoke-virtual {v2, v10}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    invoke-virtual {v2, v9}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    invoke-virtual {v2, v8}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    throw v2

    :cond_3
    move-object/from16 v4, p3

    goto/16 :goto_0

    :catch_1
    move-exception v2

    throw v2

    :cond_4
    move-object v3, v5

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v9, v6

    move-object v10, v7

    move-object v11, v8

    move-object v8, v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-virtual {v5}, Lcom/netflix/msl/msg/ErrorHeader;->getMessageId()J

    move-result-wide v6

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_16

    if-eqz v11, :cond_b

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getSender()Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v11}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNEXPECTED_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v4, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-virtual {v10}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getRecipient()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v4, Lcom/netflix/msl/MslError;->MESSAGE_RECIPIENT_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2

    :cond_d
    if-eqz p4, :cond_e

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0, v2}, Lcom/netflix/msl/msg/MslControl;->updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/MessageInputStream;)V

    :cond_e
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v6

    if-nez v6, :cond_14

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    :goto_6
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v6

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v3

    :goto_7
    invoke-interface/range {p2 .. p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v13

    invoke-interface {v13, v12, v6}, Lcom/netflix/msl/util/MslStore;->addUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/UserIdToken;)V

    :cond_f
    invoke-static {p1, v7, v6, v3}, Lcom/netflix/msl/msg/MslControl;->storeServiceTokens(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V

    :cond_10
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    :goto_8
    if-eqz v3, :cond_12

    if-nez p4, :cond_11

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    invoke-virtual {p1, v3}, Lcom/netflix/msl/util/MslContext;->updateRemoteTime(Ljava/util/Date;)V

    :cond_12
    return-object v2

    :cond_13
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    goto :goto_6

    :cond_14
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    :goto_9
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v6

    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v3

    goto :goto_7

    :cond_15
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    goto :goto_9

    :cond_16
    invoke-virtual {v5}, Lcom/netflix/msl/msg/ErrorHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v4, Lcom/netflix/msl/MslError;->UNEXPECTED_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v4, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-virtual {v5}, Lcom/netflix/msl/msg/ErrorHeader;->getTimestamp()Ljava/util/Date;
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_8
.end method

.method private releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;

    invoke-direct {v0, p1, p2}, Lcom/netflix/msl/msg/MslControl$MslContextMasterTokenKey;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->masterTokenLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method private releaseRenewalLock(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            ">;",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempt to release renewal lock that is not owned by this queue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->renewingContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->NULL_MASTER_TOKEN:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private send(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v4

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v5

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    if-nez v4, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v6

    invoke-interface {p2, v7, v6, v0}, Lcom/netflix/msl/msg/MessageContext;->getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptHeader()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectHeader()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/msg/MessageBuilder;

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v6

    if-eqz v6, :cond_10

    if-nez v5, :cond_10

    :cond_1
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {p4, v5}, Lcom/netflix/msl/msg/MessageBuilder;->setUser(Lcom/netflix/msl/tokens/MslUser;)V

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v4

    move-object v5, v4

    :goto_2
    if-nez v0, :cond_8

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willEncryptPayloads()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->willIntegrityProtectPayloads()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isNonReplayable()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    :cond_4
    move v0, v1

    :goto_3
    if-nez v0, :cond_9

    move v6, v1

    :goto_4
    invoke-virtual {p4, v6}, Lcom/netflix/msl/msg/MessageBuilder;->setHandshake(Z)Lcom/netflix/msl/msg/MessageBuilder;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->isRenewable()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getRemoteTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Lcom/netflix/msl/tokens/MasterToken;->isRenewable(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_5
    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getKeyRequestData()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    invoke-virtual {p4, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addKeyRequestData(Lcom/netflix/msl/keyx/KeyRequestData;)Lcom/netflix/msl/msg/MessageBuilder;

    goto :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v6, v2

    goto :goto_4

    :cond_a
    new-instance v0, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;

    invoke-direct {v0, p1, p2, p4}, Lcom/netflix/msl/msg/MessageServiceTokenBuilder;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MessageBuilder;)V

    invoke-interface {p2, v0, v6}, Lcom/netflix/msl/msg/MessageContext;->updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V

    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v4

    invoke-interface {p2}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, v4}, Lcom/netflix/msl/msg/MessageDebugContext;->sentHeader(Lcom/netflix/msl/msg/Header;)V

    :cond_b
    invoke-virtual {p4}, Lcom/netflix/msl/msg/MessageBuilder;->getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v1

    invoke-direct {p0, p1, v4, v1}, Lcom/netflix/msl/msg/MslControl;->updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V

    if-eqz v1, :cond_d

    iget-object v0, v1, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    :goto_6
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, v0, v5, v2}, Lcom/netflix/msl/msg/MslControl;->storeServiceTokens(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    iget-object v5, v1, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    :goto_7
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    invoke-interface {v0, p3}, Lcom/netflix/msl/msg/FilterStreamFactory;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    :goto_8
    new-instance v0, Lcom/netflix/msl/msg/MessageOutputStream;

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/msg/MessageOutputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)V

    invoke-virtual {v0, p5}, Lcom/netflix/msl/msg/MessageOutputStream;->closeDestination(Z)V

    if-nez v6, :cond_c

    invoke-interface {p2, v0}, Lcom/netflix/msl/msg/MessageContext;->write(Lcom/netflix/msl/msg/MessageOutputStream;)V

    :cond_c
    new-instance v1, Lcom/netflix/msl/msg/MslControl$SendResult;

    invoke-direct {v1, v0, v6, v7}, Lcom/netflix/msl/msg/MslControl$SendResult;-><init>(Lcom/netflix/msl/msg/MessageOutputStream;ZLcom/netflix/msl/msg/MslControl$1;)V

    return-object v1

    :cond_d
    move-object v0, v3

    goto :goto_6

    :cond_e
    invoke-virtual {v4}, Lcom/netflix/msl/msg/MessageHeader;->getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v5

    goto :goto_7

    :cond_f
    move-object v2, p3

    goto :goto_8

    :cond_10
    move-object v5, v4

    goto/16 :goto_2

    :cond_11
    move v0, v2

    goto/16 :goto_1
.end method

.method private sendReceive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;ZZI)Lcom/netflix/msl/msg/MslControl$SendReceiveResult;
    .locals 13

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v6, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    move/from16 v0, p8

    int-to-long v8, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/netflix/msl/msg/MslControl;->acquireRenewalLock(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageBuilder;J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/netflix/msl/msg/MessageBuilder;->setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-direct/range {v7 .. v12}, Lcom/netflix/msl/msg/MslControl;->send(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageBuilder;Z)Lcom/netflix/msl/msg/MslControl$SendResult;

    move-result-object v5

    iget-object v2, v5, Lcom/netflix/msl/msg/MslControl$SendResult;->request:Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageOutputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v7

    if-nez p6, :cond_0

    iget-boolean v8, v5, Lcom/netflix/msl/msg/MslControl$SendResult;->handshake:Z

    if-nez v8, :cond_0

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    move-object/from16 v0, p3

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/netflix/msl/msg/MslControl;->receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageInputStream;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/netflix/msl/msg/MessageInputStream;->closeSource(Z)V

    invoke-virtual {v3}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-direct {p0, p1, v2, v7}, Lcom/netflix/msl/msg/MslControl;->cleanupContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/ErrorHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v6, v3}, Lcom/netflix/msl/msg/MslControl;->releaseRenewalLock(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageInputStream;)V

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    new-instance v2, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;

    invoke-direct {v2, v3, v5}, Lcom/netflix/msl/msg/MslControl$SendReceiveResult;-><init>(Lcom/netflix/msl/msg/MessageInputStream;Lcom/netflix/msl/msg/MslControl$SendResult;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v2

    :catchall_0
    move-exception v2

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v6, v3}, Lcom/netflix/msl/msg/MslControl;->releaseRenewalLock(Lcom/netflix/msl/util/MslContext;Ljava/util/concurrent/BlockingQueue;Lcom/netflix/msl/msg/MessageInputStream;)V

    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/msl/msg/MessageBuilder;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/netflix/msl/msg/MslControl;->releaseMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v2

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static storeServiceTokens(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v1, v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    :goto_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    :goto_2
    invoke-interface {v3, v6, v1, v0}, Lcom/netflix/msl/util/MslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v3, v4}, Lcom/netflix/msl/util/MslStore;->addServiceTokens(Ljava/util/Set;)V

    return-void
.end method

.method private updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v2, p3, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->cryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/netflix/msl/util/MslStore;->setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    :cond_0
    return-void
.end method

.method private updateCryptoContexts(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/msg/MessageInputStream;)V
    .locals 3

    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-virtual {p3}, Lcom/netflix/msl/msg/MessageInputStream;->getKeyExchangeCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/MslStore;->setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    invoke-virtual {p2}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/msg/MslControl;->deleteMasterToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    goto :goto_0
.end method


# virtual methods
.method public error(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$ApplicationError;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Lcom/netflix/msl/msg/MslControl$ApplicationError;",
            "Ljava/io/OutputStream;",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p5}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Request message input stream cannot be for an error message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$ErrorService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MslControl$ErrorService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/msg/MslControl$ApplicationError;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public receive(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/netflix/msl/msg/MslControl$ReceiveService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MslControl$ReceiveService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Lcom/netflix/msl/io/Url;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method cannot be used in peer-to-peer mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method cannot be used in trusted network mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RequestService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/msl/msg/MslControl$RequestService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public respond(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;I)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Lcom/netflix/msl/msg/MessageContext;",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Lcom/netflix/msl/msg/MessageInputStream;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p5}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Request message input stream cannot be for an error message."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netflix/msl/msg/MslControl$RespondService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/msl/msg/MslControl$RespondService;-><init>(Lcom/netflix/msl/msg/MslControl;Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageInputStream;I)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setFilterFactory(Lcom/netflix/msl/msg/FilterStreamFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl;->filterFactory:Lcom/netflix/msl/msg/FilterStreamFactory;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
