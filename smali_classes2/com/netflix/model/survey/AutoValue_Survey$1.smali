.class final Lcom/netflix/model/survey/AutoValue_Survey$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/survey/AutoValue_Survey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/model/survey/AutoValue_Survey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/netflix/model/survey/AutoValue_Survey;
    .locals 2

    .line 14
    new-instance v0, Lcom/netflix/model/survey/AutoValue_Survey;

    const-class v1, Lcom/netflix/model/survey/Survey;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/model/survey/AutoValue_Survey;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/netflix/model/survey/AutoValue_Survey$1;->b(Landroid/os/Parcel;)Lcom/netflix/model/survey/AutoValue_Survey;

    move-result-object p1

    return-object p1
.end method

.method public d(I)[Lcom/netflix/model/survey/AutoValue_Survey;
    .locals 0

    .line 20
    new-array p1, p1, [Lcom/netflix/model/survey/AutoValue_Survey;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/netflix/model/survey/AutoValue_Survey$1;->d(I)[Lcom/netflix/model/survey/AutoValue_Survey;

    move-result-object p1

    return-object p1
.end method
