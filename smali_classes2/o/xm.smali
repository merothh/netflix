.class Lo/xm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

.field private final d:Lo/xf;


# direct methods
.method public constructor <init>(Lo/xf;Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xm;->d:Lo/xf;

    iput-object p2, p0, Lo/xm;->a:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/xm;->d:Lo/xf;

    iget-object v1, p0, Lo/xm;->a:Lcom/netflix/mediaclient/servicemgr/ExitPipAction;

    invoke-static {v0, v1}, Lo/xf;->d(Lo/xf;Lcom/netflix/mediaclient/servicemgr/ExitPipAction;)V

    return-void
.end method
