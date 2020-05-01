.class abstract Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;
.super Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;
.source ""


# instance fields
.field private final messageGuid:Ljava/lang/String;

.field private final notificationItemType:Ljava/lang/String;

.field private final titleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;-><init>()V

    if-eqz p1, :cond_2

    .line 21
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->titleId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 25
    iput-object p2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->notificationItemType:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 29
    iput-object p3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->messageGuid:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null messageGuid"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null notificationItemType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null titleId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    .line 63
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->titleId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;->titleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->notificationItemType:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;->notificationItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->messageGuid:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;->messageGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->titleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 76
    iget-object v2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->notificationItemType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 78
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->messageGuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public messageGuid()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->messageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public notificationItemType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->notificationItemType:Ljava/lang/String;

    return-object v0
.end method

.method public titleId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->titleId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserNotificationLandingTrackingInfo{titleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->titleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->notificationItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationLandingTrackingInfo;->messageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
