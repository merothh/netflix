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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

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

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserIdToken(J)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 5

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

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static incrementNonReplayableId(J)J
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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V

    return-void
.end method

.method private declared-synchronized save()V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "save:: started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v0, "cryptoContexts"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v5, "masterToken"

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/MasterToken;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "cryptoContext"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->toJSONObject()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "Failed to save MSL store: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "save:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    new-instance v3, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v0, "userIdTokens"

    invoke-virtual {v2, v0, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    new-instance v5, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "userIdToken"

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v6}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v0, "mtSerialNumber"

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->getMasterTokenSerialNumber()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v0, "nonReplayableIds"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    const-string/jumbo v5, "nonReplayableId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v0, "unboundServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_4

    :cond_3
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v0, "mtServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    new-instance v5, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v6, "serviceTokenSet"

    invoke-virtual {v4, v6, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v8

    const-string/jumbo v7, "uitSerialNumber"

    invoke-virtual {v6, v7, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    :cond_5
    const-string/jumbo v7, "serviceToken"

    new-instance v8, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v0, "uitServiceTokens"

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

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

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    const-string/jumbo v5, "uitSerialNumber"

    invoke-virtual {v4, v5, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    new-instance v5, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    const-string/jumbo v6, "serviceTokenSet"

    invoke-virtual {v4, v6, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v8

    const-string/jumbo v7, "mtSerialNumber"

    invoke-virtual {v6, v7, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    :cond_8
    const-string/jumbo v7, "serviceToken"

    new-instance v8, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_a

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

    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nf_msl_store_json"

    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "addServiceTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_2

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

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_0

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

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/UserIdToken;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

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

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getMasterTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getUserIdTokenSerialNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v1, 0x0

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

    invoke-virtual {p2, v0}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized clearCryptoContexts()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "clearCryptoContexts::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearServiceTokens()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearUserIdTokens()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "clearUserIdTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing user ID token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getMasterToken:: starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

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

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/netflix/msl/tokens/MasterToken;->isNewerThan(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    monitor-exit p0

    return-object v1

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

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

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

    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->incrementNonReplayableId(J)J

    move-result-wide v0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

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

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getServiceTokens::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NULL:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

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

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_5

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

    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "getUserIdToken:: userId: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/netflix/msl/util/MslContext;)V
    .locals 20

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "MSL Context can not be null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: started."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "nf_msl_store_json"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: MSL store not found..."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v5, "nf_msl_store"

    const-string/jumbo v6, "load:: MSL store found: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v12, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v12, v4}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "cryptoContexts"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

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

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/netflix/msl/tokens/MasterToken;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const-string/jumbo v9, "masterToken"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const-string/jumbo v9, "cryptoContext"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->restoreWidevineCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_3

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

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load::Crypto contexts map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v4, "userIdTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

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

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "userId"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "userIdToken"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "mtSerialNumber"

    invoke-virtual {v6, v9}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    new-instance v6, Lcom/netflix/msl/tokens/UserIdToken;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getMasterToken(J)Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v10

    invoke-direct {v6, v9, v8, v10}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_7

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

    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: UserId tokens map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string/jumbo v4, "nonReplayableIds"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_a

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

    :cond_a
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_d

    invoke-virtual {v5, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "mtSerialNumber"

    invoke-virtual {v6, v7}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string/jumbo v8, "nonReplayableId"

    invoke-virtual {v6, v8}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_b

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

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: NonReplayableId map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string/jumbo v4, "unboundServiceTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_e

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

    :cond_e
    const/4 v4, 0x0

    move v10, v4

    :goto_4
    invoke-virtual {v11}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_11

    invoke-virtual {v11, v10}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    new-instance v4, Lcom/netflix/msl/tokens/ServiceToken;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mMslContext:Lcom/netflix/msl/util/MslContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    check-cast v9, Lcom/netflix/msl/crypto/ICryptoContext;

    invoke-direct/range {v4 .. v9}, Lcom/netflix/msl/tokens/ServiceToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;Lcom/netflix/msl/crypto/ICryptoContext;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_f

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

    :cond_f
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_4

    :cond_10
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: UnboundServiceTokens set not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v4, "mtServiceTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_12

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

    :cond_12
    const/4 v4, 0x0

    move v11, v4

    :goto_5
    invoke-virtual {v13}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_17

    invoke-virtual {v13, v11}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "mtSerialNumber"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string/jumbo v5, "serviceTokenSet"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v16

    new-instance v17, Ljava/util/HashSet;

    invoke-virtual/range {v16 .. v16}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move v10, v4

    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v10, v4, :cond_15

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "serviceToken"

    invoke-virtual {v4, v5}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v6

    const-string/jumbo v5, "uitSerialNumber"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v5, v8, v9}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

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

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/netflix/msl/tokens/ServiceToken;->isMasterTokenBound()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Lcom/netflix/msl/tokens/ServiceToken;->isUserIdTokenBound()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_14

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

    :cond_14
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: MasterTokenServiceToken map not found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const-string/jumbo v4, "uitServiceTokens"

    invoke-virtual {v12, v4}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_18

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

    :cond_18
    const/4 v4, 0x0

    move v5, v4

    :goto_7
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_1c

    invoke-virtual {v6, v5}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v4

    const-string/jumbo v7, "uitSerialNumber"

    invoke-virtual {v4, v7}, Lcom/netflix/android/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string/jumbo v8, "serviceTokenSet"

    invoke-virtual {v4, v8}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v8}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v8}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_1d

    invoke-virtual {v8, v4}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "mtSerialNumber"

    const-wide/16 v12, -0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/netflix/android/org/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v12

    if-eqz v12, :cond_19

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

    :cond_19
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v14, v10, v11, v12, v13}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getServiceToken(Ljava/util/List;JJ)Lcom/netflix/msl/tokens/ServiceToken;

    move-result-object v10

    if-eqz v10, :cond_1b

    const-string/jumbo v11, "nf_msl_store"

    const-string/jumbo v12, "Double bound service token found, use it"

    invoke-static {v11, v12}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v11

    if-eqz v11, :cond_1a

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

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_1b
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "Double bound service token not found, this should not happen!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Double bound service token not found, this should not happen!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string/jumbo v5, "nf_msl_store"

    const-string/jumbo v6, "Failed to load MSL store: try restore..."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->reset()V

    :cond_1c
    :goto_9
    const-string/jumbo v4, "nf_msl_store"

    const-string/jumbo v5, "load:: done."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_1d
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_7

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

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/ICryptoContext;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->release()V

    invoke-virtual {p1}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->nonReplayableIds:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v0, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v1, "nf_msl_store"

    const-string/jumbo v2, "NOT Widevine crypto session! This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, p1, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

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

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p3, p2}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->unboundServiceTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_10

    if-nez p3, :cond_10

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->mtServiceTokens:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/netflix/msl/tokens/MasterToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/msl/tokens/ServiceToken;

    if-eqz p1, :cond_e

    invoke-virtual {v2}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_e
    invoke-virtual {v2, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_f
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_10
    if-eqz p3, :cond_14

    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->uitServiceTokens:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/netflix/msl/tokens/UserIdToken;->getSerialNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/ServiceToken;

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lcom/netflix/msl/tokens/ServiceToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {v0, p2}, Lcom/netflix/msl/tokens/ServiceToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_14
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v2, "removeUserIdToken:: userIdToken: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

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

    invoke-virtual {p1, v0}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1, p1}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeServiceTokens(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unexpected exception while removing user ID token bound service tokens."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "setCryptoContex:: starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->removeCryptoContext(Lcom/netflix/msl/tokens/MasterToken;)V

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V

    const-string/jumbo v0, "nf_msl_store"

    const-string/jumbo v1, "setCryptoContex:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->cryptoContexts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Old userId can not be null"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "New userId can not be null"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/tokens/UserIdToken;

    if-nez v0, :cond_2

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

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->userIdTokens:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
