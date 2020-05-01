.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;
.source ""

# interfaces
.implements Lo/Bv;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private impressionToken:Ljava/lang/String;

.field private listPos:I

.field private requestId:Ljava/lang/String;

.field private trackId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;-><init>(I)V

    .line 30
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->trackId:I

    .line 31
    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->listPos:I

    .line 32
    iput-object p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->requestId:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;-><init>(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->trackId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->listPos:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->requestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->impressionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->listPos:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->trackId:I

    return v0
.end method

.method public setListPos(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->listPos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackableListSummary [trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->listPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->trackId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->listPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableListSummaryOld;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
