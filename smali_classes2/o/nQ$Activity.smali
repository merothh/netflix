.class Lo/nQ$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lo/nQ;

.field private e:Lcom/netflix/mediaclient/media/PlayerManifestData;


# direct methods
.method private constructor <init>(Lo/nQ;)V
    .locals 0

    .line 1959
    iput-object p1, p0, Lo/nQ$Activity;->a:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/nQ;Lo/nQ$4;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lo/nQ$Activity;-><init>(Lo/nQ;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1974
    iget-object v0, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lo/nQ$Activity;->a:Lo/nQ;

    iget-object v1, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlayableId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/nQ;->b(Lo/nQ;J)V

    goto :goto_0

    .line 1977
    :cond_0
    iget-object v0, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/nQ$Activity;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lo/nQ$Activity;->a:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->b(Lo/nQ;)Lo/nI;

    move-result-object v0

    invoke-virtual {v0}, Lo/nI;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/media/PlayerManifestData;)V
    .locals 0

    .line 1969
    iput-object p1, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    return-void
.end method

.method public b()V
    .locals 3

    .line 1992
    iget-object v0, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lo/nQ$Activity;->a:Lo/nQ;

    iget-object v1, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlayableId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/nQ;->a(Lo/nQ;J)V

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

    .line 1985
    iget-object p1, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerManifestData;->isOffline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1986
    iget-object p1, p0, Lo/nQ$Activity;->a:Lo/nQ;

    iget-object v0, p0, Lo/nQ$Activity;->e:Lcom/netflix/mediaclient/media/PlayerManifestData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerManifestData;->getPlayableId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lo/nQ;->e(Lo/nQ;J)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
