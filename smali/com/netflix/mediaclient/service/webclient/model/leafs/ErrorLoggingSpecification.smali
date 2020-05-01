.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
.super Ljava/lang/Object;
.source "ErrorLoggingSpecification.java"


# static fields
.field private static final DEFAULT_DISABLE:Z = false

.field private static final DEFAULT_DISABLE_CHANCE_PERCENTAGE:I = 0x32

.field private static TAG:Ljava/lang/String;


# instance fields
.field private disable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disable"
    .end annotation
.end field

.field private disableChancePercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableChancePercentage"
    .end annotation
.end field

.field private implementation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "implementation"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_log"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disable:Z

    const/16 v1, 0x32

    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disableChancePercentage:I

    return-object v0
.end method

.method public static loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "error_log_configuration"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error specification not found in file system"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error logging specification loaded from file system"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to load error logging specification from file system"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "error_log_configuration"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Breadcrumb logging spec not found, return default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string/jumbo v1, "error_log_configuration"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disable:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disable:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disableChancePercentage:I

    iget v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disableChancePercentage:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDisableChancePercentage()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disableChancePercentage:I

    return v0
.end method

.method public getImplementation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->implementation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disableChancePercentage:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorLoggingSpecification [implementation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->implementation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", disableChancePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->disableChancePercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
