.class public interface abstract Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
.super Ljava/lang/Object;
.source "EsnProvider.java"


# static fields
.field public static final CRYPTO_FACTORY_TYPE_CDM_WIDEVINE:I = 0x2

.field public static final CRYPTO_FACTORY_TYPE_LEGACY:I = 0x1

.field public static final ESN_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getEsnPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->ESN_PREFIX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getCryptoFactoryType()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getESNPrefix()Ljava/lang/String;
.end method

.method public abstract getEsn()Ljava/lang/String;
.end method

.method public abstract getFesn()Ljava/lang/String;
.end method

.method public abstract getFesn2()Ljava/lang/String;
.end method

.method public abstract getFesnModelId()Ljava/lang/String;
.end method

.method public abstract getManufacturer()Ljava/lang/String;
.end method

.method public abstract getModelId()Ljava/lang/String;
.end method
