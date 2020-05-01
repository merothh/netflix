.class Lo/cG$6;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG;->aV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/cG;


# direct methods
.method constructor <init>(Lo/cG;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lo/cG$6;->d:Lo/cG;

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1059
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_configurationagent"

    const-string v4, "fetchDeviceConfigOnAppStart onConfigDataFetched statusCode=%d"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1060
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1062
    iget-object p1, p0, Lo/cG$6;->d:Lo/cG;

    invoke-static {p1}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object p1

    invoke-virtual {p1}, Lo/cH;->O()V

    .line 1064
    iget-object p1, p0, Lo/cG$6;->d:Lo/cG;

    invoke-static {p1}, Lo/cG;->n(Lo/cG;)V

    goto :goto_3

    :cond_0
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object p1, v4, v0

    const-string v5, "error in fetching first config status: %s, deviceConfig: %s"

    .line 1067
    invoke-static {v2, v5, v4}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1070
    iget-object v4, p0, Lo/cG$6;->d:Lo/cG;

    invoke-static {v4}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object v4

    invoke-virtual {v4}, Lo/cH;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1071
    iget-object p2, p0, Lo/cG$6;->d:Lo/cG;

    invoke-static {p2}, Lo/cG;->a(Lo/cG;)Lo/cH;

    move-result-object p2

    invoke-virtual {p2}, Lo/cH;->Q()V

    const-string p2, "recovered using pre-5.0 configs"

    .line 1072
    invoke-static {v2, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 1076
    :cond_1
    iget-object v2, p0, Lo/cG$6;->d:Lo/cG;

    invoke-static {v2}, Lo/cG;->c(Lo/cG;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    aput-object p1, v1, v0

    const-string p1, "status= %s, configData= %s"

    .line 1077
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1078
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1081
    :goto_1
    iget-object p1, p0, Lo/cG$6;->d:Lo/cG;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    sget-object p2, Lo/LegacyErrorStrings;->q:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_2

    :cond_4
    sget-object p2, Lo/LegacyErrorStrings;->n:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :cond_5
    :goto_2
    invoke-static {p1, p2}, Lo/cG;->c(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_3
    return-void
.end method
