.class Lo/pM$5;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sx;Lo/sx;Ljava/lang/String;Lo/pS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/pM;

.field final synthetic b:Landroid/content/Context;

.field final synthetic e:Lo/pS;


# direct methods
.method constructor <init>(Lo/pM;Landroid/content/Context;Lo/pS;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lo/pM$5;->a:Lo/pM;

    iput-object p2, p0, Lo/pM$5;->b:Landroid/content/Context;

    iput-object p3, p0, Lo/pM$5;->e:Lo/pS;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 429
    invoke-super {p0, p1, p2}, Lo/qc;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 430
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, "refresh license fetched status: %s"

    invoke-static {v0, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object p2, p0, Lo/pM$5;->a:Lo/pM;

    iget-wide v5, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->g:J

    sget-object v0, Lo/ys;->a:Lo/ys;

    iget-object v2, p0, Lo/pM$5;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    invoke-virtual {v0}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p2, v5, v6, v0}, Lo/pM;->d(Lo/pM;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    .line 434
    sget-object v0, Lo/pM;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 438
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->bh:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lo/pM$5;->a:Lo/pM;

    iget-object v1, p0, Lo/pM$5;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/pM$5;->e:Lo/pS;

    invoke-static {v0, v1, p2, p1, v2}, Lo/pM;->c(Lo/pM;Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/pS;)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lo/pM$5;->e:Lo/pS;

    invoke-interface {v0, p1, p2}, Lo/pS;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
