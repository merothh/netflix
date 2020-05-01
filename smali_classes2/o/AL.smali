.class public interface abstract Lo/AL;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract body()Ljava/lang/String;
.end method

.method public abstract eventGuid()Ljava/lang/String;
.end method

.method public abstract friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;
.end method

.method public abstract getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
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

.method public abstract makeCopy(Z)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
.end method

.method public abstract messageGuid()Ljava/lang/String;
.end method

.method public abstract messageString()Ljava/lang/String;
.end method

.method public abstract read()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation
.end method

.method public abstract showTimestamp()Z
.end method

.method public abstract timestamp()J
.end method

.method public abstract trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;
.end method

.method public abstract urlTarget()Ljava/lang/String;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method

.method public abstract videoTitle()Ljava/lang/String;
.end method

.method public abstract videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
.end method
