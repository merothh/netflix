.class public Lcom/netflix/msl/msg/MessageHeader;
.super Lcom/netflix/msl/msg/Header;
.source "MessageHeader.java"


# static fields
.field private static final KEY_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field private static final KEY_HANDSHAKE:Ljava/lang/String; = "handshake"

.field private static final KEY_KEY_REQUEST_DATA:Ljava/lang/String; = "keyrequestdata"

.field private static final KEY_KEY_RESPONSE_DATA:Ljava/lang/String; = "keyresponsedata"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageid"

.field private static final KEY_NON_REPLAYABLE:Ljava/lang/String; = "nonreplayable"

.field private static final KEY_NON_REPLAYABLE_ID:Ljava/lang/String; = "nonreplayableid"

.field private static final KEY_PEER_MASTER_TOKEN:Ljava/lang/String; = "peermastertoken"

.field private static final KEY_PEER_SERVICE_TOKENS:Ljava/lang/String; = "peerservicetokens"

.field private static final KEY_PEER_USER_ID_TOKEN:Ljava/lang/String; = "peeruseridtoken"

.field private static final KEY_RECIPIENT:Ljava/lang/String; = "recipient"

.field private static final KEY_RENEWABLE:Ljava/lang/String; = "renewable"

.field private static final KEY_SENDER:Ljava/lang/String; = "sender"

.field private static final KEY_SERVICE_TOKENS:Ljava/lang/String; = "servicetokens"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_USER_AUTHENTICATION_DATA:Ljava/lang/String; = "userauthdata"

.field private static final KEY_USER_ID_TOKEN:Ljava/lang/String; = "useridtoken"

.field private static final MILLISECONDS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

.field private final entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

.field private final handshake:Z

