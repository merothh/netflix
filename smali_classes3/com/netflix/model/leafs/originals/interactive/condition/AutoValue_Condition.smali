.class final Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Condition;
.super Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_Condition;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Condition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Condition$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Condition$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_Condition;-><init>()V

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

    return-void
.end method
