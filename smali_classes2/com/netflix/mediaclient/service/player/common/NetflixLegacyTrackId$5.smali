.class final Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;
    .locals 0

    .line 47
    new-array p1, p1, [Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId$5;->d(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;
    .locals 1

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId$5;->a(I)[Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    move-result-object p1

    return-object p1
.end method
