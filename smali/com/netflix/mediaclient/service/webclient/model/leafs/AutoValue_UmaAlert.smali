.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;
.source "AutoValue_UmaAlert.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;J)V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p14}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;-><init>(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;J)V

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->abTestCell()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->abTestId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->locale()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->messageId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->title()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    :goto_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->body()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    :goto_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    if-nez v0, :cond_6

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    :goto_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    if-nez v0, :cond_7

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    :goto_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->timestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->locale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 60
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 70
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 76
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_6

    .line 82
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_7
.end method
