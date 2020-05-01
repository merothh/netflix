.class public final Lo/rw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rD;


# instance fields
.field private final a:Lo/cz;


# direct methods
.method public constructor <init>(Lo/cz;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/rw;->a:Lo/cz;

    return-void
.end method

.method private static a(Lo/xf;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/rA;
    .locals 1

    .line 49
    invoke-static {p2}, Lo/rG;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance p2, Lo/rG;

    invoke-direct {p2, p0, p1}, Lo/rG;-><init>(Lo/xf;Lo/cz;)V

    return-object p2

    .line 53
    :cond_0
    invoke-static {p2}, Lo/rJ;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 54
    new-instance p2, Lo/rJ;

    invoke-direct {p2, p0, p1}, Lo/rJ;-><init>(Lo/xf;Lo/cz;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Lo/xf;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/rA;
    .locals 1

    .line 62
    invoke-static {p2}, Lo/rC;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance p2, Lo/rC;

    invoke-direct {p2, p0, p1}, Lo/rC;-><init>(Lo/xf;Lo/cz;)V

    return-object p2

    .line 66
    :cond_0
    invoke-static {p2}, Lo/rE;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    new-instance p2, Lo/rE;

    invoke-direct {p2, p0, p1}, Lo/rE;-><init>(Lo/xf;Lo/cz;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;
    .locals 1

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->d()Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/xf;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/rA;
    .locals 2

    .line 33
    invoke-virtual {p1}, Lo/xf;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lo/rw;->a:Lo/cz;

    invoke-static {p1, v0, p2}, Lo/rw;->a(Lo/xf;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/rA;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lo/xf;->p()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lo/rw;->a:Lo/cz;

    invoke-static {p1, v0, p2}, Lo/rw;->c(Lo/xf;Lo/cz;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/rA;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
