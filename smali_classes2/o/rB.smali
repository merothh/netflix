.class public Lo/rB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;


# instance fields
.field private c:Ljava/lang/String;

.field private e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/rB;->c:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lo/rB;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/rB;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/rB;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 31
    iget-object v0, p0, Lo/rB;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->d()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/rB;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
