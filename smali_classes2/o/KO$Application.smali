.class public final Lo/KO$Application;
.super Lo/KL$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/RemoteViewsAdapter;Lo/KO;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cover"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topTenListAdapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    check-cast p2, Lo/ResourceCursorTreeAdapter;

    .line 63
    check-cast p3, Lo/PatternMatcher;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lo/KL$Application;-><init>(Landroid/view/ViewGroup;Lo/ResourceCursorTreeAdapter;Lo/PatternMatcher;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 2

    const-string v0, "trackingInfoHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p2, Lo/agp;

    if-eqz v0, :cond_2

    .line 71
    move-object v0, p2

    check-cast v0, Lo/agp;

    invoke-virtual {v0}, Lo/agp;->bq()Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;->getBoxartId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0}, Lo/agp;->as_()Lo/AR;

    move-result-object p2

    const-string v0, "basicVideo.summary"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1

    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lo/KL$Application;->c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    goto :goto_1

    .line 76
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lo/KL$Application;->c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    :goto_1
    return-object p1
.end method
