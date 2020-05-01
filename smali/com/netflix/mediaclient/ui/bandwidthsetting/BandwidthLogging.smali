.class public final Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;
.super Ljava/lang/Object;
.source "BandwidthLogging.java"


# static fields
.field public static final PRINT_LOG_DATA:Z = true

.field private static final TAG:Ljava/lang/String; = "nf_bw_Logging"


# instance fields
.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field private newValue:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newValue"
    .end annotation
.end field

.field private oldValue:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oldValue"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settingName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;->oldValue:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;->newValue:Ljava/lang/Boolean;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;->location:Ljava/lang/String;

    return-void
.end method

.method private static createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;ZLcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;
    .locals 3

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportBandwidthSettingChange(Landroid/content/Context;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;->createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;ZLcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportLocalSettingsChange(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_bw_Logging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BandwidthLogging as json: "

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
