.class public final Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo$Activity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo$Activity;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo$Activity;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)V
    .locals 3

    const-string v0, "searchItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getEntityId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchItem.entityId"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    invoke-static {v2}, Lo/ano;->d(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 25
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getPreQueryBoxartId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getBoxartId()Ljava/lang/String;

    move-result-object p1

    .line 22
    :goto_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->c:Ljava/lang/String;

    iput p4, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->d:I

    return-void
.end method

.method public constructor <init>(Lo/By;I)V
    .locals 1

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "summary.entityId"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "videoId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->e:Ljava/lang/String;

    const-string v1, "entityId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "imageKey"

    .line 41
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->d:I

    const-string v1, "rank"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public b()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->d:I

    return v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->e:Ljava/lang/String;

    const-string v1, "entityId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "imageKey"

    .line 51
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->d:I

    const-string v1, "rank"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->a:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
