.class Lo/xN$15;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic c:Lo/cq;

.field final synthetic d:Lo/cq;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Lo/cq;

.field final synthetic g:Lo/cq;

.field final synthetic h:Lo/xN;

.field final synthetic i:Lo/cq;

.field final synthetic j:Lo/cq;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lo/xN$15;->h:Lo/xN;

    iput-object p2, p0, Lo/xN$15;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lo/xN$15;->e:Ljava/util/Set;

    iput-object p4, p0, Lo/xN$15;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iput-object p5, p0, Lo/xN$15;->c:Lo/cq;

    iput-object p6, p0, Lo/xN$15;->d:Lo/cq;

    iput-object p7, p0, Lo/xN$15;->i:Lo/cq;

    iput-object p8, p0, Lo/xN$15;->g:Lo/cq;

    iput-object p9, p0, Lo/xN$15;->j:Lo/cq;

    iput-object p10, p0, Lo/xN$15;->f:Lo/cq;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "LoMos fetched "

    .line 212
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_preappagentdatahandler"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 214
    iget-object p2, p0, Lo/xN$15;->h:Lo/xN;

    iget-object v0, p0, Lo/xN$15;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {p2, v0, p1}, Lo/xN;->d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    .line 215
    iget-object p1, p0, Lo/xN$15;->e:Ljava/util/Set;

    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->f:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lo/xN$15;->h:Lo/xN;

    iget-object v1, p0, Lo/xN$15;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iget-object v2, p0, Lo/xN$15;->c:Lo/cq;

    iget-object v3, p0, Lo/xN$15;->d:Lo/cq;

    iget-object v4, p0, Lo/xN$15;->i:Lo/cq;

    iget-object v5, p0, Lo/xN$15;->g:Lo/cq;

    iget-object v6, p0, Lo/xN$15;->j:Lo/cq;

    iget-object v7, p0, Lo/xN$15;->f:Lo/cq;

    invoke-static/range {v0 .. v7}, Lo/xN;->b(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;Lo/cq;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 226
    iget-object p2, p0, Lo/xN$15;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object p2, p1, v0

    const-string p2, " updateType: %s - skip fetching data for widget because lomo fetch failed - avoid triggering multiple lolomos"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
