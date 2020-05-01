.class public Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;
.super Lcom/netflix/mediaclient/media/AesCtrCryptoModeDescriptor;
.source ""


# instance fields
.field private clearBlocks:I

.field private encryptedBlocks:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/AesCtrCryptoModeDescriptor;-><init>()V

    .line 17
    iput p1, p0, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;->encryptedBlocks:I

    .line 18
    iput p2, p0, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;->clearBlocks:I

    return-void
.end method


# virtual methods
.method public getClearBlocks()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;->clearBlocks:I

    return v0
.end method

.method public getEncryptedBlocks()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/netflix/mediaclient/media/AesCbcCryptoModeDescriptor;->encryptedBlocks:I

    return v0
.end method
