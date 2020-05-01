.class final Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandlerFactory;
.super Ljava/lang/Object;
.source "CryptoErrorHandlerFactory.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_crypto_error"

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandlerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCryptoErrorHandler(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandlerFactory;->getMslErrorHandler(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandlerFactory;->getNtbaErrorHandler(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Playback error sources not supported at this moment!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMslErrorHandler(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineNonFatalErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineNonFatalErrorHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineNonFatalErrorHandler;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevinePluginChangedErrorHandler;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineGetKeyRequestFailedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineGetKeyRequestFailedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineGetKeyRequestFailedErrorHandler;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyResponseFailedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyResponseFailedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyResponseFailedErrorHandler;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyRestoreFailedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyRestoreFailedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/MslWidevineProvideKeyRestoreFailedErrorHandler;-><init>()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNtbaErrorHandler(Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/service/error/crypto/CryptoErrorHandler;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineGetKeyRequestFailedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineGetKeyRequestFailedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineGetKeyRequestFailedErrorHandler;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevinePluginChangedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevinePluginChangedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevinePluginChangedErrorHandler;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineProvideKeyRestoreFailedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineProvideKeyRestoreFailedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineProvideKeyRestoreFailedErrorHandler;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineProvideKeyResponseFailedErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineProvideKeyResponseFailedErrorHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineProvideKeyResponseFailedErrorHandler;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;->canHandle(Lcom/netflix/mediaclient/StatusCode;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineOperationErrorHandler;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/error/crypto/NtbaWidevineDefaultErrorHandler;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0
.end method
