.class public Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnCdmNexus7Provider.java"


# static fields
.field private static final DEVICE_TYPE_PREFIX:Ljava/lang/String; = "PRV-"


# instance fields
.field private drmSystemId:Ljava/lang/String;

.field private drmUniqueDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DrmManager is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getDeviceId()[B

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->drmSystemId:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MediaDrm.uniqueDeviceId is null! We can not use this ESN implementation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->drmUniqueDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->drmUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->drmSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateEsnPrefix()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->ESN_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmNexus7Provider;->mEsnPrefix:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getCryptoFactoryType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->WIDEVINE_L1:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
