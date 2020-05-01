.class public Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;
.super Ljava/lang/Object;
.source "DummySeasonDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;


# instance fields
.field private final id:Ljava/lang/String;

.field private final seasonNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;->id:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;->seasonNumber:I

    return-void
.end method

.method public static createDummyArray()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfEpisodes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSeasonLongSeqLabel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
