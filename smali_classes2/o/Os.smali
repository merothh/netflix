.class public Lo/Os;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Os$TaskDescription;,
        Lo/Os$Application;,
        Lo/Os$Activity;
    }
.end annotation


# instance fields
.field protected b:Z

.field protected final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lo/RadioGroup;

.field protected i:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

.field protected j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

.field private k:Lo/Os$Application;

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lo/Os$Activity;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private final v:Landroid/content/BroadcastReceiver;

.field private x:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lo/Os;->b:Z

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/Os;->f:Ljava/util/Map;

    .line 94
    iput-boolean v0, p0, Lo/Os;->m:Z

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lo/Os;->o:Ljava/util/Set;

    .line 98
    iput-boolean v0, p0, Lo/Os;->r:Z

    .line 103
    sget-object v0, Lo/id;->c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    iput-object v0, p0, Lo/Os;->i:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    .line 897
    new-instance v0, Lo/Os$1;

    invoke-direct {v0, p0}, Lo/Os$1;-><init>(Lo/Os;)V

    iput-object v0, p0, Lo/Os;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private G()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Lo/Os;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Os;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()V
    .locals 2

    .line 313
    iget-boolean v0, p0, Lo/Os;->q:Z

    const-string v1, "NotificationsFrag"

    if-nez v0, :cond_0

    const-string v0, "Can\'t complete init - views not created"

    .line 314
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Can\'t complete init - manager not ready"

    .line 319
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_1
    new-instance v0, Lo/Os$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/Os$Application;-><init>(Lo/Os;Lo/Os$3;)V

    iput-object v0, p0, Lo/Os;->k:Lo/Os$Application;

    .line 324
    iget-object v0, p0, Lo/Os;->h:Lo/RadioGroup;

    iget-object v1, p0, Lo/Os;->k:Lo/Os$Application;

    invoke-virtual {v0, v1}, Lo/RadioGroup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, v0}, Lo/Os;->c(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lo/Os;->r:Z

    .line 332
    iget-object v0, p0, Lo/Os;->k:Lo/Os$Application;

    const-string v1, "completeInitIfPossible"

    invoke-virtual {v0, v1}, Lo/Os$Application;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 926
    iget-boolean v0, p0, Lo/Os;->s:Z

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Os;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 928
    iput-boolean v0, p0, Lo/Os;->s:Z

    :cond_0
    return-void
.end method

.method private L()I
    .locals 2

    .line 421
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lo/Os;->F()I

    move-result v0

    iget-object v1, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v1}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lo/Os;->F()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private M()V
    .locals 5

    .line 774
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 777
    iget-object v1, p0, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {v1}, Lo/RadioGroup;->getFirstVisiblePosition()I

    move-result v1

    .line 778
    iget-object v2, p0, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {v2}, Lo/RadioGroup;->getLastVisiblePosition()I

    move-result v2

    :goto_0
    if-gt v1, v2, :cond_1

    .line 781
    iget-object v3, p0, Lo/Os;->k:Lo/Os$Application;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lo/Os$Application;->d(I)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 782
    iget-object v3, p0, Lo/Os;->k:Lo/Os$Application;

    invoke-virtual {v3, v1}, Lo/Os$Application;->d(I)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object v3

    .line 783
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->inQueue()Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Lo/Am;->b(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private N()V
    .locals 4

    .line 916
    iget-boolean v0, p0, Lo/Os;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 917
    iput-boolean v0, p0, Lo/Os;->s:Z

    .line 918
    invoke-virtual {p0}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Os;->v:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
    .locals 6

    .line 564
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 566
    iget-object p2, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    .line 567
    invoke-interface {p2}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->requestId()Ljava/lang/String;

    move-result-object v0

    .line 568
    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-interface {p2}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->playerTrackId()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v3, v0, p2, v1, v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 570
    new-instance p2, Lo/Os$3;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/Os$3;-><init>(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
    .locals 6

    const-string v0, "NotificationsFrag"

    if-nez p1, :cond_0

    const-string p1, "SPY-8161 - Got null target value"

    .line 737
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 739
    invoke-direct {p0, p2, p3}, Lo/Os;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 742
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x718f5b5e

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0x615839e5

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "PLAYBACK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "DISPLAY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-8161 - Got unsupported target value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, p2, p3}, Lo/Os;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 747
    :cond_4
    invoke-direct {p0, p2, p3}, Lo/Os;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 744
    :cond_5
    invoke-direct {p0, p2, p3}, Lo/Os;->a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;
    .locals 6

    .line 675
    new-instance v5, Lo/Oy;

    invoke-direct {v5, p0, p2, p3}, Lo/Oy;-><init>(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)V

    .line 677
    new-instance p3, Lo/Ow;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lo/Ow;-><init>(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    return-object p3
.end method

.method static synthetic a(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lo/Os;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 3

    .line 659
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 663
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p0, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 664
    sget-object p0, Lo/OM;->b:Lo/OM$Application;

    invoke-virtual {p0, p1, p2}, Lo/OM$Application;->d(Landroid/content/Context;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lo/Os;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lo/Os;->n:Z

    return p0
.end method

.method static synthetic a(Lo/Os;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lo/Os;->n:Z

    return p1
.end method

.method static synthetic b(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/Os;->a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Lorg/json/JSONObject;
    .locals 0

    .line 675
    invoke-direct {p0, p1, p2}, Lo/Os;->d(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 2

    .line 799
    new-instance v0, Lo/u$Dialog$TaskDescription;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p3, p2, v1}, Lo/u$Dialog$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    .line 801
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object p2, Lo/u$Dialog;->d:Lo/u$Dialog;

    invoke-virtual {p1, p2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    .line 802
    invoke-virtual {p1, v0}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    .line 803
    invoke-virtual {p0}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lo/Os;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/Os;->c(Z)V

    return-void
.end method

.method static synthetic b(Lo/Os;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lo/Os;->l:Z

    return p0
.end method

.method private c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
    .locals 7

    .line 599
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v6

    .line 600
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 601
    iget-object v4, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    .line 602
    invoke-interface {v4}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->requestId()Ljava/lang/String;

    move-result-object v3

    .line 604
    new-instance p2, Lo/Os$2;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lo/Os$2;-><init>(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Ljava/lang/String;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    return-object p2
.end method

.method static synthetic c(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Os;->b(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/Os;->a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Landroid/view/View;)V
    .locals 1

    .line 679
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object p5

    invoke-virtual {p5}, Lo/Am;->w()Lo/zG;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 680
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object p5

    invoke-virtual {p5}, Lo/Am;->w()Lo/zG;

    move-result-object p5

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo/Os$TaskDescription;

    invoke-direct {v0, p0}, Lo/Os$TaskDescription;-><init>(Lo/Os;)V

    invoke-interface {p5, p1, v0}, Lo/zG;->i(Ljava/lang/String;Lo/zU;)V

    .line 682
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p5, "android.intent.action.VIEW"

    invoke-direct {p1, p5, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p2, p1}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 684
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object p3, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    invoke-direct {p2, p3, p4}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p3, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p3}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method static synthetic c(Lo/Os;Ljava/lang/String;Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/Os;->e(Ljava/lang/String;Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method private c(Z)V
    .locals 5

    .line 813
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Lo/Os;->r:Z

    .line 816
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo/Os;->F()I

    move-result v3

    sub-int/2addr v3, v0

    new-instance v0, Lo/Os$5;

    const-string v4, "NotificationsFrag"

    invoke-direct {v0, p0, v4, p1}, Lo/Os$5;-><init>(Lo/Os;Ljava/lang/String;Lo/Am;)V

    invoke-interface {v1, v2, v3, v0}, Lo/zG;->a(IILo/zU;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/Os;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lo/Os;->t:Z

    return p0
.end method

.method static synthetic c(Lo/Os;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lo/Os;->e(Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lo/Os;)Ljava/util/Set;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/Os;->o:Ljava/util/Set;

    return-object p0
.end method

.method private d(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Lorg/json/JSONObject;
    .locals 4

    .line 631
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 633
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "trackId"

    if-eqz v1, :cond_0

    .line 635
    :try_start_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 636
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 637
    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;->trackId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 639
    :cond_0
    iget-object v1, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v1}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->baseTrackId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "position"

    .line 642
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "messageGuid"

    .line 643
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "titleId"

    .line 644
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "NotificationsFrag"

    const-string v1, "getModelObject() got an exception"

    .line 647
    invoke-static {p1, v1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-object v0
.end method

.method static synthetic d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lo/Os;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lo/Os;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method static synthetic d(Lo/Os;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lo/Os;->t:Z

    return p1
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 658
    new-instance v0, Lo/Ox;

    invoke-direct {v0, p1, p2}, Lo/Ox;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-object v0
.end method

.method static synthetic e(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lo/Os;->e(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Os;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lo/Os;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 2

    .line 589
    new-instance v0, Lcom/netflix/cl/model/context/DeepLinkInput;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netflix/cl/model/context/DeepLinkInput;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 591
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    .line 593
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 595
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method

.method static synthetic e(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/Os;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Landroid/view/View;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 3

    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lo/Os;->r:Z

    .line 879
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->b:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 881
    iput-boolean p1, p0, Lo/Os;->l:Z

    .line 882
    iget-object v0, p0, Lo/Os;->k:Lo/Os$Application;

    if-eqz v0, :cond_0

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForNetworkError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/Os;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Os$Application;->d(Ljava/lang/String;)V

    :cond_0
    return p1

    .line 889
    :cond_1
    iput-boolean v0, p0, Lo/Os;->l:Z

    return v0
.end method

.method static synthetic e(Lo/Os;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lo/Os;->G()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lo/Os;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lo/Os;->m:Z

    return p1
.end method

.method static synthetic f(Lo/Os;)Lo/Os$Application;
    .locals 0

    .line 76
    iget-object p0, p0, Lo/Os;->k:Lo/Os$Application;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 402
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-direct {p0}, Lo/Os;->L()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 406
    iget-object v3, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v3}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    .line 407
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 408
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 413
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {p0}, Lo/Os;->U_()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    new-instance v2, Lo/Os$TaskDescription;

    invoke-direct {v2, p0}, Lo/Os$TaskDescription;-><init>(Lo/Os;)V

    invoke-interface {v1, v0, v2}, Lo/zG;->c(Ljava/util/List;Lo/zU;)V

    :cond_2
    return-void
.end method

.method public B()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()I
    .locals 3

    .line 379
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    .line 381
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public D()I
    .locals 1

    .line 391
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected E()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected F()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected H()I
    .locals 1

    .line 767
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fI:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 229
    iget-object v0, p0, Lo/Os;->x:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NotificationsFrag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "%s: notifications %s is null for presentation ended session"

    .line 231
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/Os;->x:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lo/Os;->x:Ljava/lang/Long;

    :goto_0
    return-void
.end method

.method public b(Lo/Os$Activity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/Os;->p:Lo/Os$Activity;

    .line 112
    iget-boolean p1, p0, Lo/Os;->r:Z

    if-nez p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lo/Os;->y()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    const-string v0, "NotificationsFrag"

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "notificationCnt"

    .line 212
    invoke-virtual {p0}, Lo/Os;->D()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "unreadNotificationCnt"

    .line 213
    invoke-virtual {p0}, Lo/Os;->C()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "could not put data into clv2Model for notifications logging %s"

    .line 215
    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    :goto_0
    iget-object v4, p0, Lo/Os;->x:Ljava/lang/Long;

    if-nez v4, :cond_0

    .line 219
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationSelector:Lcom/netflix/cl/model/AppView;

    new-instance v3, Lo/Op;

    invoke-direct {v3, v1}, Lo/Op;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Os;->x:Ljava/lang/Long;

    goto :goto_1

    .line 221
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    const/4 p1, 0x2

    iget-object v0, p0, Lo/Os;->x:Ljava/lang/Long;

    aput-object v0, v5, p1

    const-string p1, "%s: notifications %s unended presentation started session with id: %d"

    .line 223
    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-interface {v1, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "titleId"

    const-string v3, "messageGuid"

    const-string v4, "read"

    const-string v5, "position"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 245
    :goto_0
    invoke-direct/range {p0 .. p0}, Lo/Os;->L()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 246
    iget-object v0, v1, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    const/4 v8, 0x2

    const-string v9, "NotificationsFrag"

    const/4 v10, 0x0

    if-eqz p1, :cond_2

    .line 249
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 250
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 253
    :try_start_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 254
    sget-object v14, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v15

    invoke-static {v6, v14, v15, v10, v6}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(ZLcom/netflix/cl/model/AppView;Lo/zR;Lcom/netflix/cl/model/context/CLContext;Z)V

    .line 257
    :cond_0
    invoke-virtual {v12, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v10

    invoke-virtual {v12, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {v13, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "notificationState"

    .line 265
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v4

    goto :goto_1

    :cond_1
    const-string v14, "unread"

    :goto_1
    invoke-virtual {v13, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    iget-object v10, v1, Lo/Os;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_4

    .line 272
    sget-object v10, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v14, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v15, Lcom/netflix/cl/model/AppView;->notificationItem:Lcom/netflix/cl/model/AppView;

    new-instance v11, Lo/Or;

    invoke-direct {v11, v13}, Lo/Or;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v14, v15, v11}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v10, v14}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v10

    .line 273
    iget-object v11, v1, Lo/Os;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 277
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-string v9, "%s: could not put data into model: %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 281
    :cond_2
    iget-object v11, v1, Lo/Os;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_3

    .line 284
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v6

    .line 285
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v8

    const-string v0, "%s: Presentation sessionId is null for notification with id %s and title %s"

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 287
    :cond_3
    sget-object v8, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v8, v11}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 288
    iget-object v8, v1, Lo/Os;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->messageGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 300
    invoke-direct {p0, v0}, Lo/Os;->c(Z)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lo/Os;->r:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "notifications_list"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "has_load_more_list"

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lo/Os;->m:Z

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/NotificationsListSummary;

    iput-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    const-string v0, "notifications_list_to_be_read"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lo/Os;->o:Ljava/util/Set;

    .line 124
    invoke-static {v0, v1}, Lo/adK;->b([Landroid/os/Parcelable;Ljava/util/Set;)V

    const-string v0, "were_notifications_fetched"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Os;->n:Z

    const-string v0, "notification_list_status"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    iput-object v0, p0, Lo/Os;->i:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    const-string v0, "extra_show_notifications"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/Os;->b:Z

    .line 131
    invoke-virtual {p0}, Lo/Os;->y()V

    .line 134
    :cond_0
    invoke-direct {p0}, Lo/Os;->N()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "NotificationsFrag"

    const-string v0, "Creating new frag view..."

    .line 139
    invoke-static {p3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    .line 140
    iput-boolean p3, p0, Lo/Os;->q:Z

    .line 142
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fE:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 143
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->lC:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/RadioGroup;

    iput-object p2, p0, Lo/Os;->h:Lo/RadioGroup;

    .line 144
    iget-object p2, p0, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {p2, p3}, Lo/RadioGroup;->setItemsCanFocus(Z)V

    .line 145
    iget-object p2, p0, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {p0}, Lo/Os;->x()Z

    move-result p3

    invoke-virtual {p2, p3}, Lo/RadioGroup;->setAsStatic(Z)V

    .line 147
    invoke-direct {p0}, Lo/Os;->I()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 197
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 199
    invoke-direct {p0}, Lo/Os;->K()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 155
    invoke-virtual {p0}, Lo/Os;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    invoke-direct {p0}, Lo/Os;->I()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 296
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 205
    invoke-direct {p0}, Lo/Os;->M()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lo/Os;->G()Z

    move-result v0

    const-string v1, "has_load_more_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    const-string v1, "notifications_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    iget-object v0, p0, Lo/Os;->o:Ljava/util/Set;

    .line 175
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "notifications_list_to_be_read"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 177
    iget-boolean v0, p0, Lo/Os;->n:Z

    const-string v1, "were_notifications_fetched"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    iget-object v0, p0, Lo/Os;->i:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    const-string v1, "notification_list_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    iget-boolean v0, p0, Lo/Os;->b:Z

    const-string v1, "extra_show_notifications"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected v()I
    .locals 2

    .line 337
    iget-boolean v0, p0, Lo/Os;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lo/Os;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/Os;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method protected x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method y()V
    .locals 2

    .line 350
    invoke-virtual {p0}, Lo/Os;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lo/Os;->b:Z

    .line 354
    :cond_0
    iget-object v0, p0, Lo/Os;->p:Lo/Os$Activity;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lo/Os;->B()Z

    move-result v1

    invoke-interface {v0, v1}, Lo/Os$Activity;->e(Z)V

    :cond_1
    return-void
.end method

.method protected z()Z
    .locals 3

    .line 360
    iget-object v0, p0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 364
    :cond_0
    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    .line 367
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method
