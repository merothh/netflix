.class Lo/TC$24;
.super Lio/reactivex/observers/DisposableObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lo/UK$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lo/TC$24;->d:Lo/TC;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/UK$TaskDescription;)V
    .locals 16

    move-object/from16 v0, p0

    .line 649
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 659
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 660
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->titleNeedsAppUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    iget-object v3, v0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v4

    .line 662
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->c()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v5

    .line 663
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    .line 664
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->a()I

    move-result v7

    .line 665
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->h()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v8

    .line 666
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->g()Lo/Tv;

    move-result-object v9

    .line 661
    invoke-static/range {v3 .. v9}, Lo/TC;->d(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 667
    iget-object v2, v0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual {v2}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->showAnimationWarningPopup(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    iget-object v2, v0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v3

    .line 669
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->c()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v4

    .line 670
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    .line 671
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->a()I

    move-result v6

    .line 672
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->h()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v7

    .line 673
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->g()Lo/Tv;

    move-result-object v8

    .line 668
    invoke-static/range {v2 .. v8}, Lo/TC;->a(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    goto/16 :goto_1

    .line 675
    :cond_2
    iget-object v1, v0, Lo/TC$24;->d:Lo/TC;

    invoke-static {v1}, Lo/TC;->a(Lo/TC;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    iget-object v2, v0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v3

    .line 677
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->c()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v4

    .line 678
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    .line 679
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->a()I

    move-result v6

    .line 680
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->h()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v7

    .line 681
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->g()Lo/Tv;

    move-result-object v8

    .line 676
    invoke-static/range {v2 .. v8}, Lo/TC;->b(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    goto :goto_1

    .line 683
    :cond_3
    iget-object v9, v0, Lo/TC$24;->d:Lo/TC;

    .line 684
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v10

    .line 685
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->c()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v11

    .line 686
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v12

    .line 687
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->a()I

    move-result v13

    .line 688
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->h()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v14

    .line 689
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->g()Lo/Tv;

    move-result-object v15

    .line 683
    invoke-static/range {v9 .. v15}, Lo/TC;->c(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    goto :goto_1

    .line 650
    :cond_4
    :goto_0
    iget-object v1, v0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 651
    iget-object v1, v0, Lo/TC$24;->d:Lo/TC;

    invoke-static {v1}, Lo/TC;->e(Lo/TC;)V

    goto :goto_1

    .line 652
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    sget-object v2, Lo/LegacyErrorStrings;->U:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-ne v1, v2, :cond_6

    .line 653
    iget-object v1, v0, Lo/TC$24;->d:Lo/TC;

    invoke-static {v1}, Lo/TC;->c(Lo/TC;)V

    goto :goto_1

    .line 655
    :cond_6
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerFragment No data, finishing up the player. Details="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lo/UK$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 656
    iget-object v1, v0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->v()V

    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 698
    iget-object v0, p0, Lo/TC$24;->d:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->v()V

    .line 699
    invoke-static {}, Lo/fd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TC$24;->d:Lo/TC;

    invoke-static {v0}, Lo/TC;->a(Lo/TC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "PlayerFragment No data, finishing up the player in Playgraph test"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "PlayerFragment No data, finishing up the player"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 646
    check-cast p1, Lo/UK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/TC$24;->b(Lo/UK$TaskDescription;)V

    return-void
.end method
