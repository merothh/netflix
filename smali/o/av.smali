.class public Lo/av;
.super Lo/aO;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/aO;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .line 22
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

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

    .line 17
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

    .line 28
    new-instance v0, Lcom/netflix/cl/model/event/session/command/AddToPlaylistCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/AddToPlaylistCommand;-><init>()V

    return-object v0
.end method
