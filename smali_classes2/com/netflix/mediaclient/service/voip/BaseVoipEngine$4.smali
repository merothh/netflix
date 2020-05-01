.class Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;->e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "nf_voip"

    const-string v1, "Back to landing page!"

    .line 479
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;->e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;->e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;->e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    .line 483
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$4;->e:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->c(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method
