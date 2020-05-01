.class public Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Kc;


# direct methods
.method public constructor <init>(Lo/Kc;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

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

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    invoke-virtual {v0}, Lo/Kc;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    invoke-virtual {v0}, Lo/Kc;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumVideos()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "flatGenreRequestId"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTrackId()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTrackId()I

    move-result v0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;->d:Lo/Kc;

    iget-object v0, v0, Lo/Kc;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, -0xdc

    return v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .line 165
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
