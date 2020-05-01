.class final Lo/Mn$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Mn;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Am;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/Mh;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/Mh;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lo/Mn$5;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/Mn$5;->a:Lo/Am;

    iput-object p3, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mdx target clicked: item with id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", on position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdxUiUtils"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lo/Mn$5;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 180
    iget-object p1, p0, Lo/Mn$5;->a:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Service not ready - bailing early"

    .line 181
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p1}, Lo/Mh;->v()Lo/Me;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p3}, Lo/Me;->d(I)Lo/Mf;

    .line 187
    invoke-virtual {p1}, Lo/Me;->d()Lo/Mf;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const-string p1, "Target is NULL, this should NOT happen!"

    .line 190
    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lo/Mn$5;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    goto/16 :goto_3

    .line 194
    :cond_1
    iget-object p4, p0, Lo/Mn$5;->a:Lo/Am;

    invoke-virtual {p4}, Lo/Am;->l()Lo/zN;

    move-result-object p4

    if-eqz p4, :cond_9

    .line 197
    invoke-virtual {p1}, Lo/Mf;->a()Z

    move-result p5

    if-eqz p5, :cond_3

    .line 198
    iget-object p1, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p1}, Lo/Mh;->C()Z

    move-result p1

    const-string p5, ""

    if-eqz p1, :cond_2

    const-string p1, "We were playing remotely - switching to playback locally"

    .line 199
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {p4, p5, p3}, Lo/zN;->e(Ljava/lang/String;I)V

    .line 201
    iget-object p1, p0, Lo/Mn$5;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p2, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->D()Lo/AK;

    move-result-object p2

    iget-object p3, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p3}, Lo/Mh;->H()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p3

    iget-object p4, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p4}, Lo/Mh;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p4

    iget-object p5, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p5}, Lo/Mh;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p5, v0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 202
    iget-object p1, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p1}, Lo/Mh;->B()V

    goto :goto_2

    :cond_2
    const-string p1, "Target is local. Remove current target from MDX agent."

    .line 204
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-interface {p4, p5}, Lo/zN;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {p1}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lo/Mn;->b(Lo/zN;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 210
    iget-object p5, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p5}, Lo/Mh;->A()Z

    move-result p5

    if-nez p5, :cond_6

    iget-object p5, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p5}, Lo/Mh;->C()Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {p1}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object p1

    .line 238
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;->d:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    invoke-static {p2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e(Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;)V

    .line 240
    invoke-static {}, Lo/dQ;->i()Z

    move-result p2

    if-nez p2, :cond_5

    .line 241
    invoke-interface {p4, p1}, Lo/zN;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 244
    :cond_5
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-interface {p4, p1, p2}, Lo/zN;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    goto :goto_2

    .line 215
    :cond_6
    :goto_0
    iget-object p5, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p5}, Lo/Mh;->y()Lo/Mq;

    move-result-object p5

    if-eqz p5, :cond_7

    .line 219
    invoke-virtual {p5}, Lo/Mq;->h()I

    move-result p3

    goto :goto_1

    :cond_7
    const-string p5, "Remote player is null. This should not happen!"

    .line 225
    invoke-static {p2, p5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    invoke-virtual {p1}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p3}, Lo/zN;->e(Ljava/lang/String;I)V

    .line 229
    iget-object p1, p0, Lo/Mn$5;->e:Lo/Mh;

    invoke-interface {p1}, Lo/Mh;->z()V

    goto :goto_2

    :cond_8
    const-string p1, "Remote target is NOT available, stay and dismiss dialog"

    .line 249
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_2
    iget-object p1, p0, Lo/Mn$5;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    .line 257
    :cond_9
    :goto_3
    iget-object p1, p0, Lo/Mn$5;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxTargetListChanged()V

    return-void
.end method
