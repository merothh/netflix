.class public abstract Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.super Ljava/lang/Object;
.source "BaseEsnProvider.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;


# static fields
.field protected static final DELIM:Ljava/lang/String;

.field protected static final DEVICE_MODEL_LIMIT:I = 0x1f

.field protected static final DEVICE_MODEL_LIMIT_BRAND:I = 0xa

.field protected static final ESN_DELIM:Ljava/lang/String;

.field public static final ESN_PREFIX:Ljava/lang/String;

.field protected static final MANUFACTURER_LIMIT:I = 0x5

.field protected static final MODEL_LIMIT:I = 0x2d

.field protected static final TAG:Ljava/lang/String; = "ESN"

.field protected static final UKNOWN:Ljava/lang/String; = "unknown"

.field protected static hashedDeviceId:Ljava/lang/String;

.field protected static hashedDeviceId2:Ljava/lang/String;


# instance fields
.field protected deviceId:Ljava/lang/String;

.field protected esn:Ljava/lang/String;

.field protected fesn:Ljava/lang/String;

.field protected fesn2:Ljava/lang/String;

.field protected fesnModelId:Ljava/lang/String;

.field protected mEsnPrefix:Ljava/lang/String;

.field protected modelId:Ljava/lang/String;

.field protected nrdpDeviceModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getEsnPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getEsnDelim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_DELIM:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getModelDelim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFesnModelId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findBaseModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findBaseModelId()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x2d

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MANUFACTURER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PRODUCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOARD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOTLOADER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BRAND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FINGERPRINT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CPU_ABI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CPU_ABI2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HARDWARE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TYPE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "S"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Model was bigger than: 45. Using first 45 characters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getManufactorer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Model ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public static findDeviceModel()Ljava/lang/String;
    .locals 8

    const/16 v0, 0xa

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, "ESN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BRAND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ESN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MODEL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    rsub-int/lit8 v0, v0, 0x1f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static findFutureDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getIMEA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getMacAddressAndSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Device ID not found, use and save random id"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getRandom(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Emulator"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "1012UAR71QB0A91"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static findFutureDeviceId2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getMacAddressAndSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Device ID not found, use and save random id"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getRandom(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Emulator"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "1012UAR71QB0A91"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Android ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findFutureDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===> Future Device ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getDeviceIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->hashSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===> Hashed Device ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ESN"

    const-string/jumbo v4, "===> Failed to hash device id. Use plain and report this"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getHashedDeviceId2(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findFutureDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===> Future Device ID2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getDeviceIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->hashSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===> Hashed Device ID2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ESN"

    const-string/jumbo v4, "===> Failed to hash device id2. Use plain and report this"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getIMEA(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Device is not a phone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMEA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMacAddressAndSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "Both mac address and SERIAL are null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MAC address is NULL, but SERIAL exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SERIAL is NULL, but MAC address exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SERIAL and MAC address both exist, return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getManufactorer()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method private static declared-synchronized getRandom(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "nf_rnd_device_id"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "nf_rnd_device_id"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->modelId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "===> Device ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ESN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getDeviceIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getDeviceIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->hashSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->deviceId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->modelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_DELIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->esn:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->nrdpDeviceModel:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NRDP device model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->nrdpDeviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->esn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->esn:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ESN"

    const-string/jumbo v1, "==> ESN and future ESN are the same!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ESN"

    const-string/jumbo v3, "===> Failed to hash device id. Use plain and report this"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private initFutureEsn(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findBaseModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesnModelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesnModelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_DELIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "===> fESN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initFutureEsn2(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->findBaseModelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesnModelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getHashedDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesnModelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_DELIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->hashedDeviceId2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn2:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ESN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "===> fEsn2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static validateChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3d

    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_3
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_5

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract findDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected abstract findModelId()Ljava/lang/String;
.end method

.method protected generateEsnPrefix()V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->mEsnPrefix:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->ESN_PREFIX:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->mEsnPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getCryptoFactoryType()I
.end method

.method protected abstract getCryptoProvider()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->nrdpDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->mEsnPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->esn:Ljava/lang/String;

    return-object v0
.end method

.method public getFesn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn:Ljava/lang/String;

    return-object v0
.end method

.method public getFesn2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesn2:Ljava/lang/String;

    return-object v0
.end method

.method public getFesnModelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->fesnModelId:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelId()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->initFutureEsn(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->initFutureEsn2(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->generateEsnPrefix()V

    return-void
.end method
