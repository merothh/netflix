.class Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;
.super Ljava/lang/Object;
.source "WidevineDrmManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$WidewineProvisiongCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 337
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Blacklisted Widevine plugin? Do NOT use it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->handleCryptoFallback()Z

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_DECLINED_PROVISIONING:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "15002. Provisiong failed with status code 400 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public done([B)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    if-eqz p1, :cond_2

    .line 306
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got CDM provisiong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->drm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->init()V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server declined Widewine provisioning request. Server URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 316
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 317
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Server declined Widewine provisioning request. Server URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Build: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fatal error on seting Widewine provisioning response"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 321
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fatal error on seting Widewine provisioning response received from URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Build: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/Throwable;)V

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 328
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to get provisiong certificate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get provisiong certificate. Response is null from URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
