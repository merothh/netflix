.class public abstract Lo/KA$Application;
.super Lo/ParcelFormatException$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Application"
.end annotation


# instance fields
.field private a:Lo/Av;

.field private b:Lo/Ky;

.field private f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final j:Lo/Yd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ParcelFormatException$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    .line 48
    new-instance p1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object p3, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    invoke-direct {p1, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object p1, p0, Lo/KA$Application;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 53
    new-instance p1, Lo/KA$Application$TaskDescription;

    invoke-direct {p1, p0, p2}, Lo/KA$Application$TaskDescription;-><init>(Lo/KA$Application;Landroid/view/View;)V

    check-cast p1, Lo/Yd;

    iput-object p1, p0, Lo/KA$Application;->j:Lo/Yd;

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 4

    const-string v0, "trackingInfoHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    instance-of v0, p2, Lo/agp;

    if-eqz v0, :cond_2

    .line 131
    check-cast p2, Lo/agp;

    invoke-virtual {p2}, Lo/agp;->as_()Lo/AR;

    move-result-object v0

    const-string v1, "basicVideo.summary"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lo/agp;->as_()Lo/AR;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AR;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPY-17693: Missing video summary data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/KA$Application;->b:Lo/Ky;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 136
    :cond_1
    invoke-virtual {p2}, Lo/agp;->as_()Lo/AR;

    move-result-object p2

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public c(Lo/Av;Lo/Ky;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 151
    iget-object v0, p0, Lo/KA$Application;->j:Lo/Yd;

    invoke-static {v0}, Lo/Yh;->b(Lo/Yd;)V

    return-void
.end method

.method public c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string p4, "lomoContext"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "sourceTrackingInfoHolder"

    invoke-static {p5, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p4, p0, Lo/KA$Application;->j:Lo/Yd;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lo/Yd;->b(Z)V

    .line 105
    iput-object p1, p0, Lo/KA$Application;->b:Lo/Ky;

    .line 106
    iput-object p2, p0, Lo/KA$Application;->a:Lo/Av;

    .line 107
    invoke-virtual {p0, p5, p2, p3}, Lo/KA$Application;->c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lo/KA$Application;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public d()V
    .locals 2

    .line 90
    iget-object v0, p0, Lo/KA$Application;->j:Lo/Yd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Yd;->b(Z)V

    .line 91
    invoke-super {p0}, Lo/ParcelFormatException$Activity;->d()V

    .line 92
    invoke-virtual {p0}, Lo/KA$Application;->c()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    move-object v1, v0

    check-cast v1, Lo/Av;

    iput-object v1, p0, Lo/KA$Application;->a:Lo/Av;

    .line 113
    check-cast v0, Lo/Ky;

    iput-object v0, p0, Lo/KA$Application;->b:Lo/Ky;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/KA$Application;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 116
    iget-object v0, p0, Lo/KA$Application;->j:Lo/Yd;

    invoke-static {v0}, Lo/Yh;->c(Lo/Yd;)V

    .line 117
    invoke-super {p0}, Lo/ParcelFormatException$Activity;->e()V

    return-void
.end method

.method public abstract g()Z
.end method

.method public final i()Lo/Av;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/KA$Application;->a:Lo/Av;

    return-object v0
.end method

.method public final k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/KA$Application;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final l()Lo/Ky;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/KA$Application;->b:Lo/Ky;

    return-object v0
.end method

.method public final m()V
    .locals 2

    .line 143
    iget-object v0, p0, Lo/KA$Application;->j:Lo/Yd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Yd;->b(Z)V

    return-void
.end method

.method public n()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 160
    sget-object v0, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public o()Lcom/netflix/cl/model/context/CLContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
