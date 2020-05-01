.class public final Lo/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I

.field private static final b:Ljava/lang/Boolean;

.field public static c:I

.field private static final d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lo/x;->d:Ljava/lang/Boolean;

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    sput v0, Lo/x;->a:I

    const/16 v0, 0x4b0

    .line 32
    sput v0, Lo/x;->c:I

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lo/x;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 73
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 91
    invoke-static {p0}, Lo/x;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "nf_play_no_wifi_warning"

    .line 92
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 95
    :cond_0
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 99
    :cond_1
    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 100
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-ne v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    const-string v0, "bw_user_manual_setting"

    const/4 v1, -0x1

    .line 60
    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 61
    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v2

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->c:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    .line 63
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->e:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    .line 64
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 66
    :cond_0
    sget v1, Lo/x;->a:I

    .line 67
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I
    .locals 2

    .line 209
    invoke-static {p0}, Lo/x;->i(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x4e20

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0, p1}, Lo/x;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e20

    .line 222
    :goto_0
    invoke-static {}, Lo/adk;->c()I

    move-result p1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 223
    invoke-static {}, Lo/qA;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 224
    sget p0, Lo/x;->c:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_1
    return p0
.end method

.method private static c(Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;->getLow()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;->getLow()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData;->Companion:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;->getDEFAULT_MANUAL_VIDEO_BITRATE_LOW()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/Boolean;I)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "bw_user_control_auto"

    invoke-static {p0, v0, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p1, "bw_user_manual_setting"

    .line 56
    invoke-static {p0, p1, p2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "bw_user_control_auto"

    const/4 v1, -0x1

    .line 46
    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_0

    .line 48
    sget-object p0, Lo/x;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static e(ILcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I
    .locals 1

    .line 155
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->a:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 156
    invoke-static {p1}, Lo/x;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I

    move-result p0

    return p0

    .line 158
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result p1

    if-ne p1, p0, :cond_1

    const/16 p0, 0x4e20

    return p0

    .line 161
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result p1

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData;->Companion:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;->getDEFAULT_CELLULAR_AUTO_KBPS()I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I
    .locals 2

    .line 142
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1}, Lo/x;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I

    move-result p0

    return p0

    .line 147
    :cond_0
    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 148
    invoke-static {p0, p1}, Lo/x;->e(ILcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "nf_bw_saving"

    const-string v1, "getCellularVideoBitrateKbps manual: %b,  : %d"

    invoke-static {p0, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1
.end method

.method private static e(Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;->getAuto()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;->getAuto()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData;->Companion:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamProfileData$Companion;->getDEFAULT_CELLULAR_AUTO_KBPS()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "auto"

    return-object p0

    .line 80
    :cond_0
    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-string p0, "off"

    return-object p0

    .line 83
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-string p0, "max"

    return-object p0

    :cond_2
    const-string p0, "low"

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "disable_data_saver"

    const/4 v1, 0x0

    .line 125
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 5

    .line 108
    invoke-static {p0}, Lo/x;->f(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "nf_bw_saving"

    if-eqz v0, :cond_0

    const-string p0, "Data saver functionality is not yet enabled .. skip migrate"

    .line 109
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "nf_play_no_wifi_warning"

    const/4 v2, 0x0

    .line 113
    invoke-static {p0, v0, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "migrating wifi only setting to latest"

    .line 115
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v3

    .line 118
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lo/x;->d(Landroid/content/Context;Ljava/lang/Boolean;I)V

    const-string v3, "unsetting old wifi only setting"

    .line 119
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p0, v0, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    .line 168
    sget-object v0, Lo/x;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, "nf_bw_saving"

    const-string v0, "no cellular!!"

    .line 173
    invoke-static {p0, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 177
    :cond_1
    invoke-static {p0}, Lo/x;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    .line 185
    invoke-static {p0}, Lo/x;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 193
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 197
    :cond_1
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 201
    :cond_2
    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 202
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-eq v0, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 5

    .line 129
    invoke-static {p0}, Lo/x;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "shouldLimitCellularVideoBitrate :%b"

    const-string v2, "nf_bw_saving"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    new-array p0, v4, [Ljava/lang/Object;

    .line 131
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, v3

    invoke-static {v2, v1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4

    .line 135
    :cond_0
    invoke-static {p0}, Lo/x;->c(Landroid/content/Context;)I

    move-result p0

    .line 136
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->b:Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/ManualBwChoice;->d()I

    move-result v0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 137
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    .line 240
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/x;->j(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
