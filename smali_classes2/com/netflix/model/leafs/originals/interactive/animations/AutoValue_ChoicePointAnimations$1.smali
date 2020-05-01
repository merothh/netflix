.class final Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;
    .locals 4

    .line 17
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;

    const-class v1, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    const-class v3, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;
    .locals 0

    .line 25
    new-array p1, p1, [Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations$1;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_ChoicePointAnimations;

    move-result-object p1

    return-object p1
.end method
