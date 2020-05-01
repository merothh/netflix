.class Lo/xN$10;
.super Lo/xQ$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->c(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic e:Lo/xN;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lo/xN$10;->e:Lo/xN;

    iput-object p2, p0, Lo/xN$10;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lo/xQ$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "nf_preappagentdatahandler"

    const-string v1, "data on disk is null, first time"

    .line 871
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    iget-object v0, p0, Lo/xN$10;->e:Lo/xN;

    invoke-static {v0}, Lo/xN;->a(Lo/xN;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/xN$10$3;

    invoke-direct {v1, p0, p1}, Lo/xN$10$3;-><init>(Lo/xN$10;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
