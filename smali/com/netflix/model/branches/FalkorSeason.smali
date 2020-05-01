.class public Lcom/netflix/model/branches/FalkorSeason;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorSeason.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public detail:Lcom/netflix/model/leafs/Season$Detail;

.field private episodes:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 29
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 40
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 33
    :sswitch_0
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    goto :goto_1

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->episodes:Lcom/netflix/falkor/BranchMap;

    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f95e7af -> :sswitch_0
        -0x25b9fe28 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Season$Detail;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v1, "detail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorSeason;->episodes:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_1

    .line 87
    const-string/jumbo v1, "episodes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    return-object v0
.end method

.method public getNumOfEpisodes()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    iget v0, v0, Lcom/netflix/model/leafs/Season$Detail;->episodeCount:I

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorSeason;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 58
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :sswitch_0
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 52
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/Season$Detail;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Season$Detail;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    goto :goto_0

    .line 53
    :pswitch_1
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->episodes:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        -0x4f95e7af -> :sswitch_0
        -0x25b9fe28 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSeasonLongSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    iget-object v0, v0, Lcom/netflix/model/leafs/Season$Detail;->longSeqLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    iget v0, v0, Lcom/netflix/model/leafs/Season$Detail;->number:I

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Season$Detail;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Season$Detail;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    iget v0, v0, Lcom/netflix/model/leafs/Season$Detail;->year:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorSeason;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 64
    const-string/jumbo v0, "detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    check-cast p2, Lcom/netflix/model/leafs/Season$Detail;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorSeason;->detail:Lcom/netflix/model/leafs/Season$Detail;

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v0, "episodes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorSeason;->episodes:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorSeason [getKeys()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getTitle()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getNumOfEpisodes()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getNumOfEpisodes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getSeasonNumber()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getSeasonNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getYear()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", longSeqLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/model/branches/FalkorSeason;->getSeasonLongSeqLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method
