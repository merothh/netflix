.class final Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation$1;
.super Ljava/lang/Object;
.source "FriendForRecommendation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;
    .locals 1

    .prologue
    .line 82
    new-array v0, p1, [Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation$1;->newArray(I)[Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    move-result-object v0

    return-object v0
.end method
