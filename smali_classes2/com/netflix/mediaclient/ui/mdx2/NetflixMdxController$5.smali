.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/CommonClock;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/CommonClock;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 417
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->s()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 420
    instance-of v3, v1, Lo/CommonClock$FragmentManager;

    const-string v4, "controllerView.context"

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xff8

    const/16 v17, 0x0

    const-string v6, "com.netflix.mediaclient.intent.action.MDX_ACTION_RESUME"

    move-object v4, v1

    move-object v5, v2

    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 422
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_1

    .line 425
    :cond_0
    instance-of v3, v1, Lo/CommonClock$Dialog;

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xff8

    const/16 v17, 0x0

    const-string v6, "com.netflix.mediaclient.intent.action.MDX_ACTION_PAUSE"

    move-object v4, v1

    move-object v5, v2

    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 427
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_1

    .line 430
    :cond_1
    instance-of v3, v1, Lo/CommonClock$ComponentName;

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 435
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 438
    sget-object v4, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf78

    const/16 v17, 0x0

    const-string v6, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    move-object v4, v1

    move-object v5, v2

    .line 434
    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 440
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_1

    .line 443
    :cond_2
    instance-of v3, v1, Lo/CommonClock$PendingIntent;

    if-eqz v3, :cond_3

    .line 444
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 445
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 448
    sget-object v4, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->j:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf78

    const/16 v17, 0x0

    const-string v6, "com.netflix.mediaclient.intent.action.MDX_ACTION_STOP"

    move-object v4, v1

    move-object v5, v2

    .line 444
    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 450
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    new-instance v3, Lo/Build$IntentSender;

    invoke-direct {v3, v2}, Lo/Build$IntentSender;-><init>(Ljava/lang/String;)V

    check-cast v3, Lo/Build;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    .line 451
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_1

    .line 454
    :cond_3
    instance-of v3, v1, Lo/CommonClock$AssistContent;

    if-eqz v3, :cond_4

    .line 455
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 456
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    check-cast v1, Lo/CommonClock$AssistContent;

    invoke-virtual {v1}, Lo/CommonClock$AssistContent;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xff0

    const/16 v17, 0x0

    const-string v6, "com.netflix.mediaclient.intent.action.MDX_ACTION_SEEK"

    move-object v4, v5

    move-object v5, v2

    .line 455
    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 461
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_1

    .line 464
    :cond_4
    instance-of v3, v1, Lo/CommonClock$SharedElementCallback;

    if-eqz v3, :cond_5

    .line 465
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 466
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    check-cast v1, Lo/CommonClock$SharedElementCallback;

    invoke-virtual {v1}, Lo/CommonClock$SharedElementCallback;->e()I

    move-result v4

    invoke-virtual {v1}, Lo/CommonClock$SharedElementCallback;->b()I

    move-result v1

    mul-int v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xff0

    const/16 v17, 0x0

    const-string v6, "com.netflix.mediaclient.intent.action.MDX_ACTION_SKIP"

    move-object v4, v5

    move-object v5, v2

    .line 465
    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 471
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto/16 :goto_1

    .line 474
    :cond_5
    instance-of v3, v1, Lo/CommonClock$ActionBar;

    if-eqz v3, :cond_6

    .line 475
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;

    invoke-direct {v3, v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$Activity;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;Lo/CommonClock;)V

    check-cast v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto/16 :goto_1

    .line 486
    :cond_6
    instance-of v3, v1, Lo/CommonClock$ComponentCallbacks2;

    if-eqz v3, :cond_9

    .line 487
    check-cast v1, Lo/CommonClock$ComponentCallbacks2;

    invoke-virtual {v1}, Lo/CommonClock$ComponentCallbacks2;->b()Ljava/lang/Object;

    move-result-object v1

    .line 488
    instance-of v2, v1, Lcom/netflix/mediaclient/media/Language;

    if-eqz v2, :cond_8

    .line 489
    sget-object v2, Lo/gq;->d:Lo/gq$TaskDescription;

    invoke-virtual {v2}, Lo/gq$TaskDescription;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 490
    new-instance v3, Lo/SimpleMonthView;

    .line 491
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v4, Landroid/content/Context;

    .line 492
    check-cast v1, Lcom/netflix/mediaclient/media/Language;

    .line 493
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->j(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;

    move-result-object v2

    check-cast v2, Lo/SimpleMonthView$ActionBar;

    .line 490
    invoke-direct {v3, v4, v1, v2}, Lo/SimpleMonthView;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;Lo/SimpleMonthView$ActionBar;)V

    .line 494
    invoke-virtual {v3}, Lo/SimpleMonthView;->show()V

    goto/16 :goto_1

    .line 496
    :cond_7
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->g(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lo/CT;

    move-result-object v2

    check-cast v1, Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v2, v1}, Lo/CT;->b(Lcom/netflix/mediaclient/media/Language;)V

    goto/16 :goto_1

    .line 500
    :cond_8
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It is expected to be a Language, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 505
    :cond_9
    instance-of v3, v1, Lo/CommonClock$TaskDescription;

    if-eqz v3, :cond_a

    .line 506
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {}, Lo/Dk;->b()Lo/Dk;

    move-result-object v4

    const/4 v5, 0x1

    .line 507
    invoke-virtual {v4, v5}, Lo/Dk;->setCancelable(Z)V

    .line 508
    new-instance v5, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;

    invoke-direct {v5, v2, v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;Lo/CommonClock;)V

    check-cast v5, Lo/Dk$StateListAnimator;

    invoke-virtual {v4, v5}, Lo/Dk;->d(Lo/Dk$StateListAnimator;)V

    .line 516
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v2, v4

    check-cast v2, Lo/PushbackReader;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    .line 506
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lo/Dk;)V

    goto/16 :goto_1

    .line 520
    :cond_a
    instance-of v3, v1, Lo/CommonClock$VoiceInteractor;

    if-eqz v3, :cond_c

    .line 521
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->j()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    goto :goto_0

    .line 522
    :cond_b
    sget-object v3, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->c:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    .line 523
    :goto_0
    check-cast v1, Lo/CommonClock$VoiceInteractor;

    invoke-virtual {v1}, Lo/CommonClock$VoiceInteractor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    move-result-object v1

    .line 524
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 525
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 528
    invoke-virtual {v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b()Ljava/lang/String;

    move-result-object v11

    .line 529
    invoke-virtual {v1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->b()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf38

    const/16 v17, 0x0

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_SKIP_INTRO"

    move-object v3, v5

    move-object v4, v6

    move-object v5, v2

    move-object v6, v1

    .line 524
    invoke-static/range {v3 .. v17}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 531
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v2, Lo/Build$ContentResolver;->c:Lo/Build$ContentResolver;

    check-cast v2, Lo/Build;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto :goto_1

    .line 533
    :cond_c
    instance-of v2, v1, Lo/CommonClock$LoaderManager;

    if-eqz v2, :cond_d

    .line 535
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 536
    check-cast v1, Lo/CommonClock$LoaderManager;

    invoke-virtual {v1}, Lo/CommonClock$LoaderManager;->a()Ljava/lang/String;

    move-result-object v4

    .line 537
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 538
    invoke-virtual {v1}, Lo/CommonClock$LoaderManager;->e()Z

    move-result v6

    .line 539
    sget-object v7, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->k:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 534
    invoke-static/range {v3 .. v9}, Lo/Mb;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z

    goto :goto_1

    .line 545
    :cond_d
    instance-of v1, v1, Lo/CommonClock$StateListAnimator;

    if-eqz v1, :cond_e

    .line 546
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 549
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->p()Lo/Mh;

    move-result-object v2

    .line 547
    invoke-static {v1, v2}, Lo/Mn;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;

    move-result-object v2

    check-cast v2, Landroid/app/Dialog;

    .line 546
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    goto :goto_1

    .line 554
    :cond_e
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    :cond_f
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lo/CommonClock;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->e(Lo/CommonClock;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
