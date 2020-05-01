.class public final Lo/acD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Lo/acD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/acD;

    invoke-direct {v0}, Lo/acD;-><init>()V

    sput-object v0, Lo/acD;->d:Lo/acD;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b(Lo/nS;)Lcom/netflix/cl/model/StorageLocationKind;
    .locals 1

    .line 67
    invoke-interface {p0}, Lo/nS;->p()Lo/Bg;

    move-result-object p0

    const-string v0, "offlineAgent.offlineStorageVolumeList"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Lo/Bg;->d()I

    move-result v0

    invoke-interface {p0, v0}, Lo/Bg;->b(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 69
    sget-object p0, Lcom/netflix/cl/model/StorageLocationKind;->external:Lcom/netflix/cl/model/StorageLocationKind;

    return-object p0

    .line 70
    :cond_0
    sget-object p0, Lcom/netflix/cl/model/StorageLocationKind;->internal:Lcom/netflix/cl/model/StorageLocationKind;

    return-object p0
.end method

.method public static final b(Lo/Am;)V
    .locals 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lo/Am;->u()Lo/nP;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string v0, "CLSettingsUtils: SmartDownloadController is null"

    .line 24
    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    if-nez v1, :cond_1

    .line 29
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string v0, "CLSettingsUtils: OfflineAgent is null"

    .line 30
    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lo/Am;->a()Landroid/content/Context;

    move-result-object p0

    const-string v2, "manager.context"

    invoke-static {p0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 36
    new-instance v11, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;

    .line 37
    invoke-static {p0}, Lo/cT;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 38
    invoke-interface {v0}, Lo/nP;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 39
    invoke-interface {v1}, Lo/nS;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 40
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 41
    invoke-static {p0}, Lo/acD;->e(Landroid/content/Context;)Lcom/netflix/cl/model/CellularDataUsageLevel;

    move-result-object v8

    .line 42
    invoke-static {v1}, Lo/acD;->b(Lo/nS;)Lcom/netflix/cl/model/StorageLocationKind;

    move-result-object v9

    .line 43
    invoke-static {v1}, Lo/acD;->c(Lo/nS;)Lcom/netflix/cl/model/VideoQualityLevel;

    move-result-object v10

    move-object v3, v11

    .line 36
    invoke-direct/range {v3 .. v10}, Lcom/netflix/cl/model/event/discrete/AccountSettingsReported;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/netflix/cl/model/CellularDataUsageLevel;Lcom/netflix/cl/model/StorageLocationKind;Lcom/netflix/cl/model/VideoQualityLevel;)V

    check-cast v11, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    .line 35
    invoke-virtual {v2, v11}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method private static final c(Lo/nS;)Lcom/netflix/cl/model/VideoQualityLevel;
    .locals 1

    .line 60
    invoke-interface {p0}, Lo/nS;->h()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 61
    sget-object p0, Lcom/netflix/cl/model/VideoQualityLevel;->high:Lcom/netflix/cl/model/VideoQualityLevel;

    return-object p0

    .line 62
    :cond_0
    sget-object p0, Lcom/netflix/cl/model/VideoQualityLevel;->standard:Lcom/netflix/cl/model/VideoQualityLevel;

    return-object p0
.end method

.method private static final e(Landroid/content/Context;)Lcom/netflix/cl/model/CellularDataUsageLevel;
    .locals 1

    .line 51
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/netflix/cl/model/CellularDataUsageLevel;->automatic:Lcom/netflix/cl/model/CellularDataUsageLevel;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p0}, Lo/x;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/netflix/cl/model/CellularDataUsageLevel;->wifiOnly:Lcom/netflix/cl/model/CellularDataUsageLevel;

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p0}, Lo/x;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/netflix/cl/model/CellularDataUsageLevel;->maximumData:Lcom/netflix/cl/model/CellularDataUsageLevel;

    goto :goto_0

    .line 54
    :cond_2
    sget-object p0, Lcom/netflix/cl/model/CellularDataUsageLevel;->saveData:Lcom/netflix/cl/model/CellularDataUsageLevel;

    :goto_0
    return-object p0
.end method
