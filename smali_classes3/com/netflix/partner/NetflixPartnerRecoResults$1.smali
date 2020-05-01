.class final Lcom/netflix/partner/NetflixPartnerRecoResults$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/NetflixPartnerRecoResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/partner/NetflixPartnerRecoResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/netflix/partner/NetflixPartnerRecoResults;
    .locals 1

    .line 54
    new-instance v0, Lcom/netflix/partner/NetflixPartnerRecoResults;

    invoke-direct {v0, p1}, Lcom/netflix/partner/NetflixPartnerRecoResults;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/netflix/partner/NetflixPartnerRecoResults$1;->a(Landroid/os/Parcel;)Lcom/netflix/partner/NetflixPartnerRecoResults;

    move-result-object p1

    return-object p1
.end method

.method public d(I)[Lcom/netflix/partner/NetflixPartnerRecoResults;
    .locals 0

    .line 59
    new-array p1, p1, [Lcom/netflix/partner/NetflixPartnerRecoResults;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/netflix/partner/NetflixPartnerRecoResults$1;->d(I)[Lcom/netflix/partner/NetflixPartnerRecoResults;

    move-result-object p1

    return-object p1
.end method
