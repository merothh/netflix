.class public Lo/aK;
.super Lo/aO;
.source ""


# instance fields
.field private final c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/aO;-><init>()V

    .line 19
    iput-object p1, p0, Lo/aK;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-void
.end method


# virtual methods
.method protected a()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/aK;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/netflix/cl/model/event/session/command/Command;
    .locals 1

    .line 35
    new-instance v0, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SetThumbRatingCommand;-><init>()V

    return-object v0
.end method
