.class public Lo/pZ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/netflix/mediaclient/service/user/UserAgent;

.field public b:Lo/zE;

.field public d:Lo/cz;


# direct methods
.method public constructor <init>(Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/zE;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/pZ;->d:Lo/cz;

    .line 15
    iput-object p2, p0, Lo/pZ;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 16
    iput-object p3, p0, Lo/pZ;->b:Lo/zE;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lo/pZ;->d:Lo/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/pZ;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/pZ;->b:Lo/zE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
