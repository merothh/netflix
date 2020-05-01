.class Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;
.source "NtbaWidevineOperationErrorHandler.java"


# instance fields
.field private mFailureType:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    .line 21
    return-void
.end method

.method static canHandle(Lcom/netflix/mediaclient/StatusCode;)Z
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->INSTANCE:Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorManager;->getErrorLogger()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->getForceStopTask(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->getErrorMessageForFatalError()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V

    return-object v0
.end method
