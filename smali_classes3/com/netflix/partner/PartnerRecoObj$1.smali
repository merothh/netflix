.class final Lcom/netflix/partner/PartnerRecoObj$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/PartnerRecoObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/partner/PartnerRecoObj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)[Lcom/netflix/partner/PartnerRecoObj;
    .locals 0

    .line 55
    new-array p1, p1, [Lcom/netflix/partner/PartnerRecoObj;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/netflix/partner/PartnerRecoObj$1;->e(Landroid/os/Parcel;)Lcom/netflix/partner/PartnerRecoObj;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/os/Parcel;)Lcom/netflix/partner/PartnerRecoObj;
    .locals 1

    .line 50
    new-instance v0, Lcom/netflix/partner/PartnerRecoObj;

    invoke-direct {v0, p1}, Lcom/netflix/partner/PartnerRecoObj;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/netflix/partner/PartnerRecoObj$1;->c(I)[Lcom/netflix/partner/PartnerRecoObj;

    move-result-object p1

    return-object p1
.end method
