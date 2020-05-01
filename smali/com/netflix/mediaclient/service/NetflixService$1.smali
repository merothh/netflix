.class public Lcom/netflix/mediaclient/service/NetflixService$1;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bM;->T()V
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
.field final synthetic e:Lo/bM;


# direct methods
.method public constructor <init>(Lo/bM;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$1;->e:Lo/bM;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$1;->e:Lo/bM;

    invoke-static {p1}, Lo/bM;->c(Lo/bM;)Lo/za;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/NetflixService$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
