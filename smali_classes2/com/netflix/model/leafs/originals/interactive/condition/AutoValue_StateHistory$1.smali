.class final Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;
    .locals 3

    .line 11
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;

    const-class v1, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    const-class v2, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    invoke-direct {v0, v1, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;
    .locals 0

    .line 18
    new-array p1, p1, [Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory$1;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;

    move-result-object p1

    return-object p1
.end method