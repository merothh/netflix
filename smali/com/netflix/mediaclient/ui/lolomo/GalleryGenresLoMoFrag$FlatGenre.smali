.class Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$FlatGenre;
.super Ljava/lang/Object;
.source "GalleryGenresLoMoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$FlatGenre;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$FlatGenre;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeroTrackId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$FlatGenre;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumVideos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public isBillboard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHero()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setListPos(I)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
