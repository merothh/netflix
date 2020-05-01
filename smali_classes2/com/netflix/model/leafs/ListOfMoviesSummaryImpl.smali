.class public Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;
.super Lcom/netflix/model/leafs/TrackableListSummaryImpl;
.source ""

# interfaces
.implements Lcom/netflix/model/leafs/ListOfMoviesSummary;
.implements Lo/DocumentsProvider;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ListOfMoviesSummary"


# instance fields
.field private displayName:Ljava/lang/String;

.field private enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field private expiryTimestamp:J

.field private id:Ljava/lang/String;

.field private listContext:Ljava/lang/String;

.field private moreImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private refreshInterval:J

.field private renderRichUITreatment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 33
    iput-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;-><init>(Landroid/os/Parcel;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 33
    iput-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->id:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->displayName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->listContext:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->refreshInterval:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->renderRichUITreatment:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->listContext:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->moreImgs:Ljava/util/List;

    return-object v0
.end method

.method public getNumVideos()I
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->refreshInterval:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->listContext:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->enumType:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public isBillboard()Z
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 125
    iget-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRichUITreatment()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->renderRichUITreatment:Z

    return v0
.end method

.method public isVolatile()Z
    .locals 5

    .line 120
    iget-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->refreshInterval:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .line 42
    invoke-super {p0, p1}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;->populate(Lcom/google/gson/JsonElement;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "refreshInterval"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "displayName"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "listContext"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "expiryTimestamp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v4, "moreImgs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string v4, "renderRichUITreatment"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->renderRichUITreatment:Z

    goto :goto_0

    .line 58
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->refreshInterval:J

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lo/adN;->c(Lcom/google/gson/JsonArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->moreImgs:Ljava/util/List;

    goto/16 :goto_0

    .line 55
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->listContext:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    :goto_2
    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->displayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 50
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->id:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d3abe8e -> :sswitch_6
        -0xd11a1fb -> :sswitch_5
        0xd1b -> :sswitch_4
        0x14007523 -> :sswitch_3
        0x4b50cf31 -> :sswitch_2
        0x662bd66d -> :sswitch_1
        0x7265d0c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListOfMoviesSummary{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", listContext=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->listContext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", moreImgs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->moreImgs:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", refreshInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->refreshInterval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isVolatile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->isVolatile()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", expiryTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", renderRichUITreatment=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->renderRichUITreatment:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 76
    invoke-super {p0, p1, p2}, Lcom/netflix/model/leafs/TrackableListSummaryImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget-object p2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->listContext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->refreshInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-boolean p2, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->renderRichUITreatment:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget-wide v0, p0, Lcom/netflix/model/leafs/ListOfMoviesSummaryImpl;->expiryTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
