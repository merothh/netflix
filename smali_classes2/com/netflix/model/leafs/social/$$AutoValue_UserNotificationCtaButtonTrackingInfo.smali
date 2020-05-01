.class abstract Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;
.super Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;
.source ""


# instance fields
.field private final action:Ljava/lang/String;

.field private final buttonText:Ljava/lang/String;

.field private final trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->action:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null action"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public action()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public buttonText()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 60
    check-cast p1, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;

    .line 61
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->action:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;->action()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;->buttonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;->buttonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationCtaButtonTrackingInfo;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 74
    iget-object v2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 76
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserNotificationCtaButtonTrackingInfo{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationCtaButtonTrackingInfo;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationCtaTrackingInfo;

    return-object v0
.end method
