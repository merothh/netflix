.class public Lcom/netflix/mediaclient/media/CryptoModeDescriptorFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAesCbcCryptoModeDescriptor(II)Lcom/netflix/mediaclient/media/CryptoModeDescriptor;
    .locals 1

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;-><init>(II)V

    return-object v0
.end method

.method public static createAesCtrCryptoModeDescriptor()Lcom/netflix/mediaclient/media/CryptoModeDescriptor;
    .locals 1

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/media/AesCtrCryptoModeDescriptor;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/AesCtrCryptoModeDescriptor;-><init>()V

    return-object v0
.end method
