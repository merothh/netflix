.class final Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_TransitionDefinitions;
.super Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_TransitionDefinitions;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_TransitionDefinitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_TransitionDefinitions$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_TransitionDefinitions$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_TransitionDefinitions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions$TransitionIds;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_TransitionDefinitions;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_TransitionDefinitions;->transitionIds()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
