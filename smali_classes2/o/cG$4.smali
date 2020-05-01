.class Lo/cG$4;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG;->c(Lo/zX;ZLo/cJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cJ;

.field final synthetic c:Lo/cG;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/cG;Lo/cJ;Z)V
    .locals 0

    .line 680
    iput-object p1, p0, Lo/cG$4;->c:Lo/cG;

    iput-object p2, p0, Lo/cG$4;->a:Lo/cJ;

    iput-boolean p3, p0, Lo/cG$4;->d:Z

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 683
    iget-object v0, p0, Lo/cG$4;->c:Lo/cG;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/cG;->b(Lo/cG;Z)Z

    .line 684
    invoke-super {p0, p1, p2}, Lo/cW;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 685
    iget-object v0, p0, Lo/cG$4;->a:Lo/cJ;

    if-eqz v0, :cond_0

    .line 686
    invoke-interface {v0, p1, p2}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 689
    :cond_0
    iget-object p1, p0, Lo/cG$4;->c:Lo/cG;

    invoke-virtual {p1}, Lo/cG;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-boolean p2, p0, Lo/cG$4;->d:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/cG$4;->c:Lo/cG;

    invoke-static {p2}, Lo/cG;->j(Lo/cG;)Ljava/lang/Runnable;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lo/cG$4;->c:Lo/cG;

    invoke-static {p2}, Lo/cG;->g(Lo/cG;)Ljava/lang/Runnable;

    move-result-object p2

    :goto_0
    const-wide/32 v0, 0x1b77400

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    iget-object p1, p0, Lo/cG$4;->c:Lo/cG;

    invoke-static {p1}, Lo/cG;->f(Lo/cG;)V

    return-void
.end method
