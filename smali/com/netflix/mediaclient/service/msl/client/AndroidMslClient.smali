.class public final Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;
.super Ljava/lang/Object;
.source "AndroidMslClient.java"

# interfaces
.implements Lcom/netflix/msl/client/KeyRequestDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/msl/client/KeyRequestDataProvider",
        "<",
        "Lcom/netflix/msl/keyx/WidevineKeyRequestData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CS_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "nf_msl"

.field private static final TIMEOUT_MS:I = 0x1388


# instance fields
.field private configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private context:Landroid/content/Context;

.field private esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

.field private messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

.field private mslControl:Lcom/netflix/msl/msg/MslControl;

.field private mslCtx:Lcom/netflix/msl/client/ClientMslContext;

.field private mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

.field private rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

.field private urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 4

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidBase64Impl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidBase64Impl;-><init>()V

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->setImpl(Lcom/netflix/msl/util/Base64$Base64Impl;)V

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->context:Landroid/content/Context;

    .line 132
    new-instance v0, Lcom/netflix/msl/msg/MslControl;

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/msl/msg/MessageStreamFactory;

    invoke-direct {v2}, Lcom/netflix/msl/msg/MessageStreamFactory;-><init>()V

    new-instance v3, Lcom/netflix/mediaclient/service/msl/client/AndroidMessageRegistry;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMessageRegistry;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/msg/MslControl;-><init>(ILcom/netflix/msl/msg/MessageStreamFactory;Lcom/netflix/msl/msg/ErrorMessageRegistry;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    .line 134
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ESN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApiEndpointRegistry()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidDebugContext;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 143
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createMslContext(Ljava/lang/String;Lcom/netflix/msl/entityauth/RsaStore;Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->init(Lcom/netflix/msl/util/MslContext;)V

    .line 151
    return-void
.end method

.method private createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v0

    return-object v0
.end method

.method private createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 6

    .prologue
    .line 201
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/netflix/msl/client/ClientRequestMessageContext;->builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p3}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userAuthData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, p1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->userId(Ljava/lang/String;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p4}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->nonReplayable(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 209
    invoke-virtual {v1, v2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->build()Lcom/netflix/msl/client/ClientRequestMessageContext;

    move-result-object v1

    .line 212
    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 213
    new-instance v3, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v3, v4, v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)V

    iput-object v3, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v4, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    const/16 v5, 0x1388

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/netflix/msl/msg/MslControl;->request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    .line 216
    return-object v2
.end method

.method private createAppbootRequest(Ljava/net/URL;[B)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
    .locals 6

    .prologue
    .line 163
    invoke-static {}, Lcom/netflix/msl/client/ClientRequestMessageContext;->builder()Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->encrypted(Ljava/lang/Boolean;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->keyRequestDataProvider(Lcom/netflix/msl/client/KeyRequestDataProvider;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p2}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->payload([B)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->messageDebugContext:Lcom/netflix/msl/msg/MessageDebugContext;

    .line 167
    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->debugContext(Lcom/netflix/msl/msg/MessageDebugContext;)Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/netflix/msl/client/ClientRequestMessageContext$ClientRequestMessageContextBuilder;->build()Lcom/netflix/msl/client/ClientRequestMessageContext;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V

    .line 171
    new-instance v2, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->configuration:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v2, v3, p1}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Ljava/net/URL;)V

    iput-object v2, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    .line 172
    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslControl:Lcom/netflix/msl/msg/MslControl;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslCtx:Lcom/netflix/msl/client/ClientMslContext;

    iget-object v4, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    const/16 v5, 0x1388

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/netflix/msl/msg/MslControl;->request(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/msg/MessageContext;Lcom/netflix/msl/io/Url;I)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    .line 174
    return-object v1
.end method

.method private createMslContext(Ljava/lang/String;Lcom/netflix/msl/entityauth/RsaStore;Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext;
    .locals 5

    .prologue
    .line 228
    new-instance v0, Lcom/netflix/msl/util/NullAuthenticationUtils;

    invoke-direct {v0}, Lcom/netflix/msl/util/NullAuthenticationUtils;-><init>()V

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 232
    sget-object v2, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->RSA:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    new-instance v3, Lcom/netflix/msl/entityauth/RsaAuthenticationFactory;

    invoke-direct {v3, p2, v0}, Lcom/netflix/msl/entityauth/RsaAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/RsaStore;Lcom/netflix/msl/util/AuthenticationUtils;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v2, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    new-instance v3, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;

    invoke-direct {v3, v0}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationFactory;-><init>(Lcom/netflix/msl/util/AuthenticationUtils;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 237
    sget-object v3, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/WidevineKeyExchange;

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineKeyExchange;-><init>(Lcom/netflix/msl/util/AuthenticationUtils;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {}, Lcom/netflix/msl/client/ClientMslContext;->builder()Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    new-instance v3, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;

    invoke-direct {v3, p1}, Lcom/netflix/msl/entityauth/UnauthenticatedAuthenticationData;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v3}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p3}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->mslStore(Lcom/netflix/msl/util/MslStore;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->entityAuthFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v2}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->keyxFactories(Ljava/util/Map;)Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/netflix/msl/client/ClientMslContext$ClientMslContextBuilder;->build()Lcom/netflix/msl/client/ClientMslContext;

    move-result-object v0

    .line 239
    return-object v0
.end method

.method private extractMslTrustStore(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/client/ModifiableRsaStore;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 425
    if-nez p2, :cond_1

    .line 426
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "extractMslTrustStore:: rsaStore is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    return-void

    .line 430
    :cond_1
    const-string/jumbo v0, "msltruststore"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to find msltruststore in appboot response (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_2
    const-string/jumbo v0, "msltruststore"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
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

    .line 439
    :cond_3
    const-string/jumbo v1, "keys"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    new-instance v0, Lcom/netflix/msl/MslException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unable to find msltruststore keys in appboot response (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_4
    const-string/jumbo v1, "keys"

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 446
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-interface {p2, v0, v3}, Lcom/netflix/msl/client/ModifiableRsaStore;->addPublicKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V
    .locals 2

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MSL channel and URL not known! This should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MSL URL not known! This should NOT happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;->release()V

    .line 557
    return-void
.end method


# virtual methods
.method public apiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)[B
    .locals 2

    .prologue
    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createApiRequest([BLjava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v1

    .line 469
    :try_start_0
    iget-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->processRequest(Ljava/util/concurrent/Future;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 472
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    .line 475
    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    throw v0
.end method

.method public appbootRequest(Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;
    .locals 6

    .prologue
    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->esnProvider:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getAppbootUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appBootRequest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Go to app boot server: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    const/4 v1, 0x0

    .line 395
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 397
    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->createAppbootRequest(Ljava/net/URL;[B)Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;

    move-result-object v1

    .line 398
    iget-object v0, v1, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;->future:Ljava/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->processRequest(Ljava/util/concurrent/Future;)[B

    move-result-object v0

    .line 399
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 401
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const-string/jumbo v0, "nf_msl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AppBoot response body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->rsaStore:Lcom/netflix/msl/client/ModifiableRsaStore;

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->extractMslTrustStore(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/msl/client/ModifiableRsaStore;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    .line 407
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    new-instance v3, Lcom/netflix/msl/MslInternalException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to parse our own url for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->releaseResources(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;)V

    throw v0
.end method

.method public defaultAppbootRequest(Ljava/lang/Long;Ljava/lang/Long;)Lcom/netflix/android/org/json/JSONObject;
    .locals 6

    .prologue
    .line 256
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 257
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 258
    if-eqz p1, :cond_0

    .line 259
    const-string/jumbo v2, "hash"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 262
    :cond_0
    const-string/jumbo v2, "msltruststore"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 263
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 264
    if-eqz p1, :cond_1

    .line 265
    const-string/jumbo v2, "hash"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;J)Lcom/netflix/android/org/json/JSONObject;

    .line 268
    :cond_1
    const-string/jumbo v2, "ssltruststore"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 269
    return-object v0
.end method

.method public bridge synthetic get()Lcom/netflix/msl/keyx/KeyRequestData;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->get()Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/netflix/msl/keyx/WidevineKeyRequestData;
    .locals 2

    .prologue
    .line 626
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "WidevineKeyRequestDataProvider::get:"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getKeyRequestData()Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getApiUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const-string/jumbo v1, "/msl"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->getApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getUrlProvider()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->urlProvider:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    return-object v0
.end method

.method public getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->getUserIdToken(Ljava/lang/String;)Lcom/netflix/msl/tokens/UserIdToken;

    move-result-object v0

    return-object v0
.end method

.method public processRequest(Ljava/util/concurrent/Future;)[B
    .locals 4
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
    const/4 v3, 0x0

    .line 504
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/msg/MslControl$MslChannel;

    .line 505
    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No MslChannel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Execution exception: "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 513
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 514
    instance-of v1, v0, Lcom/netflix/msl/MslException;

    if-eqz v1, :cond_2

    .line 515
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "MSL exception found "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    check-cast v0, Lcom/netflix/msl/MslException;

    throw v0

    .line 509
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/netflix/msl/msg/MslControl$MslChannel;->input:Lcom/netflix/msl/msg/MessageInputStream;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "processRequest:: check input stream for error... "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v0}, Lcom/netflix/msl/msg/MessageInputStream;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_4

    .line 535
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const-string/jumbo v0, "nf_msl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processRequest:: Error found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/msl/msg/ErrorHeader;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;-><init>(Lcom/netflix/msl/msg/ErrorHeader;)V

    throw v0

    .line 519
    :cond_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 520
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Runtime exception found "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 524
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 526
    :catch_1
    move-exception v0

    .line 527
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Interrupted exception found "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 540
    :cond_4
    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "processRequest:: response received... "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/netflix/msl/util/IoUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 542
    return-object v0
.end method

.method public declared-synchronized removeUserData()V
    .locals 1

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->clearUserIdTokens()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldExecuteAppBotSynchronously()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient;->mslStore:Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslStore;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public unwrapApiResponse([B)Lcom/netflix/msl/client/ApiHttpWrapper;
    .locals 8

    .prologue
    .line 348
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 349
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    .line 351
    const-string/jumbo v2, "edgemsl-version"

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    .line 353
    const-string/jumbo v0, "headers"

    invoke-static {v3, v0}, Lcom/netflix/msl/util/JsonUtil;->getMap(Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 354
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 355
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 357
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    :cond_0
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 364
    const-string/jumbo v5, "payload"

    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    .line 365
    const-string/jumbo v5, "data"

    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-static {v3}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 368
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    const-string/jumbo v5, "nf_msl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Raw unwrapped response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    new-instance v1, Lcom/netflix/msl/client/ApiHttpWrapper;

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/netflix/msl/client/ApiHttpWrapper;-><init>(Ljava/lang/String;Ljava/util/Map;I[B)V

    return-object v1
.end method

.method public wrapApiRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 306
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 307
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 309
    const-string/jumbo v0, "path"

    invoke-virtual {v3, v0, p1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 310
    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 311
    if-eqz p3, :cond_0

    .line 312
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 314
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 320
    :cond_0
    const-string/jumbo v0, "query"

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {v3, v0, p4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 321
    const-string/jumbo v0, "headers"

    invoke-virtual {v3, v0, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 322
    invoke-static {p5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 325
    const-string/jumbo v1, "payload"

    invoke-virtual {v3, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 326
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 328
    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    const-string/jumbo v0, "method"

    invoke-virtual {v3, v0, p2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 332
    :cond_2
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 333
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 334
    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 336
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :cond_3
    new-instance p4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    goto :goto_1
.end method
