.class final Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;
.super Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private baseTrackId:Ljava/lang/Integer;

.field private mdpTrackId:Ljava/lang/Integer;

.field private notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private playerTrackId:Ljava/lang/Integer;

.field private requestId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/social/UserNotificationsListSummary;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;-><init>()V

    .line 119
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->requestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->requestId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->baseTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->baseTrackId:Ljava/lang/Integer;

    .line 121
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->mdpTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->mdpTrackId:Ljava/lang/Integer;

    .line 122
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->playerTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->playerTrackId:Ljava/lang/Integer;

    .line 123
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->notifications:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/social/UserNotificationsListSummary;Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;-><init>(Lcom/netflix/model/leafs/social/UserNotificationsListSummary;)V

    return-void
.end method


# virtual methods
.method public baseTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 0

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->baseTrackId:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->baseTrackId:Ljava/lang/Integer;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " baseTrackId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->mdpTrackId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mdpTrackId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->playerTrackId:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " playerTrackId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    new-instance v0, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationsListSummary;

    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->baseTrackId:Ljava/lang/Integer;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->mdpTrackId:Ljava/lang/Integer;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->playerTrackId:Ljava/lang/Integer;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->notifications:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationsListSummary;-><init>(Ljava/lang/String;IIILjava/util/List;)V

    return-object v0

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mdpTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 0

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->mdpTrackId:Ljava/lang/Integer;

    return-object p0
.end method

.method public notifications(Ljava/util/List;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->notifications:Ljava/util/List;

    return-object p0
.end method

.method public playerTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 0

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->playerTrackId:Ljava/lang/Integer;

    return-object p0
.end method

.method public requestId(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationsListSummary$Builder;->requestId:Ljava/lang/String;

    return-object p0
.end method
