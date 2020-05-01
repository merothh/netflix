.class Lo/ko$TaskDescription;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Z

.field b:Lo/aeM$Application;

.field c:Lo/Bc;

.field private final d:Z

.field final synthetic e:Lo/ko;

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ko;ZZLjava/lang/String;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-direct {p0}, Lo/cq;-><init>()V

    .line 1138
    iput-boolean p2, p0, Lo/ko$TaskDescription;->a:Z

    .line 1139
    iput-boolean p3, p0, Lo/ko$TaskDescription;->d:Z

    .line 1140
    iput-object p4, p0, Lo/ko$TaskDescription;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/ko$TaskDescription;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lo/Bc;)V
    .locals 1

    .line 1153
    iput-object p1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    .line 1154
    iget-boolean v0, p0, Lo/ko$TaskDescription;->d:Z

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {v0, p1}, Lo/ko;->c(Lo/ko;Lo/Bc;)Lo/Bc;

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/ko$TaskDescription;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ko$TaskDescription;->c(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method private synthetic c(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 4

    .line 1190
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1191
    iget-object v1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ko;->b(Lo/ko;Landroid/graphics/Bitmap;)V

    .line 1193
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "MdxAgent"

    const-string v1, "failed to download"

    .line 1198
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private d(Lo/aeM$Application;)V
    .locals 1

    .line 1144
    iput-object p1, p0, Lo/ko$TaskDescription;->b:Lo/aeM$Application;

    .line 1145
    iget-boolean v0, p0, Lo/ko$TaskDescription;->d:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {v0, p1}, Lo/ko;->d(Lo/ko;Lo/aeM$Application;)Lo/aeM$Application;

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v0, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {v0, p1}, Lo/ko;->e(Lo/ko;Lo/aeM$Application;)Lo/aeM$Application;

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1166
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 1170
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1179
    :cond_1
    invoke-direct {p0, p1}, Lo/ko$TaskDescription;->b(Lo/Bc;)V

    .line 1180
    invoke-interface {p1}, Lo/AS;->aY()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "MdxAgent"

    const-string v1, "MdxAgent.onEpisodeDetailsFetched, box art URL is empty"

    .line 1183
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    :cond_2
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {v1}, Lo/ko;->p(Lo/ko;)Lo/ErrorCodes;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lo/kq;

    invoke-direct {v1, p0}, Lo/kq;-><init>(Lo/ko$TaskDescription;)V

    sget-object v2, Lo/kr;->a:Lo/kr;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 1202
    :goto_0
    iget-object v0, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v2

    .line 1203
    invoke-interface {p1}, Lo/AS;->bd()Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    iget-object v1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {v1, v0}, Lo/ko;->b(Lo/ko;Ljava/lang/String;)V

    .line 1209
    :cond_3
    iget-object v0, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->g(Lo/ko;)Lo/kk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/kk;->e(Ljava/lang/String;)V

    .line 1211
    iget-boolean v0, p0, Lo/ko$TaskDescription;->a:Z

    if-eqz v0, :cond_4

    .line 1213
    new-instance v0, Lo/aeM$Application;

    .line 1214
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->d()Z

    move-result v4

    .line 1215
    invoke-interface {p1}, Lo/AS;->r()Ljava/lang/String;

    move-result-object v5

    .line 1216
    invoke-interface {p1}, Lo/AS;->be()Ljava/lang/String;

    move-result-object v6

    .line 1217
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1218
    invoke-interface {p1}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lo/aeM$Application;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-direct {p0, v0}, Lo/ko$TaskDescription;->d(Lo/aeM$Application;)V

    .line 1221
    iget-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v1

    iget-object p1, p0, Lo/ko$TaskDescription;->b:Lo/aeM$Application;

    iget-object v3, p1, Lo/aeM$Application;->c:Ljava/lang/String;

    iget-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    .line 1222
    invoke-static {p1}, Lo/ko;->x(Lo/ko;)I

    move-result v4

    iget-object p1, p0, Lo/ko$TaskDescription;->b:Lo/aeM$Application;

    iget-object v5, p1, Lo/aeM$Application;->a:Ljava/lang/String;

    iget-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    .line 1223
    invoke-static {p1}, Lo/ko;->v(Lo/ko;)I

    move-result v6

    iget-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->u(Lo/ko;)Z

    move-result v7

    iget-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->w(Lo/ko;)Ljava/lang/String;

    move-result-object v8

    .line 1221
    invoke-virtual/range {v1 .. v8}, Lo/kI;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;)V

    .line 1226
    :cond_4
    const-class p1, Lo/Cm;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/Cm;

    iget-object p1, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-virtual {p1}, Lo/ko;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    .line 1227
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->V()I

    move-result v3

    iget-object p1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->af()Z

    move-result v5

    iget-object p1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    invoke-interface {p1}, Lo/Bc;->ai()Z

    move-result v6

    .line 1226
    invoke-interface/range {v0 .. v6}, Lo/Cm;->d(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1229
    iget-object v0, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    iget-object v1, p0, Lo/ko$TaskDescription;->c:Lo/Bc;

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    .line 1230
    invoke-interface {v1}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lo/ko$TaskDescription;->d:Z

    .line 1229
    invoke-static {v0, p2, v1, p1, v2}, Lo/ko;->c(Lo/ko;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 1171
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 p2, 0x0

    .line 1173
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-7909: SPY-12099 FetchEpisode got bad id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ko$TaskDescription;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " episodeDetailsNull="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " getId()= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1174
    iget-object p2, p0, Lo/ko$TaskDescription;->e:Lo/ko;

    invoke-virtual {p2}, Lo/ko;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/zz;->b(Ljava/lang/String;)V

    return-void
.end method
