.class final Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations;
.super Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_Animations;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/condition/Animations$Config;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/condition/Animations$Config;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_Animations;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/Animations$Config;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations;->config()Lcom/netflix/model/leafs/originals/interactive/condition/Animations$Config;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations;->animations()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
