.class Lo/ot$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sE;Lo/nS$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/sE;

.field final synthetic b:Lo/ot;

.field final synthetic d:Lo/nS$Application;


# direct methods
.method constructor <init>(Lo/ot;Lo/sE;Lo/nS$Application;)V
    .locals 0

    .line 1513
    iput-object p1, p0, Lo/ot$4;->b:Lo/ot;

    iput-object p2, p0, Lo/ot$4;->a:Lo/sE;

    iput-object p3, p0, Lo/ot$4;->d:Lo/nS$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1516
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bG:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_0

    .line 1517
    iget-object p1, p0, Lo/ot$4;->b:Lo/ot;

    iget-object p2, p0, Lo/ot$4;->a:Lo/sE;

    iget-object p3, p0, Lo/ot$4;->d:Lo/nS$Application;

    invoke-static {p1, p2, p3}, Lo/ot;->e(Lo/ot;Lo/sE;Lo/nS$Application;)V

    return-void

    .line 1519
    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bl:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_1

    .line 1520
    iget-object p1, p0, Lo/ot$4;->b:Lo/ot;

    invoke-static {p1}, Lo/ot;->g(Lo/ot;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/ot$4;->b:Lo/ot;

    invoke-static {v0}, Lo/ot;->a(Lo/ot;)Lo/oC;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ph;->a(Ljava/lang/String;Lo/oC;)Z

    move-result p1

    .line 1521
    iget-object v0, p0, Lo/ot$4;->b:Lo/ot;

    invoke-static {v0}, Lo/ot;->a(Lo/ot;)Lo/oC;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v0, v1}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1522
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "nf_offlinePlayable"

    const-string v1, "refreshLicense DL_ENCODES_DELETE_ON_REVOCATION deleted encodes=%b"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1525
    :cond_1
    iget-object p1, p0, Lo/ot$4;->b:Lo/ot;

    iget-object v0, p0, Lo/ot$4;->d:Lo/nS$Application;

    invoke-static {p1, p2, p3, v0}, Lo/ot;->e(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lo/nS$Application;)V

    return-void
.end method
