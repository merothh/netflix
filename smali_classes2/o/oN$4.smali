.class Lo/oN$4;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oN;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/oN;


# direct methods
.method constructor <init>(Lo/oN;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/oN$4;->c:Lo/oN;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLicenseRequest onLicenseFetched playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/oN$4;->c:Lo/oN;

    invoke-virtual {v1}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_offlineLicenseMgr"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lo/oN$4;->c:Lo/oN;

    iget-object v0, v0, Lo/oN;->i:Landroid/os/Handler;

    new-instance v1, Lo/oN$4$3;

    invoke-direct {v1, p0, p1, p2}, Lo/oN$4$3;-><init>(Lo/oN$4;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
