.class Lo/KC$Activity;
.super Lo/KL$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lo/ResourceCursorTreeAdapter;Lo/PatternMatcher;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lo/KL$Application;-><init>(Landroid/view/ViewGroup;Lo/ResourceCursorTreeAdapter;Lo/PatternMatcher;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 2

    .line 76
    instance-of v0, p2, Lo/agg;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p2

    check-cast v0, Lo/agg;

    .line 78
    invoke-interface {v0}, Lo/agg;->bs()Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0}, Lo/agg;->as_()Lo/AR;

    move-result-object p2

    .line 82
    invoke-interface {v0}, Lo/agg;->bs()Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;->getImageTypeIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, p2, v0, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/KL$Application;->c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1
.end method
