.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SimpleClock$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i(Lo/Bc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/Bc;

.field final synthetic e:Lo/CY;

.field private j:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/CY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->e:Lo/CY;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->d:Lo/Bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 918
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->a:Z

    .line 919
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lo/SystemVibrator;)V
    .locals 0

    const/4 p1, 0x0

    .line 956
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->a:Z

    .line 957
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->j:Z

    return-void
.end method

.method public c(Lo/SystemVibrator;Z)V
    .locals 0

    .line 923
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->a:Z

    return-void
.end method

.method public d(F)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b:Lo/DateTimeView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lo/DateTimeView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public d(Lo/SystemVibrator;I)V
    .locals 7

    .line 929
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/SetThumbRating;

    invoke-static {p2}, Lo/ShellCallback;->d(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/SetThumbRating;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 930
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->e:Lo/CY;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->e:Lo/CY;

    .line 931
    invoke-interface {v0}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    const/16 v0, -0x123

    const/16 v5, -0x123

    .line 932
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->d:Lo/Bc;

    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    new-instance v6, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3$2;

    const-string v0, "VideoDetailsViewGroup"

    invoke-direct {v6, p0, v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3$2;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;Ljava/lang/String;Ljava/lang/Long;)V

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/zU;)Z

    const/4 p1, 0x1

    .line 941
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->j:Z

    return-void
.end method
