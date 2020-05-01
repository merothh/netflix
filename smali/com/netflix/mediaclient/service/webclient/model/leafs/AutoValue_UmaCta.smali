.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaCta;
.source "AutoValue_UmaCta.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaCta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->callback()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->selected()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->autoLogin()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->action()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->actionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;->callback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
