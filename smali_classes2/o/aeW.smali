.class public Lo/aeW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;


# instance fields
.field public final a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/String;

.field private d:Z

.field protected final e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/aeW;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    .line 47
    iput-object p2, p0, Lo/aeW;->c:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lo/aeW;->g:Z

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/aeW;->a:J

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    .line 88
    sget-object v0, Lo/aeW$2;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown asset location type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object p1

    .line 92
    :cond_2
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->a:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object p1

    .line 90
    :cond_3
    sget-object p1, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/aeW;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 104
    invoke-static {}, Lo/aeB;->a()Z

    .line 105
    iget-boolean v0, p0, Lo/aeW;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aeW;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    const/4 v2, 0x0

    .line 108
    invoke-interface {v1, p0, v2, v2, p1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->c(Lo/aeW;Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lo/CompatibilityInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aeU;",
            "Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-static {}, Lo/aeB;->a()Z

    .line 74
    iget-object p3, p0, Lo/aeW;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    if-eqz p3, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lo/aeW;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setImageDataSource(Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 76
    iget-object p3, p0, Lo/aeW;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/aeW;->a:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p3, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->setAssetFetchLatency(I)V

    .line 78
    :cond_0
    iget-boolean p3, p0, Lo/aeW;->d:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lo/aeW;->b:Ljava/util/Map;

    if-eqz p3, :cond_1

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    const/4 v1, 0x0

    .line 81
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->c(Lo/aeW;Lo/aeU;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lo/aeW;->b:Ljava/util/Map;

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    .line 63
    iget-object v1, p0, Lo/aeW;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    iget-boolean v2, p0, Lo/aeW;->g:Z

    invoke-interface {v0, p0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->e(Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lo/aeW;->d:Z

    return-void
.end method
