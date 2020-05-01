.class public Lcom/netflix/mediaclient/service/NetflixService$2$1;
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
.field final synthetic c:Lo/bM$2;


# direct methods
.method public constructor <init>(Lo/bM$2;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->c:Lo/bM$2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->c:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->b(Lo/bM;)Lo/hL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$1;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$2$1;->c:Lo/bM$2;

    iget-object p1, p1, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->h(Lo/bM;)Lo/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$2$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
