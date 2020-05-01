.class Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;
.source "NtbaWidevineDefaultErrorHandler.java"


# instance fields
.field private mFailureType:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    .line 23
    return-void
.end method


# virtual methods
.method getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public handle(Landroid/content/Context;Ljava/lang/Throwable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
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

    .line 38
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->logHandledException(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaDrm defaul failure for NTBA, kill app and let user restart..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->mFailureType:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;->getForceStopTask(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    const v3, 0x7f080169

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V

    return-object v0
.end method
