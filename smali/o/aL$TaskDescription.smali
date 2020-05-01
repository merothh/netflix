.class public final Lo/aL$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aL;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/aL;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lo/aL$TaskDescription;->d:Lo/aL;

    iput-object p2, p0, Lo/aL$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/aL$TaskDescription;->b:Ljava/lang/String;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Lo/Ai;->b(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_2

    .line 77
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 78
    invoke-static {}, Lo/ady;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 81
    iget-object v0, p0, Lo/aL$TaskDescription;->d:Lo/aL;

    iget-object v1, p0, Lo/aL$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lo/aL;->b(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    goto :goto_1

    .line 83
    :cond_0
    iget-object p2, p0, Lo/aL$TaskDescription;->d:Lo/aL;

    iget-object v0, p0, Lo/aL$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lo/aL;->c(Lo/aL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance p2, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    sget-object v0, Lo/aL;->b:Lo/aL$ActionBar;

    invoke-virtual {v0}, Lo/aL$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x226

    invoke-direct {p2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 89
    iget-object v2, p0, Lo/aL$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 90
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    .line 91
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoTitle()Ljava/lang/String;

    move-result-object v5

    .line 93
    move-object v6, p2

    check-cast v6, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 94
    sget-object p1, Lo/aL;->b:Lo/aL$ActionBar;

    invoke-virtual {p1}, Lo/aL$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-static/range {v2 .. v7}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lo/aL;->b:Lo/aL$ActionBar;

    invoke-virtual {v0}, Lo/aL$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": error - notification is null for eventGuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/aL$TaskDescription;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    .line 104
    iget-object p1, p0, Lo/aL$TaskDescription;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lo/aeb;->d(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method
