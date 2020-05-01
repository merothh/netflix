.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$1;
.super Ljava/lang/Object;
.source "AutoValue_UmaAlert.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;
    .locals 18

    .prologue
    .line 12
    new-instance v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 17
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 19
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_3

    const/4 v11, 0x1

    .line 20
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 21
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 22
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-object v14, v2

    .line 23
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-object v15, v2

    .line 24
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-direct/range {v3 .. v17}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;-><init>(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;J)V

    .line 12
    return-object v3

    .line 15
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 16
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 18
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 19
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 20
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 21
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 22
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 23
    :cond_7
    const/4 v15, 0x0

    goto :goto_7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;
    .locals 1

    .prologue
    .line 29
    new-array v0, p1, [Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$1;->newArray(I)[Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;

    move-result-object v0

    return-object v0
.end method
