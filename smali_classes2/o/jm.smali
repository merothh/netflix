.class public final Lo/jm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Lo/cz;


# direct methods
.method public constructor <init>(Lo/cz;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/jm;->b:Lo/cz;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lo/jh;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/jm;->b:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lo/jp;

    invoke-direct {v0, p1, p2}, Lo/jp;-><init>(Ljava/lang/String;Lo/jh;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lo/jo;

    invoke-direct {v0, p1, p2}, Lo/jo;-><init>(Ljava/lang/String;Lo/jh;)V

    return-object v0
.end method
