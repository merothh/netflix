.class public Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;
.super Ljava/lang/Object;
.source "AndroidMslStore.java"

# interfaces
.implements Lcom/netflix/msl/util/MslStore;


# static fields
.field private static final KEY_CRYPTO_CONTEXT:Ljava/lang/String; = "cryptoContext"

.field private static final KEY_CRYPTO_CONTEXTS:Ljava/lang/String; = "cryptoContexts"

.field private static final KEY_MASTER_TOKEN:Ljava/lang/String; = "masterToken"

.field private static final KEY_MASTER_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "mtSerialNumber"

.field private static final KEY_MASTER_TOKEN_SERVICE_TOKENS:Ljava/lang/String; = "mtServiceTokens"

.field private static final KEY_NON_REPLAYABLE_ID:Ljava/lang/String; = "nonReplayableId"

.field private static final KEY_NON_REPLAYABLE_IDS:Ljava/lang/String; = "nonReplayableIds"

.field private static final KEY_SERVICE_TOKEN:Ljava/lang/String; = "serviceToken"

.field private static final KEY_SERVICE_TOKEN_SET:Ljava/lang/String; = "serviceTokenSet"

.field private static final KEY_UNBOUND_SERVICE_TOKENS:Ljava/lang/String; = "unboundServiceTokens"

.field private static final KEY_USERID:Ljava/lang/String; = "userId"

.field private static final KEY_USERID_SERVICE_TOKENS:Ljava/lang/String; = "uitServiceTokens"

.field private static final KEY_USERID_TOKEN:Ljava/lang/String; = "userIdToken"

.field private static final KEY_USERID_TOKENS:Ljava/lang/String; = "userIdTokens"

.field private static final KEY_USERID_TOKEN_SERIAL_NUMBER:Ljava/lang/String; = "uitSerialNumber"

.field private static final TAG:Ljava/lang/String; = "nf_msl_store"


# instance fields
.field private final cryptoContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMslContext:Lcom/netflix/msl/util/MslContext;

.field private final mtServiceTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nonReplayableIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final uitServiceTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unboundServiceTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation
.end field

.field private final userIdTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

    .prologue
    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 973
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 974
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    const-string/jumbo v1, "nf_msl_store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Master token found for serial number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and it is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_1
    :goto_0
    return-object v0

    .line 981
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 982
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Master token not found for serial number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getServiceToken(Ljava/util/List;JJ)Lcom/netflix/msl/tokens/ServiceToken;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;JJ)",
            "Lcom/netflix/msl/tokens/ServiceToken;"
        }
    .end annotation

    .prologue
    .line 1008
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 1010
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 1011
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    const-string/jumbo v1, "nf_msl_store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServiceToken found for user id token serial number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and master token serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and it is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_1
    :goto_0
    return-object v0

    .line 1018
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1019
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceToken not found for user id token serial number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and master token serial number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserIdToken(J)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 5

    .prologue
    .line 989
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 990
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 992
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    const-string/jumbo v1, "nf_msl_store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UserIdToken found for serial number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and it is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_1
    :goto_0
    return-object v0

    .line 1000
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UserIdToken not found for serial number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static incrementNonReplayableId(J)J
    .locals 6

    .prologue
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v0, 0x0

    .line 605
    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    .line 606
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-replayable ID "

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

    .line 608
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

.method private reset()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 962
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 963
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 964
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 967
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V

    .line 968
    return-void
.end method

