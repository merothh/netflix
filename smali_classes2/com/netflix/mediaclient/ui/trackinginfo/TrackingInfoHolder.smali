.class public final Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$ActionBar;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

.field private final b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

.field private final c:Lcom/netflix/cl/model/AppView;

.field private final d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$ActionBar;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$ActionBar;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/cl/model/AppView;)V
    .locals 1

    const-string v0, "originalView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;)V
    .locals 1

    const-string v0, "originalView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    return-void
.end method

.method public static synthetic a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 124
    check-cast p1, Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;->c(Lorg/json/JSONObject;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->c(Lorg/json/JSONObject;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->c(Lorg/json/JSONObject;)V

    .line 200
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Fragment;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Fragment;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/TrackingInfo;

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 3

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "genreId"

    .line 174
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 183
    :cond_2
    new-instance p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$StateListAnimator;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$StateListAnimator;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    return-object p1
.end method

.method public final a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "searchItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;-><init>(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)V

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/netflix/model/leafs/SearchSectionSummary;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionSectionCLTrackingInfo;-><init>(Lcom/netflix/model/leafs/SearchSectionSummary;I)V

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/netflix/cl/model/TrackingInfo;
    .locals 3

    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    :cond_2
    const/4 v1, 0x0

    const-string v2, "row"

    .line 230
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "rank"

    .line 231
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$PendingIntent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$PendingIntent;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/TrackingInfo;

    return-object v1
.end method

.method public final b(Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    .line 205
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "row"

    .line 206
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    instance-of p2, p1, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const-string p2, "query"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->b(Lorg/json/JSONObject;)V

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    const-string p2, "requestId"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    const-string p1, "trackId"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    new-instance p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Activity;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Activity;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    return-object p1
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 1

    const-string v0, "playLocationType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lcom/netflix/cl/model/AppView;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(Lo/AR;I)V

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo/AR;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(Lo/AR;Ljava/lang/String;I)V

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 190
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->b(Lorg/json/JSONObject;)V

    .line 192
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Dialog;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Dialog;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/TrackingInfo;

    return-object v1
.end method

.method public final c(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 12

    const-string v0, "playLocationType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "toPlayContext is missing data"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 266
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 267
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->d()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->e()I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    const/4 v4, -0x1

    .line 269
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->b()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 270
    :goto_2
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->b()I

    move-result v5

    move v6, v5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 272
    :goto_3
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;->c()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_4

    :cond_6
    move-object v8, v2

    .line 273
    :goto_4
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->c()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_5

    :cond_7
    move-object v9, v2

    .line 275
    :goto_5
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->e()Ljava/lang/String;

    move-result-object v2

    :cond_8
    move-object v11, v2

    move-object v2, v0

    move v5, v1

    move-object v7, p1

    move-object v10, p2

    .line 266
    invoke-direct/range {v2 .. v11}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    const-string v0, "originalView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;)V

    return-object v0
.end method

.method public final c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchSuggestionCLTrackingInfo;-><init>(Lo/By;I)V

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/netflix/cl/model/TrackingInfo;
    .locals 4

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v1, :cond_3

    .line 147
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toNoRowTrackingInfo() had trackableVide for trackId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    const-string v2, "videoId"

    .line 153
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "rank"

    .line 154
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$TaskDescription;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$TaskDescription;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/TrackingInfo;

    return-object v1
.end method

.method public final d(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lcom/netflix/cl/model/AppView;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 12

    const-string v0, "playLocationType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "toPlayContext is missing data"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 249
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->d()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->e()I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    const/4 v4, -0x1

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->b()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 253
    :goto_2
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->b()I

    move-result v5

    move v6, v5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 255
    :goto_3
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;->c()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_4

    :cond_6
    move-object v8, v2

    .line 256
    :goto_4
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->c()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_5

    :cond_7
    move-object v9, v2

    :goto_5
    if-eqz p2, :cond_8

    .line 257
    invoke-virtual {p2}, Lcom/netflix/cl/model/AppView;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v10, p2

    goto :goto_6

    :cond_8
    move-object v10, v2

    .line 258
    :goto_6
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->e()Ljava/lang/String;

    move-result-object p2

    move-object v11, p2

    goto :goto_7

    :cond_9
    move-object v11, v2

    :goto_7
    move-object v2, v0

    move v5, v1

    move-object v7, p1

    .line 249
    invoke-direct/range {v2 .. v11}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lcom/netflix/model/leafs/PreviewSummary;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;

    check-cast p1, Lo/AM;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(Lo/AM;I)V

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;-><init>(Lo/Bv;)V

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lo/Bz;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;-><init>(Lo/Bz;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/netflix/cl/model/TrackingInfo;
    .locals 4

    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    instance-of v2, v1, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/SearchResultsSummaryCLTrackingInfo;->a()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "query"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->b(Lorg/json/JSONObject;)V

    .line 218
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$FragmentManager;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$FragmentManager;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/netflix/cl/model/TrackingInfo;

    return-object v1
.end method

.method public final e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    if-nez p1, :cond_0

    .line 127
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->a(Lorg/json/JSONObject;)V

    .line 137
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Application;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Application;-><init>(Lorg/json/JSONObject;)V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "lolomoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/LolomoCLTrackingInfo;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/LolomoCLTrackingInfo;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lo/AH;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 8

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/LolomoCLTrackingInfo;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/LolomoCLTrackingInfo;-><init>(Lo/AH;)V

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lo/Bi;Lo/Tf;Ljava/lang/Integer;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 16

    const-string v0, "viewData"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;

    .line 105
    invoke-interface/range {p1 .. p1}, Lo/Bi;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "missingOfflineRequestId"

    :goto_0
    move-object v3, v2

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    .line 107
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lo/Bi;->m()I

    move-result v2

    :goto_1
    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    .line 104
    invoke-direct/range {v2 .. v8}, Lcom/netflix/mediaclient/ui/trackinginfo/ListSummaryCLTrackingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    move-object v12, v0

    check-cast v12, Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    .line 113
    invoke-interface/range {p1 .. p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewData.playableId"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lo/ano;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_2

    .line 114
    invoke-virtual/range {p2 .. p2}, Lo/Tf;->getBoxartId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "missingOfflineImageKey"

    :goto_2
    const/4 v2, 0x0

    .line 112
    new-instance v3, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/VideoSummaryCLTrackingInfo;-><init>(ILjava/lang/String;I)V

    move-object v13, v3

    check-cast v13, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p0

    .line 103
    invoke-static/range {v9 .. v15}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;ILjava/lang/Object;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g()Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    return-object v0
.end method

.method public final j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 1

    .line 238
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->p:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackingInfoHolder(originalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackableLolomo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackableList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackableVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d:Lcom/netflix/mediaclient/ui/trackinginfo/CLLolomoTrackingInfoBase;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a:Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b:Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
