.class public abstract Lcom/netflix/model/leafs/social/UserNotificationSummary;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/agj;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 3

    .line 148
    new-instance v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;-><init>()V

    const-wide/16 v1, -0x1

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->timestamp(J)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;->showTimestamp(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;->read(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;->inQueue(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/netflix/model/leafs/social/UserNotificationSummary;
    .locals 25

    .line 112
    new-instance v24, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;

    move-object/from16 v0, v24

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;ZJZLcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;Lcom/netflix/model/leafs/social/FriendProfile;Ljava/lang/String;)V

    return-object v24
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/social/UserNotificationSummary;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const-wide/16 v1, -0x1

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;->setDefaultTimestamp(J)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;->setDefaultShowTimestamp(Z)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;

    move-result-object p0

    .line 143
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;->setDefaultRead(Z)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;

    move-result-object p0

    .line 144
    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;->setDefaultInQueue(Z)Lcom/netflix/model/leafs/social/$AutoValue_UserNotificationSummary$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract body()Ljava/lang/String;
.end method

.method public abstract eventGuid()Ljava/lang/String;
.end method

.method public abstract friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromUser"
    .end annotation
.end method

.method public getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->MULTI_TITLE_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    return-object v0
.end method

.method public abstract header()Ljava/lang/String;
.end method

.method public abstract imageAltText()Ljava/lang/String;
.end method

.method public abstract imageTarget()Ljava/lang/String;
.end method

.method public abstract imageUrl()Ljava/lang/String;
.end method

.method public abstract inQueue()Z
.end method

.method public abstract landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;
.end method

.method public makeCopy(Z)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->toBuilder()Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;->read(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;->build()Lcom/netflix/model/leafs/social/UserNotificationSummary;

    move-result-object p1

    return-object p1
.end method

.method public abstract messageGuid()Ljava/lang/String;
.end method

.method public abstract messageName()Ljava/lang/String;
.end method

.method public abstract messageString()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgString"
    .end annotation
.end method

.method public abstract read()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation
.end method

.method public abstract showTimestamp()Z
.end method

.method public abstract textTarget()Ljava/lang/String;
.end method

.method public abstract timestamp()J
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
.end method

.method public abstract trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;
.end method

.method public abstract tvCardUrl()Ljava/lang/String;
.end method

.method public abstract urlTarget()Ljava/lang/String;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method

.method public abstract videoTitle()Ljava/lang/String;
.end method

.method public abstract videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.end method
