.class final Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;
.super Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/$AutoValue_StateHistory;-><init>(Lcom/netflix/model/leafs/originals/interactive/condition/State;Lcom/netflix/model/leafs/originals/interactive/condition/State;)V

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

    .line 28
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AutoValue_StateHistory;->global()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
