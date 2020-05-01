.class final Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;
.super Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Float;Ljava/lang/Float;JJLjava/lang/Float;ZLcom/netflix/model/leafs/originals/interactive/animations/Ease;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p9}, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation;-><init>(Ljava/lang/Float;Ljava/lang/Float;JJLjava/lang/Float;ZLcom/netflix/model/leafs/originals/interactive/animations/Ease;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 36
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->fromValue()Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->fromValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->delay()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->duration()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->fromOrigin()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/animations/AutoValue_InteractiveAnimation;->ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
