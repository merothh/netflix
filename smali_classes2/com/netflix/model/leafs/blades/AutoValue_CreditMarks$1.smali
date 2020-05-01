.class final Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;
    .locals 4

    .line 11
    new-instance v0, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;
    .locals 0

    .line 20
    new-array p1, p1, [Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks$1;->newArray(I)[Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    move-result-object p1

    return-object p1
.end method
