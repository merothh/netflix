.class Lo/TC$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 2907
    iput-object p1, p0, Lo/TC$15;->b:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "PlayerFragment"

    const-string v1, "pause has timed out, exit playback"

    .line 2910
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    iget-object v0, p0, Lo/TC$15;->b:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2915
    invoke-virtual {v0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2918
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v1

    const-string v2, "pauseTimeout calling cleanupExit"

    invoke-interface {v1, v2}, Lo/zu;->d(Ljava/lang/String;)V

    .line 2920
    :cond_1
    iget-object v1, p0, Lo/TC$15;->b:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->v()V

    if-eqz v0, :cond_2

    .line 2922
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v0

    const-string v1, "pauseTimeout cleanupExit done"

    invoke-interface {v0, v1}, Lo/zu;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
