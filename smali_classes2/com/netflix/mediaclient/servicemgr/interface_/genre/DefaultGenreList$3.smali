.class final Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)[Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
    .locals 0

    .line 96
    new-array p1, p1, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList$3;->d(Landroid/os/Parcel;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Parcel;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;
    .locals 1

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList$3;->c(I)[Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object p1

    return-object p1
.end method
