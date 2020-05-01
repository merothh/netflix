.class Lo/nW$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW;->d(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field final synthetic c:Lo/Bi;

.field final synthetic d:Lo/nW;


# direct methods
.method constructor <init>(Lo/nW;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/nW$14;->d:Lo/nW;

    iput-object p2, p0, Lo/nW$14;->c:Lo/Bi;

    iput-object p3, p0, Lo/nW$14;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 103
    iget-object v0, p0, Lo/nW$14;->d:Lo/nW;

    invoke-static {v0}, Lo/nW;->d(Lo/nW;)V

    .line 104
    iget-object v0, p0, Lo/nW$14;->d:Lo/nW;

    invoke-static {v0}, Lo/nW;->b(Lo/nW;)V

    .line 105
    iget-object v0, p0, Lo/nW$14;->d:Lo/nW;

    invoke-static {v0}, Lo/nW;->c(Lo/nW;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nV;

    .line 106
    iget-object v2, p0, Lo/nW$14;->c:Lo/Bi;

    iget-object v3, p0, Lo/nW$14;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v1, v2, v3}, Lo/nV;->d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method