.field private final headerdata:[B

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

.field private final keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

.field private final messageId:J

.field private final nonReplayableId:Ljava/lang/Long;

.field private final peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final peerServiceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private final peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

.field private final plaintext:[B

.field private final recipient:Ljava/lang/String;

.field private final renewable:Z

.field private final sender:Ljava/lang/String;

.field private final serviceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:[B

.field private final timestamp:Ljava/lang/Long;

.field private final user:Lcom/netflix/msl/tokens/MslUser;

.field private final userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

.field private final userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

.field private final verified:Z


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/msg/MessageHeader$HeaderData;Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 266
    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    const-wide/high16 v6, 0x20000000000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 267
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 271
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Message entity authentication data or master token must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    if-eqz p3, :cond_4

    move v2, v3

    .line 282
    :goto_0
    if-nez p3, :cond_5

    :goto_1
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 283
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 284
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->nonReplayableId:Ljava/lang/Long;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 285
    iget-boolean v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->renewable:Z

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 286
    iget-boolean v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->handshake:Z

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 287
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 288
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 289
    if-eqz v2, :cond_7

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->recipient:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 291
    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    iput-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 292
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    if-eqz v1, :cond_8

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    :goto_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 293
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 294
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 295
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 296
    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    if-eqz v1, :cond_9

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    :goto_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 297
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 298
    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 299
    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 300
    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    if-eqz v1, :cond_a

    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    :goto_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 309
    :goto_7
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v1, :cond_d

    .line 313
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_c

    .line 314
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    .line 315
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 326
    :goto_8
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_e

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v4, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 327
    :cond_3
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token must be bound to a master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v1

    move v2, v1

    goto/16 :goto_0

    :cond_5
    move-object p2, v0

    .line 282
    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    .line 288
    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    .line 289
    goto/16 :goto_3

    .line 292
    :cond_8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_4

    .line 296
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_5

    .line 300
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_6

    .line 302
    :cond_b
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 303
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    goto :goto_7

    .line 317
    :cond_c
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 318
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    goto :goto_8

    .line 321
    :cond_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 322
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_8

    .line 328
    :cond_e
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_10

    if-eqz v1, :cond_f

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v4, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 329
    :cond_f
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Peer user ID token must be bound to a peer master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_10
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_13

    .line 333
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 339
    :goto_9
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 340
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v2, :cond_12

    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 341
    :cond_12
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Master token bound service tokens must be bound to the provided master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_13
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    goto :goto_9

    .line 342
    :cond_14
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v5}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 343
    :cond_15
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token bound service tokens must be bound to the provided user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_16
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 346
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 347
    :cond_18
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Master token bound peer service tokens must be bound to the provided peer master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_19
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v4}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 349
    :cond_1a
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token bound peer service tokens must be bound to the provided peer user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1b
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "sender"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 356
    :cond_1c
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "recipient"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 357
    :cond_1d
    const-string/jumbo v0, "timestamp"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 358
    const-string/jumbo v0, "messageid"

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 359
    const-string/jumbo v2, "nonreplayable"

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_28

    move v0, v3

    :goto_a
    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 360
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "nonreplayableid"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 361
    :cond_1e
    const-string/jumbo v0, "renewable"

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 362
    const-string/jumbo v0, "handshake"

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    .line 363
    const-string/jumbo v0, "capabilities"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 364
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const-string/jumbo v0, "keyrequestdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtils;->createArray(Ljava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 365
    :cond_1f
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_20

    const-string/jumbo v0, "keyresponsedata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 366
    :cond_20
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_21

    const-string/jumbo v0, "userauthdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 367
    :cond_21
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_22

    const-string/jumbo v0, "useridtoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 368
    :cond_22
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_23

    const-string/jumbo v0, "servicetokens"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtils;->createArray(Ljava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 369
    :cond_23
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "peermastertoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 370
    :cond_24
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_25

    const-string/jumbo v0, "peeruseridtoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 371
    :cond_25
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_26

    const-string/jumbo v0, "peerservicetokens"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtils;->createArray(Ljava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_26
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_2b

    .line 384
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v2}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    .line 389
    if-nez v0, :cond_2a

    .line 390
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_29

    .line 391
    :cond_27
    new-instance v0, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v1, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMasterTokenException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslMasterTokenException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslMasterTokenException;->setMessageId(J)Lcom/netflix/msl/MslMasterTokenException;

    move-result-object v0

    throw v0

    .line 359
    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 372
    :catch_0
    move-exception v0

    .line 373
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "headerdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 374
    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 375
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 376
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 377
    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 378
    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    .line 392
    :cond_29
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, p1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    .line 420
    :goto_b
    :try_start_1
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    .line 421
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    .line 422
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_3

    .line 432
    return-void

    .line 394
    :cond_2a
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_b

    .line 398
    :cond_2b
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v2

    .line 400
    if-nez v2, :cond_2c

    .line 401
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_2

    .line 403
    :catch_1
    move-exception v0

    .line 404
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 405
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 406
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 407
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslCryptoException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 408
    throw v0

    .line 402
    :cond_2c
    :try_start_3
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2, p1, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_3
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    .line 409
    :catch_2
    move-exception v0

    .line 410
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 411
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 412
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 413
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEntityAuthException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 414
    throw v0

    .line 424
    :catch_3
    move-exception v0

    .line 425
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 426
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 427
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 428
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 429
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslCryptoException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 430
    throw v0
.end method

.method protected constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationData;Lcom/netflix/msl/tokens/MasterToken;[BLjava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationData;",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    .line 480
    if-nez p4, :cond_0

    move-object/from16 v2, p3

    :goto_0
    :try_start_0
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 481
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 482
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    .line 483
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 484
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v2
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    :catch_0
    move-exception v2

    .line 528
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    .line 529
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 530
    throw v2

    .line 480
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 487
    :cond_1
    if-eqz p4, :cond_6

    .line 489
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    .line 494
    if-nez v2, :cond_5

    .line 495
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 496
    :cond_2
    new-instance v2, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v3, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    move-object/from16 v0, p4

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v2
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :catch_1
    move-exception v2

    .line 532
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEntityAuthException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEntityAuthException;

    .line 533
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 534
    throw v2

    .line 497
    :cond_3
    :try_start_2
    new-instance v2, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object/from16 v0, p4

    invoke-direct {v2, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_1

    .line 519
    :goto_1
    :try_start_3
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_3 .. :try_end_3} :catch_1

    .line 523
    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    array-length v2, v2

    if-nez v2, :cond_8

    .line 524
    :cond_4
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lcom/netflix/msl/MslError;->HEADER_DATA_MISSING:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3, p2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    throw v2

    .line 499
    :cond_5
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 503
    :cond_6
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    .line 504
    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v3

    .line 505
    if-nez v3, :cond_7

    .line 506
    new-instance v3, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v4, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_5 .. :try_end_5} :catch_3

    .line 508
    :catch_2
    move-exception v2

    .line 509
    :try_start_6
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    .line 510
    throw v2
    :try_end_6
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_6 .. :try_end_6} :catch_1

    .line 507
    :cond_7
    :try_start_7
    move-object/from16 v0, p3

    invoke-virtual {v3, p1, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_7
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 511
    :catch_3
    move-exception v2

    .line 512
    :try_start_8
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    .line 513
    throw v2

    .line 520
    :catch_4
    move-exception v2

    .line 521
    new-instance v3, Lcom/netflix/msl/MslMessageException;

    sget-object v4, Lcom/netflix/msl/MslError;->HEADER_DATA_INVALID:Lcom/netflix/msl/MslError;

    invoke-direct {v3, v4, p2, v2}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    throw v2

    .line 525
    :cond_8
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    invoke-interface {v2, v3, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z

    .line 526
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    invoke-interface {v2, v3}, Lcom/netflix/msl/crypto/ICryptoContext;->decrypt([B)[B

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B
    :try_end_8
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_8 .. :try_end_8} :catch_1

    .line 538
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    if-nez v2, :cond_a

    .line 539
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 540
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 541
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 542
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 543
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 544
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 545
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 547
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 548
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 549
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 550
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 551
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 552
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 553
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 554
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 555
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 731
    :goto_3
    return-void

    .line 526
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 559
    :cond_a
    new-instance v9, Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v9, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 562
    :try_start_9
    new-instance v10, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v10, v9}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 566
    const-string/jumbo v2, "messageid"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 567
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    .line 568
    :cond_b
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lcom/netflix/msl/MslError;->MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headerdata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslMessageException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslMessageException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslMessageException;

    move-result-object v2

    throw v2
    :try_end_9
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    .line 569
    :catch_5
    move-exception v2

    .line 570
    new-instance v3, Lcom/netflix/msl/MslEncodingException;

    sget-object v4, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "headerdata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    .line 575
    :cond_c
    :try_start_a
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_d

    const-string/jumbo v2, "sender"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 576
    const-string/jumbo v2, "recipient"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "recipient"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 577
    const-string/jumbo v2, "timestamp"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_6
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 581
    const-string/jumbo v2, "keyresponsedata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 582
    const-string/jumbo v2, "keyresponsedata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netflix/msl/keyx/KeyResponseData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 588
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 589
    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    :goto_7
    move-object v5, v2

    .line 597
    :goto_8
    const-string/jumbo v2, "useridtoken"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v3, "useridtoken"

    .line 598
    invoke-virtual {v10, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3, v5}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_9
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 601
    const-string/jumbo v2, "userauthdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "userauthdata"

    .line 602
    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v5, v2}, Lcom/netflix/msl/userauth/UserAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v2

    :goto_a
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 606
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v2, :cond_16

    .line 607
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2}, Lcom/netflix/msl/userauth/UserAuthenticationData;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v2

    .line 608
    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;

    move-result-object v3

    .line 609
    if-nez v3, :cond_14

    .line 610
    new-instance v3, Lcom/netflix/msl/MslUserAuthException;

    sget-object v4, Lcom/netflix/msl/MslError;->USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v2}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v2}, Lcom/netflix/msl/MslUserAuthException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    move-result-object v2

    throw v2
    :try_end_a
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_a .. :try_end_a} :catch_7

    .line 634
    :catch_6
    move-exception v2

    .line 635
    new-instance v3, Lcom/netflix/msl/MslEncodingException;

    sget-object v4, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "headerdata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    .line 575
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 576
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 577
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_10
    move-object/from16 v2, p4

    .line 589
    goto/16 :goto_7

    .line 592
    :cond_11
    const/4 v2, 0x0

    :try_start_b
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    move-object/from16 v5, p4

    .line 593
    goto/16 :goto_8

    .line 598
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 602
    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    .line 611
    :cond_14
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v2

    .line 612
    :goto_b
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v6, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, p1, v2, v4, v6}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->authenticate(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    .line 621
    :goto_c
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 622
    const-string/jumbo v2, "servicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 623
    const-string/jumbo v2, "servicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v12

    .line 624
    const/4 v2, 0x0

    move v8, v2

    :goto_d
    invoke-virtual {v12}, Lcom/netflix/android/org/json/JSONArray;->length()I
    :try_end_b
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_b .. :try_end_b} :catch_7

    move-result v2

    if-ge v8, v2, :cond_18

    .line 626
    :try_start_c
    new-instance v2, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v12, v8}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    move-object v3, p1

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Map;)V

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lcom/netflix/msl/MslException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    .line 624
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_d

    .line 611
    :cond_15
    :try_start_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 613
    :cond_16
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_17

    .line 614
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;
    :try_end_d
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_c

    .line 636
    :catch_7
    move-exception v2

    .line 637
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 638
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 639
    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 640
    throw v2

    .line 616
    :cond_17
    const/4 v2, 0x0

    :try_start_e
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    goto :goto_c

    .line 627
    :catch_8
    move-exception v2

    .line 628
    invoke-virtual {v2, v5}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 629
    throw v2

    .line 633
    :cond_18
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;
    :try_end_e
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_e .. :try_end_e} :catch_7

    .line 644
    :try_start_f
    const-string/jumbo v2, "nonreplayableid"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "nonreplayableid"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_e
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 645
    const-string/jumbo v2, "renewable"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 647
    const-string/jumbo v2, "handshake"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "handshake"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_f
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 650
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 651
    :cond_19
    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lcom/netflix/msl/MslError;->NONREPLAYABLE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headerdata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_f .. :try_end_f} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_f .. :try_end_f} :catch_a

    .line 716
    :catch_9
    move-exception v2

    .line 717
    new-instance v3, Lcom/netflix/msl/MslEncodingException;

    sget-object v4, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "headerdata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    .line 719
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 720
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 721
    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 722
    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    .line 644
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 647
    :cond_1b
    const/4 v2, 0x0

    goto :goto_f

    .line 654
    :cond_1c
    :try_start_10
    const-string/jumbo v2, "capabilities"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 655
    const-string/jumbo v2, "capabilities"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    .line 656
    new-instance v3, Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-direct {v3, v2}, Lcom/netflix/msl/msg/MessageCapabilities;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    iput-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 662
    :goto_10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 663
    const-string/jumbo v2, "keyrequestdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 664
    const-string/jumbo v2, "keyrequestdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v4

    .line 665
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1e

    .line 666
    invoke-virtual {v4, v2}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netflix/msl/keyx/KeyRequestData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyRequestData;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 658
    :cond_1d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;
    :try_end_10
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_10

    .line 723
    :catch_a
    move-exception v2

    .line 724
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 725
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 726
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 727
    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 728
    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 729
    throw v2

    .line 669
    :cond_1e
    :try_start_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 672
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 674
    const-string/jumbo v2, "peermastertoken"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v3, "peermastertoken"

    .line 675
    invoke-virtual {v10, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    :goto_12
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 680
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v2, :cond_20

    .line 681
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    :try_end_11
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_11 .. :try_end_11} :catch_a

    move-result-object v5

    .line 688
    :goto_13
    :try_start_12
    const-string/jumbo v2, "peeruseridtoken"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v3, "peeruseridtoken"

    .line 689
    invoke-virtual {v10, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3, v5}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_14
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_12
    .catch Lcom/netflix/msl/MslException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_12 .. :try_end_12} :catch_9

    .line 698
    :try_start_13
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 699
    const-string/jumbo v2, "peerservicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 700
    const-string/jumbo v2, "peerservicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v11

    .line 701
    const/4 v2, 0x0

    move v8, v2

    :goto_15
    invoke-virtual {v11}, Lcom/netflix/android/org/json/JSONArray;->length()I
    :try_end_13
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_13 .. :try_end_13} :catch_a

    move-result v2

    if-ge v8, v2, :cond_22

    .line 703
    :try_start_14
    new-instance v2, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v11, v8}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    move-object v3, p1

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Ljava/util/Map;)V

    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Lcom/netflix/msl/MslException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_14 .. :try_end_14} :catch_9

    .line 701
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_15

    .line 675
    :cond_1f
    const/4 v2, 0x0

    goto :goto_12

    .line 683
    :cond_20
    :try_start_15
    iget-object v5, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_13

    .line 689
    :cond_21
    const/4 v2, 0x0

    goto :goto_14

    .line 691
    :catch_b
    move-exception v2

    .line 692
    invoke-virtual {v2, v5}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 693
    throw v2

    .line 704
    :catch_c
    move-exception v2

    .line 705
    invoke-virtual {v2, v5}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 706
    throw v2

    .line 710
    :cond_22
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    goto/16 :goto_3

    .line 712
    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 713
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 714
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;
    :try_end_15
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 968
    if-ne p0, p1, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v0

    .line 969
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/MessageHeader;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 970
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/MessageHeader;

    .line 971
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    .line 972
    invoke-virtual {v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 973
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-ne v2, v3, :cond_19

    :cond_6
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 975
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-ne v2, v3, :cond_19

    :cond_8
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 977
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-nez v2, :cond_19

    :cond_a
    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    iget-wide v4, p1, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 980
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-nez v2, :cond_19

    :cond_c
    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    iget-boolean v3, p1, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    if-ne v2, v3, :cond_19

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    iget-boolean v3, p1, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 984
    invoke-virtual {v2, v3}, Lcom/netflix/msl/msg/MessageCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-ne v2, v3, :cond_19

    :cond_e
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 986
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 987
    invoke-virtual {v2, v3}, Lcom/netflix/msl/keyx/KeyResponseData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-ne v2, v3, :cond_19

    :cond_10
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 989
    invoke-virtual {v2, v3}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-ne v2, v3, :cond_19

    :cond_12
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 991
    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-ne v2, v3, :cond_19

    :cond_14
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 993
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 994
    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-ne v2, v3, :cond_19

    :cond_16
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 996
    invoke-virtual {v2, v3}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-ne v2, v3, :cond_19

    :cond_18
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 998
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_19
    move v0, v1

    goto/16 :goto_0
.end method

.method public getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    return-object v0
.end method

.method public getKeyRequestData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 829
    iget-wide v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    return-wide v0
.end method

.method public getNonReplayableId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getPeerServiceTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    return-object v0
.end method

.method public getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 6

    .prologue
    .line 822
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    return-object v0
.end method

.method public getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1006
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    .line 1007
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v0, v1

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    .line 1010
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    .line 1011
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    .line 1012
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    .line 1013
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    .line 1014
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->hashCode()I

    move-result v0

    :goto_5
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    .line 1015
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    .line 1016
    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    :goto_6
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    .line 1017
    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    :goto_7
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 1018
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v0

    :goto_8
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    .line 1019
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 1020
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    :goto_9
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 1021
    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v2

    :cond_0
    xor-int/2addr v0, v2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    .line 1022
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 1007
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 1008
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 1009
    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 1011
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 1014
    goto :goto_5

    :cond_7
    move v0, v2

    .line 1016
    goto :goto_6

    :cond_8
    move v0, v2

    .line 1017
    goto :goto_7

    :cond_9
    move v0, v2

    .line 1018
    goto :goto_8

    :cond_a
    move v0, v2

    .line 1020
    goto :goto_9
.end method

.method public isDecrypted()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypting()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

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

.method public isHandshake()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    return v0
.end method

.method public isRenewable()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 950
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 951
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v1, :cond_0

    .line 952
    const-string/jumbo v1, "mastertoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 955
    :goto_0
    const-string/jumbo v1, "headerdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 956
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 957
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 954
    :cond_0
    const-string/jumbo v1, "entityauthdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " JSON."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
