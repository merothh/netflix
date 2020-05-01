.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummary;
.source "ListOfGenreSummary.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field private final genreExperience:Ljava/lang/String;

.field private final genreId:Ljava/lang/String;

.field private final genreName:Ljava/lang/String;

.field private final genreType:Ljava/lang/String;

.field private final isKidsGenre:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummary;-><init>(IIILjava/lang/String;)V

    iput-object p5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreName:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreId:Ljava/lang/String;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreType:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->isKidsGenre:Z

    iput-object p9, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreExperience:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummary;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->isKidsGenre:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreExperience:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreType:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGenreType()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreType:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreType:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumVideos()I
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->getLength()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreName:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreExperience:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public isKidsGenre()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->isKidsGenre:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ListOfGenreSummary [genreName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genreType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isKidsGenre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->isKidsGenre:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genreExperience="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreExperience:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enumType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummary;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->isKidsGenre:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreExperience:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;->genreType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
