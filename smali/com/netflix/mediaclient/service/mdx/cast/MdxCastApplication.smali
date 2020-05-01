.class public Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "MdxCastApplication.java"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final CAST_SEND_MEESAGE_TIMEOUT_MS:J = 0x1388L

.field private static final MESSAGE_NAMESPACE:Ljava/lang/String; = "urn:x-cast:mdx-netflix-com:service:target:2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final mApplicationId:Ljava/lang/String;

.field private mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mForceLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mForceLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnectionSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApplicationId:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mForceLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    invoke-static {p3, p0}, Lcom/google/android/gms/cast/Cast$CastOptions;->builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CastOptions.Builder setVerboseLoggingEnabled(true)"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    .line 120
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 126
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mForceLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private joinApp()V
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApplicationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;

    invoke-direct {v1, p0, p0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 205
    return-void
.end method

.method private launchApp()V
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApplicationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;

    invoke-direct {v1, p0, p0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$LaunchResultCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 198
    return-void
.end method

.method private logAppStatus()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationMetadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v0, :cond_0

    .line 220
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSenderAppIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getSenderAppIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApplicationStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cast.Listener disconnected with statusCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplicationDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onApplicationStopped(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cast.Listener onApplicationStatusChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 176
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GoogleApiClient connect(), success arg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnectionSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mForceLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "forced, GoogleApiClient launchApp()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->launchApp()V

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GoogleApiClient joinApp()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->joinApp()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mForceLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "launch"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " has IllegalStateException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToConnect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "join"

    goto :goto_1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GoogleApiClient connect(), failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnectionSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectionResult ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToConnect(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 208
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GoogleApiClient connect(), suspended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnectionSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionSuspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onFailToConnect(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 249
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessageReceived :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mCallback:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;

    invoke-interface {v0, p3}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;->onMessageReceived(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onVolumeChanged()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mConnectionSuspended:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SendMessage(), message delivered to cast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-string/jumbo v2, "urn:x-cast:mdx-netflix-com:service:target:2"

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$SendMessageResultCallback;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$1;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SendMessage(), connection suspended, message can\'t be delivered"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SendMessage(), disconnected, message can\'t be delivered"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-string/jumbo v2, "urn:x-cast:mdx-netflix-com:service:target:2"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    goto :goto_1
.end method
