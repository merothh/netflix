.class public final Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;
.super Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo$Activity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo$Activity;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo$Activity;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/model/leafs/SearchSectionSummary;I)V
    .locals 8

    const-string v0, "section"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    const-string v0, "section.referenceId"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getRequestId()Ljava/lang/String;

    move-result-object v4

    const-string v0, "section.requestId"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getTrackId()I

    move-result v5

    .line 42
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getFeature()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v7, p2

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    const-string v0, "referenceId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move v7, p6

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->a:Ljava/lang/String;

    iput p4, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->e:I

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->b:Ljava/lang/String;

    iput p6, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->g:I

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;->a(Lorg/json/JSONObject;)V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->d:Ljava/lang/String;

    const-string v1, "referenceId"

    .line 49
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "listType"

    .line 52
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->g:I

    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->e:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
