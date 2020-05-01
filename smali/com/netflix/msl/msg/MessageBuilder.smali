.class public Lcom/netflix/msl/msg/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# static fields
.field private static final EMPTY_DATA:[B


# instance fields
.field private final capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

.field private final ctx:Lcom/netflix/msl/util/MslContext;

.field private handshake:Z

.field private final keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

.field private final keyRequestData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final messageId:J

.field private nonReplayable:Z

.field private peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final peerServiceTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

.field private final recipient:Ljava/lang/String;

.field private renewable:Z

.field private final serviceTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/netflix/msl/msg/MessageBuilder;->EMPTY_DATA:[B

    return-void
.end method

.method private constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;JLcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/lang/String;",
            "J",
            "Lcom/netflix/msl/msg/MessageCapabilities;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->nonReplayable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->renewable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyRequestData:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p9, :cond_0

    if-eqz p10, :cond_1

    :cond_0
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Cannot set peer master token or peer user ID token when not in peer-to-peer mode."

    invoke-direct {v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    iput-object p2, p0, Lcom/netflix/msl/msg/MessageBuilder;->recipient:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netflix/msl/msg/MessageBuilder;->messageId:J

    iput-object p5, p0, Lcom/netflix/msl/msg/MessageBuilder;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iput-object p6, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object p7, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-eqz p12, :cond_2

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p12

    iget-object v1, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object p6

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v1

    invoke-interface {v1, p6, p7}, Lcom/netflix/msl/util/MslStore;->getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p8, :cond_4

    invoke-interface {p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object p9, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object p10, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz p12, :cond_5

    move-object/from16 v0, p12

    iget-object v1, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    :goto_2
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    invoke-interface {v2, v1, p10}, Lcom/netflix/msl/util/MslStore;->getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_2

    :cond_6
    if-eqz p11, :cond_7

    invoke-interface/range {p11 .. p11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static createErrorResponse(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/msl/MslError;Ljava/lang/String;)Lcom/netflix/msl/msg/ErrorHeader;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v4

    :goto_0
    invoke-virtual {p3}, Lcom/netflix/msl/MslError;->getResponseCode()Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v6

    invoke-virtual {p3}, Lcom/netflix/msl/MslError;->getInternalCode()I

    move-result v7

    invoke-virtual {p3}, Lcom/netflix/msl/MslError;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/netflix/msl/msg/ErrorHeader;

    move-object v1, p0

    move-object v3, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/netflix/msl/msg/ErrorHeader;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Ljava/lang/String;JLcom/netflix/msl/MslConstants$ResponseCode;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    const-wide/high16 v6, 0x20000000000000L

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    goto :goto_0
.end method

.method public static createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 14

    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v6

    new-instance v1, Lcom/netflix/msl/msg/MessageBuilder;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v13}, Lcom/netflix/msl/msg/MessageBuilder;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;JLcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V

    return-object v1
.end method

.method public static createRequest(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/lang/String;J)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 16

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v2, p4, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is outside the valid range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v8

    new-instance v3, Lcom/netflix/msl/msg/MessageBuilder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v15}, Lcom/netflix/msl/msg/MessageBuilder;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;JLcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V

    return-object v3
.end method

.method public static createResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageHeader;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 34

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v30

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/netflix/msl/msg/MessageBuilder;->incrementMessageId(J)J

    move-result-wide v6

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyRequestData()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v12, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/netflix/msl/tokens/MasterToken;->isRenewable(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/netflix/msl/tokens/MasterToken;->isExpired(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3}, Lcom/netflix/msl/msg/MessageBuilder;->issueMasterToken(Lcom/netflix/msl/util/MslContext;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v15

    :goto_1
    if-eqz v15, :cond_8

    iget-object v2, v15, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/netflix/msl/tokens/UserIdToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isRenewable(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v13, v3}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v13, v3}, Lcom/netflix/msl/tokens/TokenFactory;->renewUserIdToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v13

    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/msl/util/MslContext;->getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/msl/msg/MessageCapabilities;->intersection(Lcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/msg/MessageCapabilities;)Lcom/netflix/msl/msg/MessageCapabilities;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getServiceTokens()Ljava/util/Set;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v9

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getPeerServiceTokens()Ljava/util/Set;

    move-result-object v11

    new-instance v3, Lcom/netflix/msl/msg/MessageBuilder;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v15}, Lcom/netflix/msl/msg/MessageBuilder;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;JLcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-object v3

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v2, v3, v1}, Lcom/netflix/msl/msg/MessageBuilder;->issueMasterToken(Lcom/netflix/msl/util/MslContext;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    :cond_8
    move-object v3, v12

    goto :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->isRenewable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eqz v30, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual/range {v30 .. v30}, Lcom/netflix/msl/userauth/UserAuthenticationData;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v3, Lcom/netflix/msl/MslUserAuthException;

    sget-object v4, Lcom/netflix/msl/MslError;->USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v2}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcom/netflix/msl/MslUserAuthException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v2

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/MslUserAuthException;->setMessageId(J)Lcom/netflix/msl/MslException;

    move-result-object v2

    throw v2
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2, v12}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    invoke-virtual {v2, v13}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    throw v2

    :cond_a
    :try_start_2
    invoke-virtual {v3}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v2, v1, v8}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->authenticate(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v4, v0, v2, v3}, Lcom/netflix/msl/tokens/TokenFactory;->createUserIdToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MslUser;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v13

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/msl/msg/MessageHeader;->getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v9

    goto/16 :goto_4

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v23

    :goto_6
    new-instance v17, Lcom/netflix/msl/msg/MessageBuilder;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v29, v15

    invoke-direct/range {v17 .. v29}, Lcom/netflix/msl/msg/MessageBuilder;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;JLcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v3, v17

    goto/16 :goto_5

    :cond_e
    move-object/from16 v23, v12

    goto :goto_6
