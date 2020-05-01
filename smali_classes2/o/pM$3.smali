.class Lo/pM$3;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM;->a(Ljava/lang/String;Lo/sx;Ljava/lang/String;Lo/pS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/pM;

.field final synthetic c:Landroid/content/Context;

.field final synthetic e:Lo/pS;


# direct methods
.method constructor <init>(Lo/pM;Landroid/content/Context;Lo/pS;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lo/pM$3;->a:Lo/pM;

    iput-object p2, p0, Lo/pM$3;->c:Landroid/content/Context;

    iput-object p3, p0, Lo/pM$3;->e:Lo/pS;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .line 298
    invoke-super {p0, p1, p2}, Lo/qc;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 299
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " license fetched status: %s"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 301
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object p2, p0, Lo/pM$3;->a:Lo/pM;

    iget-wide v2, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->g:J

    sget-object v0, Lo/ys;->a:Lo/ys;

    iget-object v5, p0, Lo/pM$3;->c:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    invoke-virtual {v0}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p2, v2, v3, v0}, Lo/pM;->d(Lo/pM;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    .line 303
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " yearlyLicenseStatus fetched status: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 304
    iget-object v0, p0, Lo/pM$3;->e:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lo/pM$3;->a:Lo/pM;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-static {v0, v1}, Lo/pM;->a(Lo/pM;Lcom/netflix/mediaclient/StatusCode;)V

    .line 312
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->bh:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    .line 313
    iget-object v0, p0, Lo/pM$3;->a:Lo/pM;

    iget-object v1, p0, Lo/pM$3;->c:Landroid/content/Context;

    iget-object v2, p0, Lo/pM$3;->e:Lo/pS;

    invoke-static {v0, v1, p2, p1, v2}, Lo/pM;->c(Lo/pM;Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/pS;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lo/pM$3;->e:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
