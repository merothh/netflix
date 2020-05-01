.class public Lcom/netflix/model/branches/FalkorEvidenceList;
.super Lcom/netflix/falkor/BranchMap;
.source "FalkorEvidenceList.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
.implements Lcom/netflix/model/branches/FalkorObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/falkor/BranchMap",
        "<TT;>;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
        "Lcom/netflix/model/branches/FalkorObject;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorEvidenceList"


# instance fields
.field private billboardData:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/model/branches/FalkorBillboardData;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryData:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation
.end field

.field private summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

.field private videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/Func;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FalkorEvidenceList"

    const-string/jumbo v1, "Creating FalkorList"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FalkorEvidenceList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FalkorEvidenceLists:get: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "discoveryEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "videoEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "billboardData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x6a2bd827 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getHeroTrackId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getHeroTrackId()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getId()Ljava/lang/String;

    move-result-object v0

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

    invoke-super {p0}, Lcom/netflix/falkor/BranchMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "videoEvidence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "billboardData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "discoveryEvidence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getListPos()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getListPos()I

    move-result v0

    goto :goto_0
.end method

.method public getMoreImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getMoreImages()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumVideos()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getNumVideos()I

    move-result v0

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorEvidenceList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FalkorEvidenceList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating leaf for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FalkorEvidenceList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FalkorEvidenceLists:getOrCreate: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "discoveryEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "videoEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "billboardData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->UnsummarizedListOfRef:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    invoke-static {}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorBillboardData()Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x6a2bd827 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackId()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    goto :goto_0
.end method

.method public isBillboard()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->isBillboard()Z

    move-result v0

    goto :goto_0
.end method

.method public isHero()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->isHero()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorEvidenceList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FalkorEvidenceList"

    const-string/jumbo v4, "FalkorEvidenceList:set key: %s, value: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netflix/falkor/BranchMap;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v4, "summary"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "videoEvidence"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "billboardData"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "discoveryEvidence"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    check-cast p2, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    goto :goto_1

    :pswitch_1
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    :pswitch_2
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    :pswitch_3
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0xa481c77 -> :sswitch_2
        0x6eb6bf2 -> :sswitch_1
        0x6a2bd827 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->setId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListPos(I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->setListPos(I)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
