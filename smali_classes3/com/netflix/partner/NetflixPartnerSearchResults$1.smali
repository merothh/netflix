.class final Lcom/netflix/partner/NetflixPartnerSearchResults$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/NetflixPartnerSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/partner/NetflixPartnerSearchResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/netflix/partner/NetflixPartnerSearchResults;
    .locals 1

    .line 47
    new-instance v0, Lcom/netflix/partner/NetflixPartnerSearchResults;

    invoke-direct {v0, p1}, Lcom/netflix/partner/NetflixPartnerSearchResults;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/netflix/partner/NetflixPartnerSearchResults$1;->b(Landroid/os/Parcel;)Lcom/netflix/partner/NetflixPartnerSearchResults;

    move-result-object p1

    return-object p1
.end method

.method public e(I)[Lcom/netflix/partner/NetflixPartnerSearchResults;
    .locals 0

    .line 52
    new-array p1, p1, [Lcom/netflix/partner/NetflixPartnerSearchResults;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/netflix/partner/NetflixPartnerSearchResults$1;->e(I)[Lcom/netflix/partner/NetflixPartnerSearchResults;

    move-result-object p1

    return-object p1
.end method
