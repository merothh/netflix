.class public Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineGetKeyRequestFailedErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;
.source "NtbaWidevineGetKeyRequestFailedErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;-><init>()V

    return-void
.end method

.method static canHandle(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineGetKeyRequestFailedErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "NTBA get key request failed. Unregister device, logout user, and kill app process after error is displayed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineGetKeyRequestFailedErrorHandler;->handleKillApp(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method
