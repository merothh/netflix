.class final Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config;
.super Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_Animations_Config;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_Animations_Config;-><init>(Ljava/lang/Integer;)V

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

    .line 29
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config;->delayIncrement()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Animations_Config;->delayIncrement()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
