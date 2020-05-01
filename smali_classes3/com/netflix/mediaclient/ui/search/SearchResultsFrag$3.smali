.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 1782
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleQueryUpdateRunnable: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", request id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->n(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultsFrag"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "handleQueryUpdateRunnable: manager is notReady"

    .line 1795
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1799
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i:Z

    .line 1800
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Z)V

    .line 1802
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 1803
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/action/Search;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/event/session/action/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    .line 1806
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->a:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->n(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(Lo/zG;Ljava/lang/String;J)V

    return-void
.end method
