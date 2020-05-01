.class Lo/nW$15$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nW$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nW$15;


# direct methods
.method constructor <init>(Lo/nW$15;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/nW$15$2;->b:Lo/nW$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 147
    iget-object v0, p0, Lo/nW$15$2;->b:Lo/nW$15;

    iget-object v0, v0, Lo/nW$15;->a:Lo/nS;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    iget-object v2, p0, Lo/nW$15$2;->b:Lo/nW$15;

    iget-object v2, v2, Lo/nW$15;->c:Lo/nE;

    iget-object v2, v2, Lo/nE;->d:Ljava/lang/String;

    iget-object v3, p0, Lo/nW$15$2;->b:Lo/nW$15;

    iget-object v3, v3, Lo/nW$15;->c:Lo/nE;

    iget-object v3, v3, Lo/nE;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v4, p0, Lo/nW$15$2;->b:Lo/nW$15;

    iget-object v4, v4, Lo/nW$15;->c:Lo/nE;

    iget-object v4, v4, Lo/nE;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    invoke-interface {v0, v1}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    return-void
.end method
