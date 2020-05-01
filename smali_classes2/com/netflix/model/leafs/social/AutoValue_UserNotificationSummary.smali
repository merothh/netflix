.class final Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;
.super Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;ZJZLcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;Lcom/netflix/model/leafs/social/FriendProfile;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p23}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;ZJZLcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;Lcom/netflix/model/leafs/social/FriendProfile;Ljava/lang/String;)V

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

    .line 61
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->messageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->messageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->messageGuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->messageGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->eventGuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->eventGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->videoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->videoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 88
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    :goto_4
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->videoTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 94
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->videoTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    :goto_5
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->inQueue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->imageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 101
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->imageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    :goto_6
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->imageAltText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 107
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->imageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    :goto_7
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->imageTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 113
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->imageTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    :goto_8
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->tvCardUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 119
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->tvCardUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    :goto_9
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->header()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 125
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->header()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    :goto_a
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->body()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 131
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    :goto_b
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->textTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 135
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 137
    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->textTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    :goto_c
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->urlTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 143
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->urlTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    :goto_d
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->read()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->timestamp()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->showTimestamp()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->messageString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    .line 153
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 155
    :cond_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;->messageString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_e
    return-void
.end method
