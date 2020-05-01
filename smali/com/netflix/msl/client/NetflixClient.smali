.class public abstract Lcom/netflix/msl/client/NetflixClient;
.super Ljava/lang/Object;
.source "NetflixClient.java"


# instance fields
.field protected final environment:Lcom/netflix/msl/client/NetflixEnvironment;

.field protected final esn:Ljava/lang/String;

.field protected final esnPrefix:Ljava/lang/String;

.field protected final messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field protected final mslControl:Lcom/netflix/msl/msg/MslControl;

.field protected final rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

.field protected final urlProvider:Lcom/netflix/msl/client/NetflixUrlProvider;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/msl/client/NetflixEnvironment;Lcom/netflix/msl/client/ModifiableRsaStore;Lcom/netflix/msl/msg/MessageDebugContext;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    :goto_0
    if-eqz p2, :cond_1

    .line 59
    :goto_1
    new-instance v0, Lcom/netflix/msl/msg/MslControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/msl/msg/MslControl;-><init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V

    iput-object v0, p0, Lcom/netflix/msl/client/NetflixClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    .line 61
    iput-object p3, p0, Lcom/netflix/msl/client/NetflixClient;->esnPrefix:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/netflix/msl/client/NetflixClient;->esn:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/netflix/msl/client/NetflixClient;->environment:Lcom/netflix/msl/client/NetflixEnvironment;

    .line 64
    invoke-static {p5}, Lcom/netflix/msl/client/NetflixUrlProviderFactory;->of(Lcom/netflix/msl/client/NetflixEnvironment;)Lcom/netflix/msl/client/NetflixUrlProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/client/NetflixClient;->urlProvider:Lcom/netflix/msl/client/NetflixUrlProvider;

    .line 71
    iput-object p6, p0, Lcom/netflix/msl/client/NetflixClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    .line 72
    if-eqz p7, :cond_2

    :goto_2
    iput-object p7, p0, Lcom/netflix/msl/client/NetflixClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 73
    return-void

    .line 57
    :cond_0
    new-instance p1, Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-direct {p1}, Lcom/netflix/msl/msg/MessageStreamFactory;-><init>()V

    goto :goto_0

    .line 58
    :cond_1
    new-instance p2, Lcom/netflix/msl/util/DummyMessageRegistry;

    invoke-direct {p2}, Lcom/netflix/msl/util/DummyMessageRegistry;-><init>()V

    goto :goto_1

    .line 72
    :cond_2
    new-instance p7, Lcom/netflix/msl/util/SystemDebugContext;

    invoke-direct {p7}, Lcom/netflix/msl/util/SystemDebugContext;-><init>()V

    goto :goto_2
.end method

.method private extractMslTrustStore(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/client/ModifiableRsaStore;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 196
    if-eqz p2, :cond_3

    .line 197
    const-string/jumbo v0, "msltruststore"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to find msltruststore in appboot response (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    const-string/jumbo v0, "msltruststore"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to get msltruststore from appboot response because of error (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "error"

    invoke-virtual {p1, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    const-string/jumbo v1, "keys"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to find msltruststore keys in appboot response (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2
    const-string/jumbo v1, "keys"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {p2, v0, v3}, Lcom/netflix/msl/client/ModifiableRsaStore;->addPublicKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    return-void
.end method


# virtual methods
.method public apiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/msl/client/NetflixClient;->createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/netflix/msl/client/NetflixClient;->processRequest(Ljava/util/concurrent/Future;)[B

    move-result-object v0

    .line 234
    return-object v0
.end method

.method public appbootRequest(Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/msl/client/NetflixClient;->urlProvider:Lcom/netflix/msl/client/NetflixUrlProvider;

    iget-object v1, p0, Lcom/netflix/msl/client/NetflixClient;->esnPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/msl/client/NetflixUrlProvider;->getAppbootUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 180
    invoke-virtual {p0, v0, v2}, Lcom/netflix/msl/client/NetflixClient;->createAppbootRequest(Ljava/net/URL;[B)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Lcom/netflix/msl/client/NetflixClient;->processRequest(Ljava/util/concurrent/Future;)[B

    move-result-object v0

    .line 183
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 184
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/netflix/msl/client/NetflixClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    invoke-direct {p0, v0, v2}, Lcom/netflix/msl/client/NetflixClient;->extractMslTrustStore(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/client/ModifiableRsaStore;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to parse our own url for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected abstract createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createAppbootRequest(Ljava/net/URL;[B)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "[B)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation
.end method

.method protected createNccpRequest(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationData;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public defaultAppbootRequest(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;
    .locals 6
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 84
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string/jumbo v2, "hash"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 88
    :cond_0
    const-string/jumbo v2, "msltruststore"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 90
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    const-string/jumbo v2, "hash"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 94
    :cond_1
    const-string/jumbo v2, "ssltruststore"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 96
    return-object v0
.end method

.method protected getApiUrl()Ljava/net/URL;
    .locals 5

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/msl/client/NetflixClient;->urlProvider:Lcom/netflix/msl/client/NetflixUrlProvider;

    const-string/jumbo v1, "/msl"

    invoke-interface {v0, v1}, Lcom/netflix/msl/client/NetflixUrlProvider;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to parse our own url for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getNccpUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/msl/client/NetflixClient;->urlProvider:Lcom/netflix/msl/client/NetflixUrlProvider;

    invoke-interface {v0, p1}, Lcom/netflix/msl/client/NetflixUrlProvider;->getNccpUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v2, Lcom/netflix/msl/MslInternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to parse our own url for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nccpRequest(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/msl/client/NetflixClient;->createNccpRequest(Ljava/lang/String;[BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/netflix/msl/client/NetflixClient;->processRequest(Ljava/util/concurrent/Future;)[B

    move-result-object v0

    .line 243
    return-object v0
.end method

.method public processRequest(Ljava/util/concurrent/Future;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    .line 297
    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No MslChannel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 305
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_1

    .line 306
    check-cast v0, Lcom/netflix/msl/MslException;

    throw v0

    .line 302
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_3

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 308
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 310
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 311
    :catch_1
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 322
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getMessageHeader()Lcom/netflix/msl/msg/MessageHeader;

    .line 326
    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/netflix/msl/util/IoUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 327
    return-object v0
.end method

.method public unwrapApiResponse([B)Lcom/netflix/msl/client/ApiHttpWrapper;
    .locals 6

    .prologue
    .line 147
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 148
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 151
    const-string/jumbo v2, "edgemsl-version"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 155
    const-string/jumbo v0, "headers"

    invoke-static {v1, v0}, Lcom/netflix/msl/util/JsonUtil;->getMap(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 156
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_0
    const-string/jumbo v0, "status"

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    const-string/jumbo v4, "payload"

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 165
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 168
    new-instance v4, Lcom/netflix/msl/client/ApiHttpWrapper;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/netflix/msl/client/ApiHttpWrapper;-><init>(Ljava/lang/String;Ljava/util/Map;I[B)V

    return-object v4
.end method

.method public wrapApiRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 122
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 123
    const-string/jumbo v0, "path"

    invoke-virtual {v3, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 124
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 125
    if-eqz p2, :cond_0

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 130
    :cond_0
    const-string/jumbo v0, "query"

    invoke-virtual {v3, v0, p3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 131
    const-string/jumbo v0, "payload"

    if-eqz p4, :cond_1

    :goto_1
    invoke-virtual {v3, v0, p4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 133
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 134
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 135
    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 136
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_1
    new-instance p4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    goto :goto_1
.end method
