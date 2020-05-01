.class Lo/ot$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/nS$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nS$Application;

.field final synthetic c:Lo/ot;

.field final synthetic d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;


# direct methods
.method constructor <init>(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/nS$Application;)V
    .locals 0

    .line 1424
    iput-object p1, p0, Lo/ot$14;->c:Lo/ot;

    iput-object p2, p0, Lo/ot$14;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    iput-object p3, p0, Lo/ot$14;->b:Lo/nS$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1428
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object p2, p0, Lo/ot$14;->c:Lo/ot;

    iget-object v0, p0, Lo/ot$14;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    iget-object v1, p0, Lo/ot$14;->b:Lo/nS$Application;

    invoke-static {p2, v0, p1, v1}, Lo/ot;->b(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sE;Lo/nS$Application;)V

    goto :goto_0

    .line 1431
    :cond_0
    iget-object p1, p0, Lo/ot$14;->b:Lo/nS$Application;

    if-eqz p1, :cond_1

    .line 1432
    invoke-virtual {p1, p2}, Lo/nS$Application;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    :goto_0
    return-void
.end method
