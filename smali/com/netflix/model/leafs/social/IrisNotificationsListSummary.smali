.class public Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;
.super Ljava/lang/Object;
.source "IrisNotificationsListSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SocialNotificationsListSummary"


# instance fields
.field private baseTrackId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "baseTrackId"
    .end annotation
.end field

.field private length:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private mdpTrackId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mdpTrackId"
    .end annotation
.end field

.field private playerTrackId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playerTrackId"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->length:J

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->requestId:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->baseTrackId:I

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->mdpTrackId:I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->playerTrackId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getLength()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getLength()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getBaseTrackId()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getBaseTrackId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getMDPTrackId()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getMDPTrackId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getPlayerTrackId()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getPlayerTrackId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseTrackId()I
    .locals 1

    iget v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->baseTrackId:I

    return v0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->length:J

    return-wide v0
.end method

.method public getMDPTrackId()I
    .locals 1

    iget v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->mdpTrackId:I

    return v0
.end method

.method public getPlayerTrackId()I
    .locals 1

    iget v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->playerTrackId:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SocialNotificationsListSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->length:J

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "length"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "requestId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "baseTrackId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "mdpTrackId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "playerTrackId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->requestId:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->baseTrackId:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->mdpTrackId:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->playerTrackId:I

    goto :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be26c33 -> :sswitch_3
        -0x41f1c51a -> :sswitch_0
        0x295c940a -> :sswitch_1
        0x498e47b5 -> :sswitch_2
        0x5e8201a5 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SocialNotificationsListSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Populating with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v3, "length"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "requestId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "baseTrackId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "mdpTrackId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "playerTrackId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->length:J

    :goto_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->requestId:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->baseTrackId:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->mdpTrackId:I

    goto :goto_2

    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->playerTrackId:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x7be26c33 -> :sswitch_3
        -0x41f1c51a -> :sswitch_0
        0x295c940a -> :sswitch_1
        0x498e47b5 -> :sswitch_2
        0x5e8201a5 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorSocialNotificationsListSummary [mLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBaseTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->baseTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMDPTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->mdpTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayerTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->playerTrackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->length:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->requestId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->baseTrackId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->mdpTrackId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->playerTrackId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
