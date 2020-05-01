.class final Lcom/netflix/mediaclient/ui/details/BackStackData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/details/BackStackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/mediaclient/ui/details/BackStackData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/details/BackStackData;
    .locals 2

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/ui/details/BackStackData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/BackStackData;-><init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/details/BackStackData$1;)V

    return-object v0
.end method

.method public c(I)[Lcom/netflix/mediaclient/ui/details/BackStackData;
    .locals 0

    .line 78
    new-array p1, p1, [Lcom/netflix/mediaclient/ui/details/BackStackData;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/BackStackData$1;->a(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/details/BackStackData;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/BackStackData$1;->c(I)[Lcom/netflix/mediaclient/ui/details/BackStackData;

    move-result-object p1

    return-object p1
.end method