.end method

.method public static decrementMessageId(J)J
    .locals 6

    const-wide/high16 v0, 0x20000000000000L

    const-wide/16 v4, 0x0

    cmp-long v2, p0, v4

    if-ltz v2, :cond_0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v2, p0, v4

    if-nez v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    goto :goto_0
.end method

.method public static incrementMessageId(J)J
    .locals 6

    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is outside the valid range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v2, p0, v4

    if-nez v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    goto :goto_0
.end method

.method private static issueMasterToken(Lcom/netflix/msl/util/MslContext;Ljava/util/Set;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationData;",
            ")",
            "Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->getKeyExchangeFactories()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/msl/keyx/KeyExchangeFactory;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/KeyRequestData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->getScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v5

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyRequestData;->getKeyExchangeScheme()Lcom/netflix/msl/keyx/KeyExchangeScheme;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/msl/keyx/KeyExchangeScheme;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {v1, p0, v0, p2}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v1, p0, v0, p3}, Lcom/netflix/msl/keyx/KeyExchangeFactory;->generateResponse(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/keyx/KeyRequestData;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslKeyExchangeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netflix/msl/MslMasterTokenException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    throw v0

    :catch_1
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    throw v0

    :catch_2
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    throw v0

    :catch_3
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    throw v0

    :catch_4
    move-exception v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    throw v0

    :cond_3
    move-object v2, v0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_a

    instance-of v0, v2, Lcom/netflix/msl/MslCryptoException;

    if-eqz v0, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/netflix/msl/MslCryptoException;

    throw v0

    :cond_5
    instance-of v0, v2, Lcom/netflix/msl/MslKeyExchangeException;

    if-eqz v0, :cond_6

    check-cast v2, Lcom/netflix/msl/MslKeyExchangeException;

    throw v2

    :cond_6
    instance-of v0, v2, Lcom/netflix/msl/MslEncodingException;

    if-eqz v0, :cond_7

    check-cast v2, Lcom/netflix/msl/MslEncodingException;

    throw v2

    :cond_7
    instance-of v0, v2, Lcom/netflix/msl/MslMasterTokenException;

    if-eqz v0, :cond_8

    check-cast v2, Lcom/netflix/msl/MslMasterTokenException;

    throw v2

    :cond_8
    instance-of v0, v2, Lcom/netflix/msl/MslEntityAuthException;

    if-eqz v0, :cond_9

    check-cast v2, Lcom/netflix/msl/MslEntityAuthException;

    throw v2

    :cond_9
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Unexpected exception caught during key exchange."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/netflix/msl/MslKeyExchangeException;

    sget-object v1, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslKeyExchangeException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addKeyRequestData(Lcom/netflix/msl/keyx/KeyRequestData;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyRequestData:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot set peer service tokens when not in peer-to-peer mode."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {p1, v0}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "st "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {p1, v0}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "st "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; uit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addPeerServiceTokenIfAbsent(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;

    :cond_0
    return-object p0
.end method

.method public addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 5

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    iget-object v0, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "st "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; mt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {p1, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/netflix/msl/MslMessageException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "st "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; uit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addServiceTokenIfAbsent(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;

    :cond_0
    return-object p0
.end method

.method public deletePeerServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    :goto_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    :goto_2
    :try_start_0
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v3, Lcom/netflix/msl/msg/MessageBuilder;->EMPTY_DATA:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/netflix/msl/crypto/NullCryptoContext;

    invoke-direct {v8}, Lcom/netflix/msl/crypto/NullCryptoContext;-><init>()V

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    invoke-virtual {p0, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addPeerServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v5, v1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Failed to create and add empty peer service token to message."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    :goto_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    :goto_2
    :try_start_0
    new-instance v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    sget-object v3, Lcom/netflix/msl/msg/MessageBuilder;->EMPTY_DATA:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/netflix/msl/crypto/NullCryptoContext;

    invoke-direct {v8}, Lcom/netflix/msl/crypto/NullCryptoContext;-><init>()V

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;[BLcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;ZLcom/netflix/msl/MslConstants$CompressionAlgorithm;Lcom/netflix/msl/crypto/ICryptoContext;)V

    invoke-virtual {p0, v0}, Lcom/netflix/msl/msg/MessageBuilder;->addServiceToken(Lcom/netflix/msl/tokens/ServiceToken;)Lcom/netflix/msl/msg/MessageBuilder;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v5, v1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Failed to create and add empty service token to message."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public excludePeerServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public excludeServiceToken(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getHeader()Lcom/netflix/msl/msg/MessageHeader;
    .locals 14

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    iget-object v9, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    :goto_0
    new-instance v12, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->nonReplayable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->NONREPLAYABLE_MESSAGE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0

    :cond_0
    move-object v9, v13

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v1}, Lcom/netflix/msl/util/MslStore;->getNonReplayableId(Lcom/netflix/msl/tokens/MasterToken;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_1
    new-instance v0, Lcom/netflix/msl/msg/MessageHeader$HeaderData;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->recipient:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->messageId:J

    iget-boolean v5, p0, Lcom/netflix/msl/msg/MessageBuilder;->renewable:Z

    iget-boolean v6, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    iget-object v7, p0, Lcom/netflix/msl/msg/MessageBuilder;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iget-object v8, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyRequestData:Ljava/util/Set;

    iget-object v10, p0, Lcom/netflix/msl/msg/MessageBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v11, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-direct/range {v0 .. v12}, Lcom/netflix/msl/msg/MessageHeader$HeaderData;-><init>(Ljava/lang/String;JLjava/lang/Long;ZZLcom/netflix/msl/msg/MessageCapabilities;Ljava/util/Set;Lcom/netflix/msl/keyx/KeyResponseData;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v6, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-direct {v6, v2, v3, v1}, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Set;)V

    new-instance v1, Lcom/netflix/msl/msg/MessageHeader;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v3, v13}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/msl/msg/MessageHeader;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/msg/MessageHeader$HeaderData;Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;)V

    return-object v1

    :cond_2
    move-object v4, v13

    goto :goto_1
.end method

.method public getKeyExchangeData()Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->messageId:J

    return-wide v0
.end method

.method public getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getPeerServiceTokens()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public getServiceTokens()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public isHandshake()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    return v0
.end method

.method public isNonReplayable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->nonReplayable:Z

    return v0
.end method

.method public isRenewable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->renewable:Z

    return v0
.end method

.method public removeKeyRequestData(Lcom/netflix/msl/keyx/KeyRequestData;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyRequestData:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token must be bound to master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Attempt to set message builder master token when key exchange data exists as a trusted network server."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/msl/util/MslStore;->getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid master token and user ID token combination despite checking above."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->serviceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iput-object p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object p2, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    :cond_7
    return-void
.end method

.method public setHandshake(Z)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->nonReplayable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->renewable:Z

    :cond_0
    return-object p0
.end method

.method public setNonReplayable(Z)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->nonReplayable:Z

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->nonReplayable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    :cond_0
    return-object p0
.end method

.method public setPeerAuthTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Cannot set peer master token or peer user ID token when not in peer-to-peer mode."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Peer master token cannot be null when setting peer user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/msl/MslMessageException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslMessageException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v0

    throw v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/msl/util/MslStore;->getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;
    :try_end_0
    .catch Lcom/netflix/msl/MslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid peer master token and user ID token combination despite proper check."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-void
.end method

.method public setRenewable(Z)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 1

    iput-boolean p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->renewable:Z

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->renewable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->handshake:Z

    :cond_0
    return-object p0
.end method

.method public setUser(Lcom/netflix/msl/tokens/MslUser;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token or peer user ID token already exists for the remote user."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    iget-object v0, v0, Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token or peer user ID token cannot be created because no corresponding master token exists."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->getTokenFactory()Lcom/netflix/msl/tokens/TokenFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-interface {v1, v2, p1, v0}, Lcom/netflix/msl/tokens/TokenFactory;->createUserIdToken(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MslUser;Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    :goto_1
    return-void

    :cond_6
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    goto :goto_1
.end method

.method public setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/msg/MessageBuilder;
    .locals 0

    iput-object p1, p0, Lcom/netflix/msl/msg/MessageBuilder;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    return-object p0
.end method

.method public willEncryptHeader()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willEncryptPayloads()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willIntegrityProtectHeader()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->protectsIntegrity()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willIntegrityProtectPayloads()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageBuilder;->keyExchangeData:Lcom/netflix/msl/keyx/KeyExchangeFactory$KeyExchangeData;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->protectsIntegrity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
