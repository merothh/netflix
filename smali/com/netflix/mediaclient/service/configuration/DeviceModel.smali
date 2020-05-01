.class public Lcom/netflix/mediaclient/service/configuration/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "samurai"


# instance fields
.field apiLevel:I

.field appType:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field appVersionCode:I

.field buildPropBoard:Ljava/lang/String;

.field buildPropDisplay:Ljava/lang/String;

.field category:Lcom/netflix/mediaclient/util/DeviceCategory;

.field device:Ljava/lang/String;

.field esnModelId:Ljava/lang/String;

.field fingerprint:Ljava/lang/String;

.field manufacturer:Ljava/lang/String;

.field model:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->model:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->esnModelId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->manufacturer:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->fingerprint:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->device:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->buildPropBoard:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->buildPropDisplay:Ljava/lang/String;

    const-string/jumbo v0, "samurai"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appType:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->manufacturer:Ljava/lang/String;

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->model:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->buildFesnModelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->esnModelId:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->fingerprint:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->apiLevel:I

    iput p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appVersionCode:I

    invoke-static {p2}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appVersion:Ljava/lang/String;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    :goto_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->device:Ljava/lang/String;

    :cond_3
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->buildPropBoard:Ljava/lang/String;

    :cond_4
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->buildPropDisplay:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0
.end method


# virtual methods
.method public getApiLevel()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->apiLevel:I

    return v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->appVersionCode:I

    return v0
.end method

.method public getBuildPropBoard()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->buildPropBoard:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildPropDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildPropDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->buildPropDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getEsnModelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->esnModelId:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getFormFactor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceModel;->model:Ljava/lang/String;

    return-object v0
.end method
