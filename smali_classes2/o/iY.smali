.class Lo/iY;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/SmartSelectSprite;)Lo/iF;
    .locals 7

    .line 27
    new-instance v6, Lo/jd;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/jd;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Landroid/content/Context;Lo/SmartSelectSprite;)V

    return-object v6
.end method

.method static c(Landroid/content/Context;Lo/jb;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/SmartSelectSprite;)Lo/iA;
    .locals 7

    .line 36
    new-instance v6, Lo/iT;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/iT;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lcom/netflix/mediaclient/service/user/UserAgent;Landroid/content/Context;Lo/cz;Lo/SmartSelectSprite;)V

    return-object v6
.end method
