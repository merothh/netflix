.class abstract Lo/rx;
.super Lo/ry;
.source ""


# instance fields
.field protected d:Lo/xf;


# direct methods
.method constructor <init>(Lo/xf;Lo/cz;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lo/ry;-><init>(Lo/cz;)V

    .line 23
    iput-object p1, p0, Lo/rx;->d:Lo/xf;

    return-void
.end method

.method static a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z
    .locals 1

    .line 32
    invoke-static {}, Lo/rx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2.111"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected d()Lo/zJ;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/rx;->d:Lo/xf;

    return-object v0
.end method
