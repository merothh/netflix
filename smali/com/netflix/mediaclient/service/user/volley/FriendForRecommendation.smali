.class public Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;
.super Ljava/lang/Object;
.source "FriendForRecommendation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bNetflixConnected:Z

.field private bWasRecommended:Z

.field private bWasWatched:Z

.field private profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasWatched:Z

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bNetflixConnected:Z

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasRecommended:Z

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x5

    aget-object v3, v0, v3

    const/4 v4, 0x6

    aget-object v5, v0, v4

    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasWatched:Z

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bNetflixConnected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNetlflixConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bNetflixConnected:Z

    return v0
.end method

.method public setNetflixConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bNetflixConnected:Z

    return-void
.end method

.method public setWasRecommended(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasRecommended:Z

    return-void
.end method

.method public setWasWatched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasWatched:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; wasWatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasWatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; bNetflixConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bNetflixConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasRecommended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasRecommended:Z

    return v0
.end method

.method public wasWatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasWatched:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasWatched:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bNetflixConnected:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->bWasRecommended:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/FriendForRecommendation;->profile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getBigImageUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
