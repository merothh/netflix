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

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    const-wide/high16 v6, 0x20000000000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

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

    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Message entity authentication data or master token must be provided."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p3, :cond_4

    move v2, v3

    :goto_0
    if-nez p3, :cond_5

    :goto_1
    iput-object p2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    iput-object p3, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->nonReplayableId:Ljava/lang/Long;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    iget-boolean v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->renewable:Z

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    iget-boolean v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->handshake:Z

    iput-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationData(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->recipient:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    iget-wide v4, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->messageId:J

    iput-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    if-eqz v1, :cond_8

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyRequestData:Ljava/util/Set;

    :goto_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    if-eqz v1, :cond_9

    iget-object v1, p4, Lcom/netflix/msl/msg/MessageHeader$HeaderData;->serviceTokens:Ljava/util/Set;

    :goto_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    if-eqz v1, :cond_a

    iget-object v1, p5, Lcom/netflix/msl/msg/MessageHeader$HeaderPeerData;->peerServiceTokens:Ljava/util/Set;

    :goto_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    :goto_7
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    :goto_8
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_e

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v4, v2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_3
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token must be bound to a master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts()Z

    move-result v1

    move v2, v1

    goto/16 :goto_0

    :cond_5
    move-object p2, v0

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_3

    :cond_8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_6

    :cond_b
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_8

    :cond_e
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_10

    if-eqz v1, :cond_f

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v4, v1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Peer user ID token must be bound to a peer master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v4, :cond_13

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

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

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v2, :cond_12

    invoke-virtual {v0, v2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_12
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Master token bound service tokens must be bound to the provided master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    goto :goto_9

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

    :cond_15
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token bound service tokens must be bound to the provided user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "Master token bound peer service tokens must be bound to the provided peer master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

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

    :cond_1a
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token bound peer service tokens must be bound to the provided peer user ID token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "sender"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_1c
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "recipient"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_1d
    const-string/jumbo v0, "timestamp"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "messageid"

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v2, "nonreplayable"

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_28

    move v0, v3

    :goto_a
    invoke-virtual {v1, v2, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "nonreplayableid"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_1e
    const-string/jumbo v0, "renewable"

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "handshake"

    iget-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "capabilities"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const-string/jumbo v0, "keyrequestdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-static {v2}, Lcom/netflix/msl/util/JsonUtils;->createArray(Ljava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_1f
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_20

    const-string/jumbo v0, "keyresponsedata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_20
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_21

    const-string/jumbo v0, "userauthdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_21
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_22

    const-string/jumbo v0, "useridtoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    :cond_23
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_24

    const-string/jumbo v0, "peermastertoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_24
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_25

    const-string/jumbo v0, "peeruseridtoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    :cond_26
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-interface {v0, v2}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_29

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

    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "headerdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    throw v0

    :cond_29
    new-instance v0, Lcom/netflix/msl/crypto/SessionCryptoContext;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v0, p1, v2}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    :goto_b
    :try_start_1
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    invoke-interface {v0, v1}, Lcom/netflix/msl/crypto/ICryptoContext;->sign([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :cond_2a
    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    goto :goto_b

    :cond_2b
    :try_start_2
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v2

    if-nez v2, :cond_2c

    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslCryptoException;->setMessageId(J)Lcom/netflix/msl/MslException;

    throw v0

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

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslEntityAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslEntityAuthException;->setMessageId(J)Lcom/netflix/msl/MslException;

    throw v0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0, v1}, Lcom/netflix/msl/MslCryptoException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v0, v2, v3}, Lcom/netflix/msl/MslCryptoException;->setMessageId(J)Lcom/netflix/msl/MslException;

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

    invoke-direct {p0}, Lcom/netflix/msl/msg/Header;-><init>()V

    if-nez p4, :cond_0

    move-object/from16 v2, p3

    :goto_0
    :try_start_0
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    new-instance v2, Lcom/netflix/msl/MslMessageException;

    sget-object v3, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v2, v3}, Lcom/netflix/msl/MslMessageException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v2
    :try_end_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslCryptoException;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_6

    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslStore()Lcom/netflix/msl/util/MslStore;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Lcom/netflix/msl/util/MslStore;->getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/netflix/msl/tokens/MasterToken;->isDecrypted()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lcom/netflix/msl/MslMasterTokenException;

    sget-object v3, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    move-object/from16 v0, p4

    invoke-direct {v2, v3, v0}, Lcom/netflix/msl/MslMasterTokenException;-><init>(Lcom/netflix/msl/MslError;Lcom/netflix/msl/tokens/MasterToken;)V

    throw v2
    :try_end_1
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEntityAuthException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEntityAuthException;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    throw v2

    :cond_3
    :try_start_2
    new-instance v2, Lcom/netflix/msl/crypto/SessionCryptoContext;

    move-object/from16 v0, p4

    invoke-direct {v2, p1, v0}, Lcom/netflix/msl/crypto/SessionCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_2
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    array-length v2, v2

    if-nez v2, :cond_8

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

    :cond_5
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_4
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getEntityAuthenticationFactory(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v4, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_2
    move-exception v2

    :try_start_6
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslCryptoException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslCryptoException;

    throw v2
    :try_end_6
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/netflix/msl/MslEntityAuthException; {:try_start_6 .. :try_end_6} :catch_1

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

    :catch_3
    move-exception v2

    :try_start_8
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    throw v2

    :catch_4
    move-exception v2

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

    :cond_8
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    invoke-interface {v2, v3, v4}, Lcom/netflix/msl/crypto/ICryptoContext;->verify([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z

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

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    if-nez v2, :cond_a

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    :goto_3
    return-void

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    new-instance v9, Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->plaintext:[B

    sget-object v3, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v9, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_9
    new-instance v10, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v10, v9}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "messageid"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b

    iget-wide v2, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    const-wide/high16 v4, 0x20000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

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

    :catch_5
    move-exception v2

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

    :cond_c
    :try_start_a
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_d

    const-string/jumbo v2, "sender"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    const-string/jumbo v2, "recipient"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "recipient"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

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

    const-string/jumbo v2, "keyresponsedata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "keyresponsedata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netflix/msl/keyx/KeyResponseData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyResponseData;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v2

    :goto_7
    move-object v5, v2

    :goto_8
    const-string/jumbo v2, "useridtoken"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v3, "useridtoken"

    invoke-virtual {v10, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3, v5}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_9
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v2, "userauthdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "userauthdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v5, v2}, Lcom/netflix/msl/userauth/UserAuthenticationData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v2

    :goto_a
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2}, Lcom/netflix/msl/userauth/UserAuthenticationData;->getScheme()Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/msl/util/MslContext;->getUserAuthenticationFactory(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Lcom/netflix/msl/userauth/UserAuthenticationFactory;

    move-result-object v3

    if-nez v3, :cond_14

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

    :catch_6
    move-exception v2

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

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_10
    move-object/from16 v2, p4

    goto/16 :goto_7

    :cond_11
    const/4 v2, 0x0

    :try_start_b
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    move-object/from16 v5, p4

    goto/16 :goto_8

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/MasterToken;->getIdentity()Ljava/lang/String;

    move-result-object v2

    :goto_b
    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    iget-object v6, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, p1, v2, v4, v6}, Lcom/netflix/msl/userauth/UserAuthenticationFactory;->authenticate(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    :goto_c
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "servicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string/jumbo v2, "servicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v12

    const/4 v2, 0x0

    move v8, v2

    :goto_d
    invoke-virtual {v12}, Lcom/netflix/android/org/json/JSONArray;->length()I
    :try_end_b
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_b .. :try_end_b} :catch_7

    move-result v2

    if-ge v8, v2, :cond_18

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

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_d

    :cond_15
    :try_start_d
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/UserIdToken;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;
    :try_end_d
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_c

    :catch_7
    move-exception v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    throw v2

    :cond_17
    const/4 v2, 0x0

    :try_start_e
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    goto :goto_c

    :catch_8
    move-exception v2

    invoke-virtual {v2, v5}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    throw v2

    :cond_18
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;
    :try_end_e
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/netflix/msl/MslException; {:try_start_e .. :try_end_e} :catch_7

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

    const-string/jumbo v2, "renewable"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    const-string/jumbo v2, "handshake"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "handshake"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_f
    iput-boolean v2, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

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

    :catch_9
    move-exception v2

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

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v2

    throw v2

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_1b
    const/4 v2, 0x0

    goto :goto_f

    :cond_1c
    :try_start_10
    const-string/jumbo v2, "capabilities"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "capabilities"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-direct {v3, v2}, Lcom/netflix/msl/msg/MessageCapabilities;-><init>(Lcom/netflix/android/org/json/JSONObject;)V

    iput-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    :goto_10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "keyrequestdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "keyrequestdata"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v4

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1e

    invoke-virtual {v4, v2}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/netflix/msl/keyx/KeyRequestData;->create(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/keyx/KeyRequestData;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;
    :try_end_10
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_10

    :catch_a
    move-exception v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    iget-object v3, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-virtual {v2, v4, v5}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    throw v2

    :cond_1e
    :try_start_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->isPeerToPeer()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "peermastertoken"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Lcom/netflix/msl/tokens/MasterToken;

    const-string/jumbo v3, "peermastertoken"

    invoke-virtual {v10, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    :goto_12
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v2}, Lcom/netflix/msl/keyx/KeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    :try_end_11
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_11 .. :try_end_11} :catch_a

    move-result-object v5

    :goto_13
    :try_start_12
    const-string/jumbo v2, "peeruseridtoken"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v3, "peeruseridtoken"

    invoke-virtual {v10, v3}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3, v5}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_14
    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_12
    .catch Lcom/netflix/msl/MslException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_12 .. :try_end_12} :catch_9

    :try_start_13
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "peerservicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "peerservicetokens"

    invoke-virtual {v10, v2}, Lcom/netflix/android/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v11

    const/4 v2, 0x0

    move v8, v2

    :goto_15
    invoke-virtual {v11}, Lcom/netflix/android/org/json/JSONArray;->length()I
    :try_end_13
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lcom/netflix/msl/MslException; {:try_start_13 .. :try_end_13} :catch_a

    move-result v2

    if-ge v8, v2, :cond_22

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

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_15

    :cond_1f
    const/4 v2, 0x0

    goto :goto_12

    :cond_20
    :try_start_15
    iget-object v5, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    goto :goto_13

    :cond_21
    const/4 v2, 0x0

    goto :goto_14

    :catch_b
    move-exception v2

    invoke-virtual {v2, v5}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    throw v2

    :catch_c
    move-exception v2

    invoke-virtual {v2, v5}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    throw v2

    :cond_22
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    goto/16 :goto_3

    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/MessageHeader;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/MessageHeader;

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

    invoke-virtual {v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

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

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

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

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

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

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_19
    move v0, v1

    goto/16 :goto_0
.end method

.method public getCryptoContext()Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageCryptoContext:Lcom/netflix/msl/crypto/ICryptoContext;

    return-object v0
.end method

.method public getEntityAuthenticationData()Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

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

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyResponseData()Lcom/netflix/msl/keyx/KeyResponseData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getMessageCapabilities()Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    return-wide v0
.end method

.method public getNonReplayableId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPeerMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

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

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    return-object v0
.end method

.method public getPeerUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 6

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

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->user:Lcom/netflix/msl/tokens/MslUser;

    return-object v0
.end method

.method public getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->sender:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->recipient:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v0, v1

    iget-wide v4, p0, Lcom/netflix/msl/msg/MessageHeader;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->nonReplayableId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->capabilities:Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageCapabilities;->hashCode()I

    move-result v0

    :goto_5
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->keyRequestData:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->keyResponseData:Lcom/netflix/msl/keyx/KeyResponseData;

    invoke-virtual {v0}, Lcom/netflix/msl/keyx/KeyResponseData;->hashCode()I

    move-result v0

    :goto_6
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userAuthData:Lcom/netflix/msl/userauth/UserAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    :goto_7
    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v0

    :goto_8
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->serviceTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->peerMasterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v0

    :goto_9
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerUserIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v2

    :cond_0
    xor-int/2addr v0, v2

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->peerServiceTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v2

    goto :goto_9
.end method

.method public isDecrypted()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->handshake:Z

    return v0
.end method

.method public isRenewable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->renewable:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/msl/msg/MessageHeader;->verified:Z

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mastertoken"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :goto_0
    const-string/jumbo v1, "headerdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->headerdata:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->signature:[B

    invoke-static {v2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "entityauthdata"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageHeader;->entityAuthData:Lcom/netflix/msl/entityauth/EntityAuthenticationData;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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
