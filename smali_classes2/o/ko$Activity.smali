.class Lo/ko$Activity;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final b:Z

.field final synthetic d:Lo/ko;


# direct methods
.method constructor <init>(Lo/ko;Z)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-direct {p0}, Lo/cq;-><init>()V

    .line 1067
    iput-boolean p2, p0, Lo/ko$Activity;->b:Z

    return-void
.end method

.method private synthetic a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 4

    .line 1093
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1094
    iget-object v1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ko;->b(Lo/ko;Landroid/graphics/Bitmap;)V

    .line 1096
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "MdxAgent"

    const-string v1, "failed to download"

    .line 1101
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/ko$Activity;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic e(Lo/ko$Activity;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ko$Activity;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method


# virtual methods
.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1077
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1082
    :cond_0
    iget-object p2, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p2, p1}, Lo/ko;->c(Lo/ko;Lo/Bc;)Lo/Bc;

    .line 1083
    invoke-interface {p1}, Lo/AX;->aY()Ljava/lang/String;

    move-result-object p2

    .line 1085
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "MdxAgent"

    const-string v0, "MdxAgent.onMovieDetailsFetched, box art URL is empty"

    .line 1086
    invoke-static {p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    :cond_1
    invoke-static {}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p2

    .line 1090
    iget-object v0, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {v0}, Lo/ko;->p(Lo/ko;)Lo/ErrorCodes;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lo/ks;

    invoke-direct {v0, p0}, Lo/ks;-><init>(Lo/ko$Activity;)V

    sget-object v1, Lo/kt;->a:Lo/kt;

    invoke-virtual {p2, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 1105
    :goto_0
    invoke-interface {p1}, Lo/AX;->bd()Ljava/lang/String;

    move-result-object p2

    .line 1106
    iget-object v0, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v2

    .line 1108
    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {v0, p2}, Lo/ko;->b(Lo/ko;Ljava/lang/String;)V

    .line 1112
    :cond_2
    iget-object p2, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p2}, Lo/ko;->g(Lo/ko;)Lo/kk;

    move-result-object p2

    invoke-virtual {p2, v2}, Lo/kk;->e(Ljava/lang/String;)V

    .line 1114
    iget-boolean p2, p0, Lo/ko$Activity;->b:Z

    if-eqz p2, :cond_3

    .line 1115
    iget-object p2, p0, Lo/ko$Activity;->d:Lo/ko;

    new-instance v0, Lo/aeM$Application;

    .line 1116
    invoke-interface {p1}, Lo/AX;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->d()Z

    move-result v4

    const/4 v5, 0x0

    .line 1117
    invoke-interface {p1}, Lo/AX;->be()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1118
    invoke-interface {p1}, Lo/AX;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lo/aeM$Application;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {p2, v0}, Lo/ko;->e(Lo/ko;Lo/aeM$Application;)Lo/aeM$Application;

    .line 1121
    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p1}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v1

    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    .line 1122
    invoke-static {p1}, Lo/ko;->y(Lo/ko;)Lo/aeM$Application;

    move-result-object p1

    iget-object v3, p1, Lo/aeM$Application;->c:Ljava/lang/String;

    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p1}, Lo/ko;->x(Lo/ko;)I

    move-result v4

    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    .line 1123
    invoke-static {p1}, Lo/ko;->y(Lo/ko;)Lo/aeM$Application;

    move-result-object p1

    iget-object v5, p1, Lo/aeM$Application;->a:Ljava/lang/String;

    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p1}, Lo/ko;->v(Lo/ko;)I

    move-result v6

    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p1}, Lo/ko;->u(Lo/ko;)Z

    move-result v7

    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p1}, Lo/ko;->w(Lo/ko;)Ljava/lang/String;

    move-result-object v8

    .line 1121
    invoke-virtual/range {v1 .. v8}, Lo/kI;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;)V

    .line 1126
    :cond_3
    iget-object p1, p0, Lo/ko$Activity;->d:Lo/ko;

    invoke-static {p1}, Lo/ko;->z(Lo/ko;)Lo/Bc;

    move-result-object p2

    invoke-interface {p2}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0, v1}, Lo/ko;->c(Lo/ko;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
