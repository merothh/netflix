.class public final Lo/FN$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lo/FN;


# direct methods
.method constructor <init>(Lo/FN;)V
    .locals 0

    iput-object p1, p0, Lo/FN$Activity;->d:Lo/FN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lo/DG;

    invoke-virtual {p0, p1}, Lo/FN$Activity;->d(Lo/DG;)V

    return-void
.end method

.method public final d(Lo/DG;)V
    .locals 34

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 624
    sget-object v1, Lo/FN;->u:Lo/FN$Application;

    check-cast v1, Lo/MessagePdu;

    .line 626
    instance-of v1, v0, Lo/DG$TaskDescription;

    if-eqz v1, :cond_0

    .line 627
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 628
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    instance-of v0, v0, Lo/CY;

    if-eqz v0, :cond_b

    .line 630
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v0}, Lo/FN;->d(Lo/FN;)Lo/FL;

    move-result-object v8

    .line 631
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v0}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "videoId"

    invoke-static {v9, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lo/FI;->a(Lo/FI;Ljava/lang/String;ZZZZZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 632
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v1

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v8

    const-string v0, "detailsPageRepositoryAb1\u2026y.getDestroyObservable())"

    invoke-static {v8, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 634
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;

    invoke-direct {v0, v7}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$initPrimaryDetailsView$1$2;-><init>(Lo/FN$Activity;)V

    move-object v11, v0

    check-cast v11, Lo/alA;

    const/4 v12, 0x3

    const/4 v13, 0x0

    .line 633
    invoke-static/range {v8 .. v13}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0

    .line 668
    :cond_0
    instance-of v1, v0, Lo/DG$Fragment;

    if-eqz v1, :cond_1

    .line 669
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v1}, Lo/FN;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lo/FN$Activity$4;

    invoke-direct {v2, v7, v0}, Lo/FN$Activity$4;-><init>(Lo/FN$Activity;Lo/DG;)V

    check-cast v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto/16 :goto_0

    .line 694
    :cond_1
    sget-object v1, Lo/DG$ActionBar;->e:Lo/DG$ActionBar;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v0}, Lo/FN;->i(Lo/FN;)V

    goto/16 :goto_0

    .line 697
    :cond_2
    sget-object v1, Lo/DG$Activity;->d:Lo/DG$Activity;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 698
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pI:I

    invoke-virtual {v0, v1}, Lo/FN;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "getString(R.string.restart_state_button_title)"

    invoke-static {v9, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pK:I

    invoke-virtual {v0, v1}, Lo/FN;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "getString(R.string.restart_state_button_message)"

    invoke-static {v10, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 702
    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    .line 703
    sget-object v3, Lcom/netflix/cl/model/AppView;->ikoResetStatePrompt:Lcom/netflix/cl/model/AppView;

    .line 702
    invoke-direct {v1, v3, v2}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 701
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v8

    .line 707
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1162
    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1164
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1163
    move-object v15, v0

    check-cast v15, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 708
    new-instance v2, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object/from16 v16, v2

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1fff

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v33}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    const/4 v0, 0x1

    .line 709
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Z)V

    .line 710
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d(Z)V

    .line 712
    new-instance v11, Lo/FN$Activity$Activity;

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v3, p0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lo/FN$Activity$Activity;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lo/FN$Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v11

    check-cast v12, Ljava/lang/Runnable;

    .line 735
    new-instance v0, Lo/FN$Activity$TaskDescription;

    invoke-direct {v0, v7, v8, v9, v10}, Lo/FN$Activity$TaskDescription;-><init>(Lo/FN$Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, Ljava/lang/Runnable;

    .line 744
    new-instance v0, Lo/CalendarViewLegacyDelegate$Activity;

    .line 747
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v1, v2}, Lo/FN;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 749
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {v1, v2}, Lo/FN;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v0

    .line 744
    invoke-direct/range {v8 .. v14}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 753
    move-object v1, v15

    check-cast v1, Landroid/content/Context;

    .line 754
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 755
    check-cast v0, Lo/hK;

    .line 752
    invoke-static {v1, v2, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 757
    invoke-virtual {v15, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 760
    :cond_3
    sget-object v1, Lo/DG$PendingIntent;->c:Lo/DG$PendingIntent;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->X()V

    goto/16 :goto_0

    .line 763
    :cond_4
    sget-object v1, Lo/DG$FragmentManager;->b:Lo/DG$FragmentManager;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 764
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->aa()V

    goto/16 :goto_0

    .line 766
    :cond_5
    sget-object v1, Lo/DG$LoaderManager;->d:Lo/DG$LoaderManager;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 767
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->Z()V

    goto/16 :goto_0

    .line 769
    :cond_6
    instance-of v1, v0, Lo/DG$StateListAnimator;

    if-eqz v1, :cond_7

    .line 770
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    check-cast v0, Lo/DG$StateListAnimator;

    invoke-virtual {v0}, Lo/DG$StateListAnimator;->e()I

    move-result v2

    invoke-virtual {v0}, Lo/DG$StateListAnimator;->b()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lo/FN;->e(Lo/FN;IZ)V

    goto/16 :goto_0

    .line 772
    :cond_7
    instance-of v1, v0, Lo/DG$Application;

    if-eqz v1, :cond_9

    .line 773
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v1

    .line 774
    new-instance v2, Lo/DC$ApplicationInfo;

    .line 775
    check-cast v0, Lo/DG$Application;

    invoke-virtual {v0}, Lo/DG$Application;->b()Z

    move-result v3

    .line 774
    invoke-direct {v2, v3}, Lo/DC$ApplicationInfo;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    .line 1166
    const-class v3, Lo/DC;

    invoke-virtual {v1, v3, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 778
    invoke-virtual {v0}, Lo/DG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 779
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lo/FN$Activity$1;

    invoke-direct {v1, v7}, Lo/FN$Activity$1;-><init>(Lo/FN$Activity;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto :goto_0

    .line 791
    :cond_8
    iget-object v0, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lo/FN$Activity$5;

    invoke-direct {v1, v7}, Lo/FN$Activity$5;-><init>(Lo/FN$Activity;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto :goto_0

    .line 805
    :cond_9
    instance-of v1, v0, Lo/DK$ActionBar;

    if-eqz v1, :cond_b

    .line 807
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->l(Lo/FN;)Lo/Oc;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 808
    iget-object v3, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v3}, Lo/FN;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 809
    iget-object v4, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v4}, Lo/FN;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->e()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 810
    iget-object v5, v7, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v5}, Lo/FN;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->b()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    .line 807
    invoke-virtual {v1, v3, v4, v5, v2}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 816
    :cond_a
    iget-object v1, v7, Lo/FN$Activity;->d:Lo/FN;

    check-cast v0, Lo/DK$ActionBar;

    invoke-virtual {v0}, Lo/DK$ActionBar;->b()Z

    move-result v0

    invoke-static {v1, v0}, Lo/FN;->e(Lo/FN;Z)V

    :cond_b
    :goto_0
    return-void
.end method
