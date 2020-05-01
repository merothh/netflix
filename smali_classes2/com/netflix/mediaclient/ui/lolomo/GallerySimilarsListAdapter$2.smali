.class public Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kf;->c(Lcom/netflix/model/leafs/ListOfMoviesSummary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Kf;

.field final synthetic e:Lcom/netflix/model/leafs/ListOfMoviesSummary;


# direct methods
.method public constructor <init>(Lo/Kf;Lcom/netflix/model/leafs/ListOfMoviesSummary;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->a:Lo/Kf;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getImpressionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getListId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getListPos()I

    move-result v0

    return v0
.end method

.method public getNumVideos()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getLength()I

    move-result v0

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GallerySimilarsListAdapter$2;->e:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getTrackId()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .line 153
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRichUITreatment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setListPos(I)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
