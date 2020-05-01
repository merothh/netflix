.class public final Lo/jz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private b:Lo/cz;


# direct methods
.method public constructor <init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/jz;->b:Lo/cz;

    .line 25
    iput-object p2, p0, Lo/jz;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/jr;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 2

    .line 41
    iget-object v0, p0, Lo/jz;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ah()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lo/jx;

    invoke-direct {v0, p2, p3, p4}, Lo/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/jr;)V

    .line 43
    iget-object p2, p0, Lo/jz;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {p2, p1, v0, v1}, Lo/adT;->b(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/np;Z)Lo/np;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance v0, Lo/jA;

    invoke-direct {v0, p2, p3, p4}, Lo/jA;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/jr;)V

    .line 46
    iget-object p2, p0, Lo/jz;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {p2, p1, v0, v1}, Lo/aeK;->a(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/zt;Z)Lo/zt;

    move-result-object p1

    return-object p1
.end method
