.class Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final c:Ljava/lang/String;

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 432
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    .line 433
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZLcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 426
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 427
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 3

    .line 565
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 569
    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->h:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 570
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, p1, Lo/CY;

    if-eqz v0, :cond_1

    .line 573
    check-cast p1, Lo/CY;

    check-cast p1, Lo/CY;

    invoke-interface {p1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    goto :goto_0

    .line 575
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "netflixActivity is NOT an instanceof PlayContextProvider"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 576
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v0, -0x1cd

    const-string v1, "download_button"

    invoke-direct {p1, v1, v0}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 579
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 580
    invoke-static {v1, v2, p1, p2}, Lo/RL;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    move-result-object p1

    .line 579
    invoke-interface {v0, p1}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 5

    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->i()Ljava/lang/Long;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    invoke-interface {v1}, Lo/nS;->i()Z

    move-result v1

    .line 542
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    sget-object v1, Lo/he;->a:Lo/he$Application;

    invoke-virtual {v1}, Lo/he$Application;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v1, v2, v4, v3}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x1

    .line 548
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {p1, v1, v2, v3}, Lo/PY;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 560
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-ne v0, v1, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/pf;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/RL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 459
    :cond_2
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v1

    .line 460
    invoke-interface {v1}, Lo/Rq;->d()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 461
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 464
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$2;->d:[I

    move-object v4, p1

    check-cast v4, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 530
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->d(Landroid/view/View;)V

    goto/16 :goto_3

    .line 509
    :pswitch_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b:Z

    invoke-static {v0, v1, v2, v3}, Lo/PY;->c(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto/16 :goto_3

    .line 513
    :pswitch_2
    sget-object p1, Lo/gf;->e:Lo/gf$TaskDescription;

    invoke-virtual {p1}, Lo/gf$TaskDescription;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 514
    sget-object p1, Lo/Rf;->j:Lo/Rf$TaskDescription;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p1, v2, v3, v1, v0}, Lo/Rf$TaskDescription;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)V

    goto/16 :goto_3

    .line 520
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {p1, v1, v0}, Lo/Re;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)Lo/Re;

    move-result-object p1

    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showOfflineErrorDialog(Lo/Re;)V

    goto/16 :goto_3

    .line 469
    :pswitch_3
    invoke-interface {v1}, Lo/Bi;->m()I

    move-result p1

    .line 470
    invoke-static {p1}, Lo/ot;->e(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 471
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->f()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    invoke-static {v1, p1}, Lo/RL;->c(Lo/Bi;Lcom/netflix/cl/model/AppView;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    :goto_1
    move-object v7, p1

    goto :goto_2

    .line 473
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 474
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    goto :goto_1

    .line 475
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, p1, Lo/CY;

    if-eqz v0, :cond_7

    .line 476
    check-cast p1, Lo/CY;

    check-cast p1, Lo/CY;

    invoke-interface {p1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    goto :goto_1

    .line 482
    :cond_7
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v0, -0x1cc

    const-string v1, "download_button"

    invoke-direct {p1, v1, v0}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 486
    :goto_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-boolean v6, v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b:Z

    invoke-static/range {v2 .. v7}, Lo/PY;->b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_3

    .line 505
    :pswitch_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b:Z

    invoke-static {v0, v1, v3, v4, v2}, Lo/PY;->a(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto :goto_3

    .line 496
    :pswitch_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b:Z

    invoke-static {v0, v1, v2, v3}, Lo/PY;->b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto :goto_3

    .line 501
    :pswitch_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->c:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b:Z

    invoke-static {v0, v1, v3, v4, v2}, Lo/PY;->a(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMenu(Landroid/widget/PopupMenu;)Z

    goto :goto_3

    .line 534
    :cond_8
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->d(Landroid/view/View;)V

    :goto_3
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 438
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$Application;->a(Landroid/view/View;)V

    return-void
.end method
