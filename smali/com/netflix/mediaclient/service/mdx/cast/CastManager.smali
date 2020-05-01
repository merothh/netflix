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

    .prologue
    .line 31
    const-class v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    .line 36
    const-string/jumbo v0, "CA5E8412"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 55
    if-nez p4, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ESN can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    .line 61
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    .line 62
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMyUuid:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxNrdpLogger:Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 65
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeInit()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->startDiscovery()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceLost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeLaunchResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeSendMessageResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stopDiscovery()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method private castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 6

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const-string/jumbo v0, "launch route is null"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onFailToLaunch(Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v3

    .line 248
    if-nez v3, :cond_1

    .line 249
    const-string/jumbo v0, "launch CastDevice is null"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onFailToLaunch(Ljava/lang/String;)V

    goto :goto_0

    .line 252
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

    .prologue
    .line 508
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 509
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
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

    .line 513
    :cond_0
    :try_start_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "castHandShake"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    .line 514
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "controlleruuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMyUuid:Ljava/lang/String;

    .line 515
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "friendlyName"

    .line 516
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "payload"

    const-string/jumbo v3, "intent=sync"

    .line 517
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
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

    .line 525
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createCastHandShakeMessage failed, e"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCastMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->findReqPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
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

    .line 533
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    const-string/jumbo v0, ""

    .line 544
    :goto_0
    return-object v0

    .line 536
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 538
    :try_start_0
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createMessage failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findReqPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 548
    const-string/jumbo v0, "action="

    .line 549
    const-string/jumbo v0, "\r\n"

    .line 550
    const-string/jumbo v0, "action="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 551
    if-ltz v0, :cond_0

    .line 552
    const-string/jumbo v1, "action="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 553
    const-string/jumbo v2, "\r\n"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 554
    if-le v0, v1, :cond_0

    .line 555
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getIpAddress()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 583
    const/4 v0, 0x0

    .line 584
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 586
    if-lez v2, :cond_0

    .line 587
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

    .line 590
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cast://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "cast://0.1.2.3"

    goto :goto_0
.end method

.method private getUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
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

    .prologue
    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
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

    .line 394
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "route added, selectRoute "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    .line 397
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 405
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceFoundWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void

    .line 400
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "route added and selected, launch app "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 405
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

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 566
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
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

    .line 568
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

    .line 569
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

    .line 570
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

    .line 571
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

    .line 572
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

    .line 574
    :cond_0
    return-void
.end method

.method private synchronized native declared-synchronized nativeDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private nativeDeviceFoundWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$6;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method private synchronized native declared-synchronized nativeDeviceLost(Ljava/lang/String;)V
.end method

.method private nativeDeviceLostWrapper(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$7;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method private synchronized native declared-synchronized nativeInit()V
.end method

.method private synchronized native declared-synchronized nativeLaunchResult(ZLjava/lang/String;)V
.end method

.method private nativeLaunchResultWrapper(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method

.method private synchronized native declared-synchronized nativeMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private nativeMessageReceivedWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method private synchronized native declared-synchronized nativeRelease()V
.end method

.method private synchronized native declared-synchronized nativeSendMessageResult(ZLjava/lang/String;)V
.end method

.method private nativeSendMessageResultWrapper(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method private notifySessionend()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    .line 721
    const-string/jumbo v0, "session"

    .line 722
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
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

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    .line 729
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

    .line 730
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
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

    .line 733
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeMessageReceivedWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_3
    return-void
.end method

.method private sendMessageToBackgroundReceiver(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method private startDiscovery()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
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

    .line 219
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 227
    :cond_1
    return-void
.end method

.method private stopDiscovery()V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDiscovery"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 232
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 236
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 239
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDiscovery done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeRelease()V

    .line 141
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public launchNetflix(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
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

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onApplicationStopped(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 742
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 743
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

    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySessionend()V

    .line 747
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$12;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    :cond_0
    return-void
.end method

.method public onFailToConnect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 607
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToConnect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 611
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

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySessionend()V

    .line 614
    return-void
.end method

.method public onFailToLaunch(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 622
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToLaunch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 624
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

    .line 625
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeLaunchResultWrapper(ZLjava/lang/String;)V

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToLaunch, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFailToSendMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 710
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToSendMessage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 712
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

    .line 713
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeSendMessageResultWrapper(ZLjava/lang/String;)V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToSendMessage, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLaunched()V
    .locals 2

    .prologue
    .line 637
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 639
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

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunched, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageReceived(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 671
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    const-string/jumbo v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 675
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    :cond_0
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 685
    const-string/jumbo v3, "castHandShakeAck"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v3, :cond_1

    .line 686
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeLaunchResultWrapper(ZLjava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 682
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error onMessageReceived "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 688
    :cond_1
    const-string/jumbo v3, "castHandShakeRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageReceived castHandShakeRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onLaunched()V

    goto :goto_0

    .line 694
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 695
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

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_4

    .line 698
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeMessageReceivedWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageReceived, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageSent()V
    .locals 2

    .prologue
    .line 652
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageSent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeSendMessageResultWrapper(ZLjava/lang/String;)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageSent, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 3

    .prologue
    .line 477
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
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

    .line 480
    :cond_0
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 3

    .prologue
    .line 488
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
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

    .line 491
    :cond_0
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 3

    .prologue
    .line 499
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
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

    .line 502
    :cond_0
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 379
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
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

    .line 381
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->logCastDevice(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 383
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 384
    if-nez v0, :cond_1

    .line 385
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device is not whitelisted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->handleDeviceFirstSeen(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 429
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
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

    .line 431
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->logCastDevice(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 433
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 434
    if-nez v0, :cond_1

    .line 435
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device is not whitelisted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 439
    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 441
    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceFoundWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
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

    .line 444
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->handleDeviceFirstSeen(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 414
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
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

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->nativeDeviceLostWrapper(Ljava/lang/String;)V

    .line 421
    :cond_1
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 345
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
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

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
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

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 355
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 363
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
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

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->stop()V

    .line 368
    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    .line 370
    :cond_1
    iput-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 371
    return-void
.end method

.method public prefetchVideo(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 461
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

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 465
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 466
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

    .line 467
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendMessageToBackgroundReceiver(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public restartCastDiscoveryIfNeeded()V
    .locals 6

    .prologue
    .line 199
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCastDiscoveryIfNeeded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
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

    .line 204
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 206
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCastDiscoveryIfNeeded, restarted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 213
    :cond_0
    return-void
.end method

.method public sendCastMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
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

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->createCastMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendCastMessage(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setCastWhiteList(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
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

    .line 72
    :cond_0
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
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

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    .line 77
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
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

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    :try_start_0
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
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

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "==invalid ApplicationId=="

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Invalid ApplicationId, Enter New One"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ApplicationId!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$2;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method
