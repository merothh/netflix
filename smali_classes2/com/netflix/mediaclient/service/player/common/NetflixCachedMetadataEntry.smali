.class public Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry$5;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry$5;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->d:I

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 54
    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->d:I

    check-cast p1, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;

    iget p1, p1, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->d:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 37
    iget p2, p0, Lcom/netflix/mediaclient/service/player/common/NetflixCachedMetadataEntry;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
