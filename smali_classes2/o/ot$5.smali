.class Lo/ot$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->c(Lo/sE;Lo/nS$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ot;

.field final synthetic e:Lo/nS$Application;


# direct methods
.method constructor <init>(Lo/ot;Lo/nS$Application;)V
    .locals 0

    .line 1553
    iput-object p1, p0, Lo/ot$5;->b:Lo/ot;

    iput-object p2, p0, Lo/ot$5;->e:Lo/nS$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string v0, "nf_offlinePlayable"

    const-string v1, "onOfflineLicenseRequestDone status= %s"

    .line 1556
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1557
    iget-object p1, p0, Lo/ot$5;->b:Lo/ot;

    iget-object v0, p0, Lo/ot$5;->e:Lo/nS$Application;

    invoke-static {p1, p2, p3, v0}, Lo/ot;->e(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lo/nS$Application;)V

    return-void
.end method
