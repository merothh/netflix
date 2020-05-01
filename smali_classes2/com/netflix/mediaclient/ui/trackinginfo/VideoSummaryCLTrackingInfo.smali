.class public final Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo$Activity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo$Activity;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo$Activity;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const-string v0, "imageKey"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->d:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->b:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->a:I

    return-void
.end method

.method public constructor <init>(Lo/AM;I)V
    .locals 2

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lo/AM;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "summary.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lo/ano;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1}, Lo/AM;->getBoxartId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lo/AR;I)V
    .locals 2

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "summary.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lo/ano;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1}, Lo/AR;->getBoxartId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lo/AR;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "summary.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lo/ano;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/AR;->getBoxartId()Ljava/lang/String;

    move-result-object p2

    const-string p1, "summary.boxartId"

    invoke-static {p2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->d:I

    const-string v1, "videoId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->b:Ljava/lang/String;

    const-string v1, "imageKey"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->a:I

    const-string v1, "rank"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public b()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->a:I

    return v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "VideoSummaryCLTrackingInfo used for search"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
