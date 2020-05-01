.class public Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
.super Ljava/lang/Object;
.source "MdxTargetCapabilities.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;


# static fields
.field protected static PROPERTY_autoAdvanceMax:Ljava/lang/String;

.field protected static PROPERTY_is3dSupported:Ljava/lang/String;

.field protected static PROPERTY_is5dot1Supported:Ljava/lang/String;

.field protected static PROPERTY_isDolbyVisionSupported:Ljava/lang/String;

.field protected static PROPERTY_isHdSupported:Ljava/lang/String;

.field protected static PROPERTY_isHdr10Supported:Ljava/lang/String;

.field protected static PROPERTY_isUltraHdSupported:Ljava/lang/String;

.field protected static PROPERTY_volumeControl:Ljava/lang/String;

.field protected static PROPERTY_volumeStep:Ljava/lang/String;


# instance fields
.field private autoAdvanceMax:I

.field private is3dSupported:Z

.field private is5dot1Supported:Z

.field private isDolbyVisionSupported:Z

.field private isHdSupported:Z

.field private isHdr10Supported:Z

.field private isUltraHdSupported:Z

.field private volumeControl:Z

.field private volumeStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "isHdSupported"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isHdSupported:Ljava/lang/String;

    const-string/jumbo v0, "is5dot1Supported"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_is5dot1Supported:Ljava/lang/String;

    const-string/jumbo v0, "is3dSupported"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_is3dSupported:Ljava/lang/String;

    const-string/jumbo v0, "autoAdvanceMax"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_autoAdvanceMax:Ljava/lang/String;

    const-string/jumbo v0, "volumeControl"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_volumeControl:Ljava/lang/String;

    const-string/jumbo v0, "volumeStep"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_volumeStep:Ljava/lang/String;

    const-string/jumbo v0, "isUltraHdSupported"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isUltraHdSupported:Ljava/lang/String;

    const-string/jumbo v0, "isUHDAHDRSupported"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isHdr10Supported:Ljava/lang/String;

    const-string/jumbo v0, "isDVHDRSupported"

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isDolbyVisionSupported:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_is3dSupported:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->is3dSupported:Z

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isHdSupported:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isHdSupported:Z

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_is5dot1Supported:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->is5dot1Supported:Z

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isUltraHdSupported:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isUltraHdSupported:Z

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_autoAdvanceMax:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->autoAdvanceMax:I

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_volumeControl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_volumeControl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->volumeControl:Z

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_volumeStep:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_volumeStep:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->volumeStep:I

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isHdr10Supported:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isHdr10Supported:Z

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->PROPERTY_isDolbyVisionSupported:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isDolbyVisionSupported:Z

    return-void
.end method


# virtual methods
.method public getAutoAdvanceMax()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->autoAdvanceMax:I

    return v0
.end method

.method public getVolumeStep()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->volumeStep:I

    return v0
.end method

.method public is3dSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->is3dSupported:Z

    return v0
.end method

.method public is5dot1Supported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->is5dot1Supported:Z

    return v0
.end method

.method public isDolbyVisionSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isDolbyVisionSupported:Z

    return v0
.end method

.method public isHdSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isHdSupported:Z

    return v0
.end method

.method public isHdr10Supported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isHdr10Supported:Z

    return v0
.end method

.method public isUltraHdSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isUltraHdSupported:Z

    return v0
.end method

.method public isVolumeControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->volumeControl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MdxTargetCapabilities [isHdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isHdSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is5dot1Supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->is5dot1Supported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is3dSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->is3dSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoAdvanceMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->autoAdvanceMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->volumeControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->volumeStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isUltraHdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isUltraHdSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHdr10Supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isHdr10Supported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDolbyVisionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isDolbyVisionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
