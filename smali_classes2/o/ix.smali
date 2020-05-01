.class public final Lo/ix;
.super Lo/is;
.source ""


# instance fields
.field private final e:Lo/nS;


# direct methods
.method public constructor <init>(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/cz;)V
    .locals 6

    const-string v0, "netflixJobScheduler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceFetcher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationAgent"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 17
    invoke-direct/range {v0 .. v5}, Lo/is;-><init>(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;)V

    iput-object p5, p0, Lo/ix;->e:Lo/nS;

    return-void
.end method


# virtual methods
.method protected c(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Lo/is;->c(Ljava/util/HashMap;)V

    .line 26
    iget-object p1, p0, Lo/ix;->e:Lo/nS;

    invoke-interface {p1}, Lo/nS;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lo/ix;->e:Lo/nS;

    invoke-interface {p1}, Lo/nS;->s()Lo/nK;

    move-result-object p1

    invoke-interface {p1}, Lo/nK;->d()V

    :cond_0
    return-void
.end method
