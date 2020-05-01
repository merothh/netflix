.class final Lcom/netflix/partner/PartnerVideoObj$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/PartnerVideoObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/partner/PartnerVideoObj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/netflix/partner/PartnerVideoObj;
    .locals 1

    .line 30
    new-instance v0, Lcom/netflix/partner/PartnerVideoObj;

    invoke-direct {v0, p1}, Lcom/netflix/partner/PartnerVideoObj;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public c(I)[Lcom/netflix/partner/PartnerVideoObj;
    .locals 0

    .line 35
    new-array p1, p1, [Lcom/netflix/partner/PartnerVideoObj;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/partner/PartnerVideoObj$1;->b(Landroid/os/Parcel;)Lcom/netflix/partner/PartnerVideoObj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/netflix/partner/PartnerVideoObj$1;->c(I)[Lcom/netflix/partner/PartnerVideoObj;

    move-result-object p1

    return-object p1
.end method
