.class public final Lcom/netflix/model/leafs/ListOfGenreSummary_Ab14345;
.super Lcom/netflix/model/leafs/ListOfGenreSummary;
.source ""


# instance fields
.field private titleGroupSourceUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "genreName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genreId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genreType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/model/leafs/ListOfGenreSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;)V

    iput-object p4, p0, Lcom/netflix/model/leafs/ListOfGenreSummary_Ab14345;->titleGroupSourceUUID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTitleGroupSourceUUID()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfGenreSummary_Ab14345;->titleGroupSourceUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final setTitleGroupSourceUUID(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netflix/model/leafs/ListOfGenreSummary_Ab14345;->titleGroupSourceUUID:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lcom/netflix/model/leafs/ListOfGenreSummary;->writeToParcel(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_0

    .line 15
    iget-object p2, p0, Lcom/netflix/model/leafs/ListOfGenreSummary_Ab14345;->titleGroupSourceUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
