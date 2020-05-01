.class final Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;
    .locals 1

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;-><init>(I)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry$5;->c(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    move-result-object p1

    return-object p1
.end method

.method public d(I)[Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry$5;->d(I)[Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    move-result-object p1

    return-object p1
.end method
