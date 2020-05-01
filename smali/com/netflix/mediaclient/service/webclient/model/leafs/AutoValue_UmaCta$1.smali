.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$1;
.super Ljava/lang/Object;
.source "AutoValue_UmaCta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    .line 18
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v6, :cond_5

    :goto_4
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 12
    return-object v0

    :cond_1
    move-object v1, v4

    .line 13
    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 14
    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 15
    goto :goto_2

    :cond_4
    move v5, v7

    .line 17
    goto :goto_3

    :cond_5
    move v6, v7

    .line 18
    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;
    .locals 1

    .prologue
    .line 23
    new-array v0, p1, [Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta$1;->newArray(I)[Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaCta;

    move-result-object v0

    return-object v0
.end method
