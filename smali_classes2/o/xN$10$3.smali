.class Lo/xN$10$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN$10;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/xN$10;

.field final synthetic b:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lo/xN$10;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iput-object p2, p0, Lo/xN$10$3;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 877
    iget-object v0, p0, Lo/xN$10$3;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v0, v0, Lo/xN$10;->e:Lo/xN;

    invoke-static {v0}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/xQ;->d(Landroid/content/Context;)V

    .line 879
    iget-object v0, p0, Lo/xN$10$3;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->clearMemberlists()V

    .line 880
    iget-object v0, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v0, v0, Lo/xN$10;->e:Lo/xN;

    iget-object v1, p0, Lo/xN$10$3;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {v0, v1}, Lo/xN;->d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    const-string v0, "nf_preappagentdatahandler"

    const-string v1, "preapp member data cleared. storing rest of data?"

    .line 881
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v0, v0, Lo/xN$10;->e:Lo/xN;

    iget-object v1, p0, Lo/xN$10$3;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v2, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v2, v2, Lo/xN$10;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2}, Lo/xN;->c(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object v0, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v0, v0, Lo/xN$10;->e:Lo/xN;

    iget-object v1, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v1, v1, Lo/xN$10;->e:Lo/xN;

    invoke-static {v1}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/xN$10$3;->a:Lo/xN$10;

    iget-object v2, v2, Lo/xN$10;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/xN;->b(Lo/xN;Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    :goto_0
    return-void
.end method
