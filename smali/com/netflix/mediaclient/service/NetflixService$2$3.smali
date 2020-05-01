.class public Lcom/netflix/mediaclient/service/NetflixService$2$3;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lo/bV;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/bM$2;


# direct methods
.method public constructor <init>(Lo/bM$2;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$3;->b:Lo/bM$2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$3;->b:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->g(Lo/bM;)Lo/hY;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$3;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$3;->b:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->e(Lo/bM;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
