.class final Lcom/netflix/mediaclient/ui/common/PlayContextImp$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/common/PlayContextImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/mediaclient/ui/common/PlayContextImp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 0

    .line 182
    new-array p1, p1, [Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp$5;->e(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 1

    .line 177
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp$5;->a(I)[Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    return-object p1
.end method
