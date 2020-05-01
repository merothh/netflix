.class public Lcom/netflix/mediaclient/service/mdx/cast/CastManager;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "CastManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;


# static fields
.field private static final CAST_SERVICE_PREFIX:Ljava/lang/String; = "CastMediaRouteProviderService:"

.field static final NETFLIX_NAMESPACE:Ljava/lang/String; = "urn:x-cast:mdx-netflix-com:service:target:2"

.field private static final NF_APPID:Ljava/lang/String; = "CA5E8412"

.field private static final RE_DISCOVER_AFTER_PREVIOUS_MS:J = 0x3e80L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private mCastPrefix:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mForceLaunch:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMapOfRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

.field private mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private mMediaRouter:Landroid/support/v7/media/MediaRouter;

.field private mMyUuid:Ljava/lang/String;

.field private mPreviousDiscoveryTime:J

.field private mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

.field private mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mTargetId:Ljava/lang/String;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    const-string/jumbo v0, "CA5E8412"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ESN can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMyUuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeInit()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->startDiscovery()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceLost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeLaunchResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeSendMessageResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stopDiscovery()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method private castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v0, "launch route is null"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onFailToLaunch(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v0, "launch CastDevice is null"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onFailToLaunch(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    goto :goto_0
.end method

.method private createCastHandShakeMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createCastHandShakeMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "castHandShake"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "controlleruuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMyUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "friendlyName"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "payload"

    const-string/jumbo v3, "intent=sync"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createCastHandShakeMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createCastHandShakeMessage failed, e"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCastMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->findReqPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "createCastMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createMessage failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findReqPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "action="

    const-string/jumbo v0, "\r\n"

    const-string/jumbo v0, "action="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string/jumbo v1, "action="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const-string/jumbo v2, "\r\n"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getIpAddress()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cast://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "cast://0.1.2.3"

    goto :goto_0
.end method

.method private getUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "CastMediaRouteProviderService:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "CastMediaRouteProviderService:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDeviceFirstSeen(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "route added, selectRoute "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceFoundWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "route added and selected, launch app "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private logCastDevice(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FriendlyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IpAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getIpAddress()Ljava/net/Inet4Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ModelName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServicePort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getServicePort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synchronized native declared-synchronized nativeDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private nativeDeviceFoundWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$6;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synchronized native declared-synchronized nativeDeviceLost(Ljava/lang/String;)V
.end method

.method private nativeDeviceLostWrapper(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$7;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synchronized native declared-synchronized nativeInit()V
.end method

.method private synchronized native declared-synchronized nativeLaunchResult(ZLjava/lang/String;)V
.end method

.method private nativeLaunchResultWrapper(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synchronized native declared-synchronized nativeMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private nativeMessageReceivedWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synchronized native declared-synchronized nativeRelease()V
.end method

.method private synchronized native declared-synchronized nativeSendMessageResult(ZLjava/lang/String;)V
.end method

.method private nativeSendMessageResultWrapper(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifySessionend()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "session"

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "does not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", use targetId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action=endCastSession\r\nfromuuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessageReceived @session, body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeMessageReceivedWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private sendMessageToBackgroundReceiver(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startDiscovery()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscovery() AppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_1
    return-void
.end method

.method private stopDiscovery()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDiscovery"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDiscovery done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeRelease()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public launchNetflix(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchNetflix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onApplicationStopped(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": netflix stopped, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySessionend()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onFailToConnect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToConnect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot coonect to netflix, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySessionend()V

    return-void
.end method

.method public onFailToLaunch(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToLaunch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot launch netflix, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeLaunchResultWrapper(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToLaunch, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFailToSendMessage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToSendMessage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot send message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeSendMessageResultWrapper(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToSendMessage, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLaunched()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->createCastHandShakeMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendCastMessage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunched, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageReceived(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string/jumbo v3, "castHandShakeAck"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeLaunchResultWrapper(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error onMessageReceived "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "castHandShakeRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageReceived castHandShakeRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onLaunched()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMessageReceived @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeMessageReceivedWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageReceived, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageSent()V
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageSent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeSendMessageResultWrapper(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageSent, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProviderAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProviderChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProviderRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRouteAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->logCastDevice(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device is not whitelisted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->handleDeviceFirstSeen(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRouteChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->logCastDevice(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device is not whitelisted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceFoundWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->handleDeviceFirstSeen(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRouteRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceLostWrapper(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRouteSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectedRoute has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRouteUnselected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->stop()V

    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    :cond_1
    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public prefetchVideo(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending prefetch message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

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

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "schedule sending message to cast device, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendMessageToBackgroundReceiver(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restartCastDiscoveryIfNeeded()V
    .locals 6

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCastDiscoveryIfNeeded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    const-wide/16 v4, 0x3e80

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCastDiscoveryIfNeeded, restarted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    :cond_0
    return-void
.end method

.method public sendCastMessage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCastMessage caught an excpetion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->createCastMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendCastMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setCastWhiteList(Lorg/json/JSONArray;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-8472, ignored. setCastWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTargetId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApplicationId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaRouteSelector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "==invalid ApplicationId=="

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Invalid ApplicationId, Enter New One"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ApplicationId!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$2;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