.method private declared-synchronized save()V
    .locals 10

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "save:: started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :try_start_1
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 622
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 623
    const-string/jumbo v0, "cryptoContexts"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 627
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 628
    const-string/jumbo v5, "masterToken"

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 629
    const-string/jumbo v5, "cryptoContext"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->toJSONObject()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 630
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    :try_start_2
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "Failed to save MSL store: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 734
    :goto_1
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "save:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    .line 633
    :cond_0
    :try_start_3
    new-instance v3, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 634
    const-string/jumbo v0, "userIdTokens"

    invoke-virtual {v2, v0, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 638
    new-instance v5, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 639
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    .line 640
    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 641
    const-string/jumbo v0, "userIdToken"

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 644
    const-string/jumbo v0, "mtSerialNumber"

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 646
    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 649
    :cond_1
    :try_start_4
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 650
    const-string/jumbo v0, "nonReplayableIds"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 652
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 654
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 655
    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 656
    const-string/jumbo v5, "nonReplayableId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 657
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_3

    .line 661
    :cond_2
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 662
    const-string/jumbo v0, "unboundServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 664
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 665
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_4

    .line 668
    :cond_3
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 669
    const-string/jumbo v0, "mtServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 671
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 673
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 674
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 676
    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 678
    new-instance v5, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 679
    const-string/jumbo v6, "serviceTokenSet"

    invoke-virtual {v4, v6, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 681
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 682
    if-eqz v0, :cond_4

    .line 683
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 684
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 685
    invoke-virtual {v5, v6}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 686
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 687
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v8

    .line 688
    const-string/jumbo v7, "uitSerialNumber"

    invoke-virtual {v6, v7, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 690
    :cond_5
    const-string/jumbo v7, "serviceToken"

    new-instance v8, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_5

    .line 695
    :cond_6
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 696
    const-string/jumbo v0, "uitServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 700
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 701
    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 703
    const-string/jumbo v5, "uitSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 705
    new-instance v5, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 706
    const-string/jumbo v6, "serviceTokenSet"

    invoke-virtual {v4, v6, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 708
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 709
    if-eqz v0, :cond_7

    .line 710
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 711
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 712
    invoke-virtual {v5, v6}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 713
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 714
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v8

    .line 715
    const-string/jumbo v7, "mtSerialNumber"

    invoke-virtual {v6, v7, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 717
    :cond_8
    const-string/jumbo v7, "serviceToken"

    new-instance v8, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_6

    .line 722
    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 723
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save:: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_msl_store_json"

    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 728
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "save:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized addServiceTokens(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 342
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "addServiceTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 347
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/MasterToken;

    .line 350
    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 355
    :goto_0
    if-nez v1, :cond_2

    .line 356
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "st mtserialnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    .line 363
    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 368
    :goto_1
    if-nez v1, :cond_0

    .line 369
    new-instance v1, Lcom/netflix/msl/MslException;

    sget-object v2, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "st uitserialnumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 376
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 377
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 382
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 383
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 384
    if-nez v1, :cond_7

    .line 385
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 386
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_8
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 393
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 394
    if-nez v1, :cond_9

    .line 395
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 396
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    :cond_a
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :cond_b
    move v1, v3

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto/16 :goto_0
.end method

.method public declared-synchronized addUserIdToken(Ljava/lang/String;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 6

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addUserIdToken:: userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 242
    invoke-virtual {p2, v0}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x1

    .line 247
    :goto_0
    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized clearCryptoContexts()V
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "clearCryptoContexts::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 230
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearServiceTokens()V
    .locals 1

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 590
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 592
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearUserIdTokens()V
    .locals 4

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "clearUserIdTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 332
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing user ID token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 336
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCryptoContext:: for master token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getMasterToken:: starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 130
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/MasterToken;->isNewerThan(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string/jumbo v1, "nf_msl_store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMasterToken:: Found master token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object v1, v0

    .line 136
    goto :goto_0

    .line 138
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const-string/jumbo v0, "nf_msl_store"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMasterToken:: Return master token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_3
    monitor-exit p0

    return-object v1

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public declared-synchronized getNonReplayableId(Lcom/netflix/msl/tokens/MasterToken;)J
    .locals 5

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNonReplayableId:: for master token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 160
    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->incrementNonReplayableId(J)J

    move-result-wide v0

    .line 161
    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-wide v0

    .line 159
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServiceTokens(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/tokens/MasterToken;",
            "Lcom/netflix/msl/tokens/UserIdToken;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/tokens/ServiceToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getServiceTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz p2, :cond_1

    .line 412
    if-nez p1, :cond_0

    .line 413
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NULL:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 426
    if-eqz p1, :cond_3

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 428
    if-eqz v0, :cond_3

    .line 429
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 430
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_3
    if-eqz p2, :cond_5

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 441
    if-eqz v0, :cond_5

    .line 442
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 443
    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 444
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 450
    :cond_5
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getUserIdToken:: userId: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/netflix/msl/util/MslContext;)V
    .locals 20

    .prologue
    .line 753
    monitor-enter p0

    if-nez p1, :cond_0

    .line 754
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "MSL Context can not be null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 756
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    .line 759
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: started."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "nf_msl_store_json"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 764
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: MSL store not found..."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    :goto_0
    monitor-exit p0

    return-void

    .line 770
    :cond_1
    :try_start_2
    const-string/jumbo v5, "nf_msl_store"

    const-string/jumbo v6, "load:: MSL store found: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 772
    new-instance v12, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v12, v4}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 774
    const-string/jumbo v4, "cryptoContexts"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    .line 775
    if-eqz v5, :cond_4

    .line 777
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 778
    const-string/jumbo v4, "nf_msl_store"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load::Crypto contexts map found, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 783
    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 784
    new-instance v7, Lcom/netflix/msl/tokens/MasterToken;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const-string/jumbo v9, "masterToken"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const-string/jumbo v9, "cryptoContext"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->restoreWidevineCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    move-result-object v6

    .line 786
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 789
    const-string/jumbo v8, "nf_msl_store"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "load:: add to cryptoContexts at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": masterToken: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " and cryptoContext: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 794
    :cond_4
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load::Crypto contexts map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_5
    const-string/jumbo v4, "userIdTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    .line 799
    if-eqz v5, :cond_8

    .line 801
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 802
    const-string/jumbo v4, "nf_msl_store"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load:: UserId tokens map found, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 807
    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 808
    const-string/jumbo v7, "userId"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 809
    const-string/jumbo v8, "userIdToken"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v8

    .line 811
    const-string/jumbo v9, "mtSerialNumber"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 812
    new-instance v6, Lcom/netflix/msl/tokens/UserIdToken;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v10

    invoke-direct {v6, v9, v8, v10}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    .line 814
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 815
    const-string/jumbo v8, "nf_msl_store"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "load:: add to userIdTokens at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": userId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " and token: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/netflix/msl/tokens/UserIdToken;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 823
    :cond_8
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: UserId tokens map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_9
    const-string/jumbo v4, "nonReplayableIds"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    .line 827
    if-eqz v5, :cond_c

    .line 829
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 830
    const-string/jumbo v4, "nf_msl_store"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load:: NonReplayableId map found, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_a
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 835
    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 836
    const-string/jumbo v7, "mtSerialNumber"

    invoke-virtual {v6, v7}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 837
    const-string/jumbo v8, "nonReplayableId"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 839
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 840
    const-string/jumbo v8, "nf_msl_store"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "load:: add to NonReplayableIds at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": master token serial number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " and nonReplayableId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 846
    :cond_c
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: NonReplayableId map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_d
    const-string/jumbo v4, "unboundServiceTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v11

    .line 850
    if-eqz v11, :cond_10

    .line 852
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 853
    const-string/jumbo v4, "nf_msl_store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load:: UnboundServiceTokens set found, size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_e
    const/4 v4, 0x0

    move v10, v4

    :goto_4
    invoke-virtual {v11}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_11

    .line 858
    invoke-virtual {v11, v10}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 859
    new-instance v4, Lcom/netflix/msl/tokens/ServiceToken;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    check-cast v9, Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v4 .. v9}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 863
    const-string/jumbo v5, "nf_msl_store"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load:: add to UnboundServiceTokens Set at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": serviceToken: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_f
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_4

    .line 867
    :cond_10
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: UnboundServiceTokens set not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_11
    const-string/jumbo v4, "mtServiceTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v13

    .line 873
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 875
    if-eqz v13, :cond_16

    .line 877
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 878
    const-string/jumbo v4, "nf_msl_store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load:: MasterTokenServiceToken map found, size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_12
    const/4 v4, 0x0

    move v11, v4

    :goto_5
    invoke-virtual {v13}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_17

    .line 883
    invoke-virtual {v13, v11}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    .line 884
    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 885
    const-string/jumbo v5, "serviceTokenSet"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v16

    .line 886
    new-instance v17, Ljava/util/HashSet;

    invoke-virtual/range {v16 .. v16}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const/4 v4, 0x0

    move v10, v4

    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_15

    .line 889
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    .line 890
    const-string/jumbo v5, "serviceToken"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    .line 891
    const-string/jumbo v5, "uitSerialNumber"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v5, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 893
    new-instance v4, Lcom/netflix/msl/tokens/ServiceToken;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(J)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v8

    const/4 v9, 0x0

    check-cast v9, Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v4 .. v9}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    .line 894
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-virtual {v4}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 897
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_13
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 900
    const-string/jumbo v4, "nf_msl_store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load:: add to MasterTokenServiceToken map at i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and j "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": serviceToken "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_14
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_6

    .line 881
    :cond_15
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_5

    .line 906
    :cond_16
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: MasterTokenServiceToken map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_17
    const-string/jumbo v4, "uitServiceTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    .line 910
    if-eqz v6, :cond_1e

    .line 912
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 913
    const-string/jumbo v4, "nf_msl_store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load:: UserIdsServiceToken map found, size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_18
    const/4 v4, 0x0

    move v5, v4

    :goto_7
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_1c

    .line 918
    invoke-virtual {v6, v5}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    .line 919
    const-string/jumbo v7, "uitSerialNumber"

    invoke-virtual {v4, v7}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 920
    const-string/jumbo v8, "serviceTokenSet"

    invoke-virtual {v4, v8}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v8

    .line 921
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v8}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v8}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_1d

    .line 925
    invoke-virtual {v8, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v10

    .line 927
    const-string/jumbo v11, "mtSerialNumber"

    const-wide/16 v12, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 928
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 929
    const-string/jumbo v12, "nf_msl_store"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Check if service token exist for given userIdToken serial number: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, " and master token serial number: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_19
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v14, v10, v11, v12, v13}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getServiceToken(Ljava/util/List;JJ)Lcom/netflix/msl/tokens/ServiceToken;

    move-result-object v10

    .line 933
    if-eqz v10, :cond_1b

    .line 934
    const-string/jumbo v11, "nf_msl_store"

    const-string/jumbo v12, "Double bound service token found, use it"

    invoke-static {v11, v12}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 942
    const-string/jumbo v11, "nf_msl_store"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "load:: add to UserIdsServiceToken map at i"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " and j "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": serviceToken: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 936
    :cond_1b
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "Double bound service token not found, this should not happen!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Double bound service token not found, this should not happen!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 950
    :catch_0
    move-exception v4

    .line 951
    :try_start_3
    const-string/jumbo v5, "nf_msl_store"

    const-string/jumbo v6, "Failed to load MSL store: try restore..."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->reset()V

    .line 955
    :cond_1c
    :goto_9
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: done."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 916
    :cond_1d
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_7

    .line 947
    :cond_1e
    :try_start_4
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: UserIdsServiceToken map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 4

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCryptoContext:: for master token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    .line 185
    if-eqz v0, :cond_4

    .line 188
    instance-of v1, v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    if-eqz v1, :cond_2

    .line 189
    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->release()V

    .line 198
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    .line 201
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 205
    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_2
    :try_start_1
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "NOT Widevine crypto session! This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not Widevine crypto context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, p1, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    :try_start_4
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing master token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 6

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeServiceTokens:: name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 462
    invoke-virtual {p3, p2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uit mtserialnumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 468
    :cond_1
    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    .line 470
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 471
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 481
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 482
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 483
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    .line 486
    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 492
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 496
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 499
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 500
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 501
    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 502
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    .line 505
    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 509
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 511
    :cond_8
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 518
    :cond_9
    if-eqz p2, :cond_10

    if-nez p3, :cond_10

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 520
    if-eqz v0, :cond_c

    .line 521
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 522
    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 523
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 526
    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 530
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 535
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 537
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 539
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 540
    :cond_d
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 541
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    .line 544
    if-eqz p1, :cond_e

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 548
    :cond_e
    invoke-virtual {v2, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 552
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 554
    :cond_f
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 562
    :cond_10
    if-eqz p3, :cond_14

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 564
    if-eqz v0, :cond_14

    .line 565
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 566
    :cond_11
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    .line 570
    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 575
    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {v0, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 579
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 584
    :cond_14
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 290
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v2, "removeUserIdToken:: userIdToken: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/MasterToken;

    .line 295
    invoke-virtual {p1, v0}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, p1}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 312
    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing user ID token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public declared-synchronized setCryptoContext(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/crypto/ICryptoContext;)V
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "setCryptoContex:: starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-nez p2, :cond_1

    .line 107
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCryptoContex:: Remove crypto context for master token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V

    .line 120
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "setCryptoContex:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string/jumbo v0, "nf_msl_store"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCryptoContex:: Add crypto context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for master token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 264
    monitor-enter p0

    if-nez p1, :cond_0

    .line 265
    :try_start_0
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Old userId can not be null"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_0
    if-nez p2, :cond_1

    .line 268
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "New userId can not be null"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    .line 273
    if-nez v0, :cond_2

    .line 274
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_NOT_ASSOCIATED_WITH_ENTITY:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UserIdToken not found for given old user ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-void
.end method
