.class public Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId$5;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId$5;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->a:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->a:Ljava/lang/String;

    check-cast p1, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/player/common/NetflixLegacyTrackId;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
