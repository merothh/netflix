.class Lo/TC$21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->A()Lo/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic d:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;Z)V
    .locals 0

    .line 794
    iput-object p1, p0, Lo/TC$21;->d:Lo/TC;

    iput-boolean p2, p0, Lo/TC$21;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 797
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p1}, Lo/TC;->d(Lo/TC;)Lo/zN;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 801
    :cond_0
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

    const-string p2, "PlayerFragment"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p1}, Lo/TC;->b(Lo/TC;)V

    .line 804
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->n:Lo/Me;

    if-eqz p1, :cond_9

    .line 805
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->n:Lo/Me;

    invoke-virtual {p1, p3}, Lo/Me;->d(I)Lo/Mf;

    .line 806
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->n:Lo/Me;

    invoke-virtual {p1}, Lo/Me;->d()Lo/Mf;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Target is NULL, this should NOT happen!"

    .line 808
    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-boolean p1, p0, Lo/TC$21;->b:Z

    if-eqz p1, :cond_9

    .line 810
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->j()V

    goto/16 :goto_3

    .line 812
    :cond_1
    invoke-virtual {p1}, Lo/Mf;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, "Target is local, same as cancel. Do nothing"

    .line 813
    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-boolean p1, p0, Lo/TC$21;->b:Z

    if-eqz p1, :cond_9

    .line 815
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->j()V

    goto/16 :goto_3

    .line 822
    :cond_2
    iget-object p3, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p3}, Lo/TC;->d(Lo/TC;)Lo/zN;

    move-result-object p3

    invoke-virtual {p1}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lo/Mn;->b(Lo/zN;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "Remote target is available, start MDX playback, use local bookmark!"

    .line 823
    invoke-static {p2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    invoke-static {p2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e(Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;)V

    .line 826
    invoke-static {}, Lo/dQ;->i()Z

    move-result p2

    if-nez p2, :cond_3

    .line 827
    iget-object p2, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p2}, Lo/TC;->d(Lo/TC;)Lo/zN;

    move-result-object p2

    invoke-virtual {p1}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/zN;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_3
    iget-object p2, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p2}, Lo/TC;->d(Lo/TC;)Lo/zN;

    move-result-object p2

    invoke-virtual {p1}, Lo/Mf;->e()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-interface {p2, p1, p3}, Lo/zN;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    .line 833
    :goto_0
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->m()Lo/AK;

    move-result-object p1

    .line 834
    iget-object p2, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p2}, Lo/TC;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p2

    const/4 p3, -0x1

    .line 837
    iget-object p4, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p4}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 840
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p3

    long-to-int p3, p3

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 843
    invoke-interface {p1}, Lo/AK;->P()I

    move-result p3

    .line 848
    :cond_5
    :goto_1
    iget-object p4, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p4}, Lo/TC;->g(Lo/TC;)Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez p1, :cond_6

    .line 849
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p4, "extra_video_id"

    .line 850
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string p5, "extra_video_type_string_value"

    .line 851
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    .line 852
    iget-object p5, p0, Lo/TC$21;->d:Lo/TC;

    .line 853
    invoke-virtual {p5}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p5

    .line 852
    invoke-static {p5, p4, p1, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    goto :goto_2

    .line 860
    :cond_6
    iget-object p4, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p4}, Lo/TC;->i(Lo/TC;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p4

    .line 861
    iget-object p5, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p5}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p5

    invoke-static {p5, p1, p4, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 864
    :goto_2
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p1}, Lo/TC;->d(Lo/TC;)Lo/zN;

    move-result-object p1

    invoke-interface {p1}, Lo/zN;->A()V

    .line 867
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-static {p1}, Lo/TC;->g(Lo/TC;)Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 868
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->B()V

    goto :goto_3

    .line 870
    :cond_7
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-virtual {p1}, Lo/Serializable;->finish()V

    goto :goto_3

    :cond_8
    const-string p1, "Remote target is NOT available anymore, continue local plaback"

    .line 873
    invoke-static {p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-boolean p1, p0, Lo/TC$21;->b:Z

    if-eqz p1, :cond_9

    .line 875
    iget-object p1, p0, Lo/TC$21;->d:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->j()V

    :cond_9
    :goto_3
    return-void
.end method
