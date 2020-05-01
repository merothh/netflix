.class final Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;
    .locals 5

    .line 15
    new-instance v0, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    const-class v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;
    .locals 0

    .line 24
    new-array p1, p1, [Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction$1;->newArray(I)[Lcom/netflix/model/leafs/social/multititle/AutoValue_NotificationRatingAction;

    move-result-object p1

    return-object p1
.end method
