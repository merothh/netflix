.class public Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo$TaskDescription;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo$TaskDescription;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo$TaskDescription;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->e:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->d:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->b:Ljava/lang/String;

    iput p6, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->f:I

    return-void
.end method

.method public constructor <init>(Lo/Bv;)V
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lo/Bv;->getRequestId()Ljava/lang/String;

    move-result-object v2

    const-string v0, "summary.requestId"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lo/Bv;->getListId()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-interface {p1}, Lo/Bv;->getTrackId()I

    move-result v4

    .line 23
    invoke-interface {p1}, Lo/Bv;->getImpressionToken()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-interface {p1}, Lo/Bv;->getListContext()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-interface {p1}, Lo/Bv;->getListPos()I

    move-result v7

    move-object v1, p0

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->c:Ljava/lang/String;

    const-string v1, "requestId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->d:I

    const-string v1, "trackId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "listId"

    .line 40
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "impressionToken"

    .line 43
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->f:I

    const-string v1, "row"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public b()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->f:I

    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "referenceId"

    .line 50
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->b:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->b:Ljava/lang/String;

    const-string v1, "listType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
