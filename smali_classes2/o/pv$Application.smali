.class final Lo/pv$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Application"
.end annotation


# instance fields
.field private final a:Lo/Ab;

.field private final b:Lo/zJ;

.field final synthetic c:Lo/pv;

.field private final e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;


# direct methods
.method public constructor <init>(Lo/pv;Lo/Ab;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lo/zJ;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lo/pv$Application;->c:Lo/pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lo/pv$Application;->a:Lo/Ab;

    .line 329
    iput-object p4, p0, Lo/pv$Application;->b:Lo/zJ;

    .line 330
    iput-object p3, p0, Lo/pv$Application;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/media/PlayerManifestData;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 361
    iget-object v0, p0, Lo/pv$Application;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lo/pv$Application;->c:Lo/pv;

    invoke-static {v0}, Lo/pv;->a(Lo/pv;)Lo/pA;

    move-result-object v0

    iget-object v1, p0, Lo/pv$Application;->a:Lo/Ab;

    iget-object v2, p0, Lo/pv$Application;->b:Lo/zJ;

    invoke-virtual {v0, v1, v2}, Lo/pA;->b(Lo/Ab;Lo/zJ;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 2

    .line 356
    iget-object p1, p0, Lo/pv$Application;->c:Lo/pv;

    invoke-static {p1}, Lo/pv;->a(Lo/pv;)Lo/pA;

    move-result-object p1

    iget-object v0, p0, Lo/pv$Application;->a:Lo/Ab;

    iget-object v1, p0, Lo/pv$Application;->b:Lo/zJ;

    invoke-virtual {p1, v0, v1}, Lo/pA;->b(Lo/Ab;Lo/zJ;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
