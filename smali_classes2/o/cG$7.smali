.class Lo/cG$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/cG;


# direct methods
.method constructor <init>(Lo/cG;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lo/cG$7;->d:Lo/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "nf_configurationagent"

    const-string v1, "Refreshing non member config via runnable"

    .line 992
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lo/cG$7;->d:Lo/cG;

    invoke-static {v0}, Lo/cG;->k(Lo/cG;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->j()Lo/zX;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lo/cG;->a(Lo/zX;ZLo/cJ;Lo/cG$StateListAnimator;)V

    .line 994
    iget-object v0, p0, Lo/cG$7;->d:Lo/cG;

    invoke-static {v0}, Lo/cG;->l(Lo/cG;)V

    return-void
.end method
