.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Bv;


# instance fields
.field private final listPos:I

.field private final reqId:Ljava/lang/String;

.field private final trackId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-17316: Invalid TrackableObject params trackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->reqId:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->trackId:I

    .line 25
    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->listPos:I

    return-void
.end method


# virtual methods
.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    .line 35
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->listPos:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/TrackableObject;->trackId:I

    return v0
.end method
