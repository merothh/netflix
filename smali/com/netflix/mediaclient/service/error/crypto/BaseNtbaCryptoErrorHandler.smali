.class abstract Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;
.super Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;
.source "BaseNtbaCryptoErrorHandler.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "nf_crypto_error_ntba"

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/BaseNtbaCryptoErrorHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/error/crypto/BaseCryptoErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method getErrorSource()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->ntba:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method
