.class public Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;
.super Ljava/lang/Object;
.source "AuthorizationParams.java"


# static fields
.field private static final PARAM_ENABLE_PREVIEW_CONTENT:Ljava/lang/String; = "supportsPreviewContent"

.field private static final PARAM_IS_BROWSE_PLAY:Ljava/lang/String; = "isBrowsePlay"

.field private static final PARAM_NET_TYPE:Ljava/lang/String; = "nettype"

.field private static final PARAM_NET_TYPE_VALUE_MOBILE:Ljava/lang/String; = "mobile"

.field private static final PARAM_NET_TYPE_VALUE_WIFI:Ljava/lang/String; = "wifi"

.field private static final PARAM_NET_TYPE_VALUE_WIRED:Ljava/lang/String; = "wired"

.field private static final PARAM_PIN_VERIFY_CAPABILITY:Ljava/lang/String; = "pinCapableClient"

.field private static final PARAM_PLAY_CONTEXT:Ljava/lang/String; = "uiplaycontext"

.field private static final PARAM_PLAY_CONTEXT_LIST_POS:Ljava/lang/String; = "row"

.field private static final PARAM_PLAY_CONTEXT_REQ_ID:Ljava/lang/String; = "request_id"

.field private static final PARAM_PLAY_CONTEXT_VIDEO_POS:Ljava/lang/String; = "rank"

.field private static final PARAM_PLAY_MOBILE_ASN_FILTERING:Ljava/lang/String; = "filterBasedOnMobileASN"

.field protected static final TAG:Ljava/lang/String; = "nf_invoke"


# instance fields
.field private mDontFilterForMobileAsn:Z

.field private mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPreviewContentEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Play context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object p3, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iput-boolean p4, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPreviewContentEnabled:Z

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mDontFilterForMobileAsn:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getNetType()Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "nettype"

    const-string/jumbo v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v1, "pinCapableClient"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "supportsPreviewContent"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPreviewContentEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "request_id"

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "row"

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "rank"

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "uiplaycontext"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "isBrowsePlay"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getBrowsePlay()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "DEBUG info: reqId %s, listPos %d,  videoPos %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mDontFilterForMobileAsn:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "filterBasedOnMobileASN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "DEBUG info: sessionParams: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "nettype"

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_2
    const-string/jumbo v2, "nf_invoke"

    const-string/jumbo v3, "Failed to create JSON object"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    :try_start_2
    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "nettype"

    const-string/jumbo v2, "wired"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "nettype"

    const-string/jumbo v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method
