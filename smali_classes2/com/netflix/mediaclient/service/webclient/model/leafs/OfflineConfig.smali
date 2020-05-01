.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_MAINTENANCE_JOB_PERIOD_IN_HRS:I = 0x18

.field private static final TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 3

    .line 29
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineConfig$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineConfig$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, 0x0

    .line 34
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineConfig$GsonTypeAdapter;->setDefaultOfflineFeatureDisabled(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineConfig$GsonTypeAdapter;

    move-result-object p0

    const/16 v0, 0x18

    .line 35
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineConfig$GsonTypeAdapter;->setDefaultMaintenanceJobPeriodInHrs(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_OfflineConfig$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getMaintenanceJobPeriodInHrs()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenanceJobPeriodInHrs"
    .end annotation
.end method

.method public abstract isOfflineFeatureDisabled()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflineFeature"
    .end annotation
.end method
