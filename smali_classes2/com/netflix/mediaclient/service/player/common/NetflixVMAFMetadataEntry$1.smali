.class final Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;
    .locals 1

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;-><init>(I)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry$1;->a(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    move-result-object p1

    return-object p1
.end method

.method public e(I)[Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;
    .locals 0

    .line 42
    new-array p1, p1, [Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry$1;->e(I)[Lcom/netflix/mediaclient/service/player/common/NetflixVMAFMetadataEntry;

    move-result-object p1

    return-object p1
.end method
