.class abstract Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;
.super Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;
    }
.end annotation


# instance fields
.field private final baseTrackId:I

.field private final mdpTrackId:I

.field private final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final playerTrackId:I

.field private final requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->requestId:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->baseTrackId:I

    .line 30
    iput p3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->mdpTrackId:I

    .line 31
    iput p4, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->playerTrackId:I

    .line 32
    iput-object p5, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->notifications:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public baseTrackId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->baseTrackId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 79
    check-cast p1, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;

    .line 80
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->requestId:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->requestId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->requestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->baseTrackId:I

    .line 81
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->baseTrackId()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->mdpTrackId:I

    .line 82
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->mdpTrackId()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->playerTrackId:I

    .line 83
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->playerTrackId()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->notifications:Ljava/util/List;

    if-nez v1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    .line 93
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->requestId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 95
    iget v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->baseTrackId:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 97
    iget v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->mdpTrackId:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 99
    iget v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->playerTrackId:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 101
    iget-object v2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->notifications:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public mdpTrackId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->mdpTrackId:I

    return v0
.end method

.method public notifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->notifications:Ljava/util/List;

    return-object v0
.end method

.method public playerTrackId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->playerTrackId:I

    return v0
.end method

.method public requestId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 2

    .line 107
    new-instance v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;-><init>(Lcom/netflix/model/leafs/social/UserNotificationsListSummary;Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserNotificationsListSummary{requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", baseTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->baseTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mdpTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->mdpTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playerTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->playerTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;->notifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
