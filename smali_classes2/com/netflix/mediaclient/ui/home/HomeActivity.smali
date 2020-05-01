.class public Lcom/netflix/mediaclient/ui/home/HomeActivity;
.super Lo/Io;
.source ""

# interfaces
.implements Lo/CY;
.implements Lo/Se$StateListAnimator;


# static fields
.field private static b:J


# instance fields
.field private a:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/LinearLayout$ActionBar;

.field private e:Ljava/lang/String;

.field private f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Lcom/netflix/cl/model/AppView;

.field public latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private m:Z

.field private n:J

.field private o:Z

.field private final p:Landroid/content/BroadcastReceiver;

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

.field public tvDiscovery:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final v:Lo/zT;

.field private final w:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lo/Io;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    .line 132
    sget-object v0, Lo/id;->c:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    .line 140
    sget-object v0, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->l:Lcom/netflix/cl/model/AppView;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->m:Z

    const-wide/16 v0, -0x1

    .line 150
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r:J

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->q:Z

    .line 152
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s:Z

    .line 260
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    .line 697
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->v:Lo/zT;

    .line 868
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/home/HomeActivity;J)J
    .locals 0

    .line 117
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r:J

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x20000

    .line 184
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "genre_id"

    const-string v1, "lolomo"

    .line 185
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->t()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 985
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lK:I

    .line 986
    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    const-string v1, "duration"

    .line 987
    invoke-virtual {v0, v1, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 988
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    .line 985
    invoke-static {p0, p1}, Lo/abX;->d(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 206
    :cond_0
    const-class v1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "genre_id"

    .line 214
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "lolomo"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->t:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HomeActivity"

    const-string v1, "notifyOthersOfTtrDone"

    .line 912
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 916
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 919
    invoke-static {p1}, Lo/adS;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 8

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "lolomo"

    const-string v2, "lomo_parcel"

    const-string v3, "genre_id"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    const-string v4, "expandCastPlayer"

    .line 403
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notifyCastPlayerShown(Z)V

    .line 407
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 409
    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "HomeActivity"

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    const-string p1, "No new ID to show"

    .line 410
    invoke-static {v7, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-eqz v3, :cond_3

    .line 419
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 420
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v3, :cond_5

    move-object v4, v3

    goto :goto_0

    .line 422
    :cond_5
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v5, v0

    const-string v4, "Asked to show list that we\'re already showing - skipping: %s"

    .line 421
    invoke-static {v7, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v5, 0x0

    goto :goto_1

    .line 424
    :cond_6
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 431
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_7
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 440
    :cond_8
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    const-string v1, "genre_parcel"

    .line 441
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const-string v1, "genre_filter"

    .line 442
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->j:Ljava/lang/String;

    .line 444
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const-string v1, "genre_from_lomo"

    .line 445
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->o:Z

    .line 446
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setIntent(Landroid/content/Intent;)V

    return v5
.end method

.method private c(Landroid/content/Intent;Z)V
    .locals 1

    .line 365
    invoke-super {p0, p1}, Lo/Io;->onNewIntent(Landroid/content/Intent;)V

    const-string p2, "HomeActivity"

    const-string v0, "onNewIntent: %s"

    .line 366
    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 368
    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 370
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 371
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {p1}, Lo/Ih;->b()Z

    goto :goto_0

    .line 373
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {p2, p1}, Lo/Ih;->a(Landroid/content/Intent;)Z

    :goto_0
    const/4 p1, 0x0

    .line 375
    invoke-virtual {p0, p1, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/home/HomeActivity;)J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r:J

    return-wide v0
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    .line 167
    sget-object p1, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x20000

    .line 169
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 170
    invoke-virtual {p1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "is_cold_start"

    .line 171
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Landroid/content/Intent;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0, p1}, Lo/Ih;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;
    .locals 0

    .line 178
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "genre_id"

    const-string p2, "lolomo"

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Z)V
    .locals 3

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genre_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "genre_parcel"

    .line 195
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "genre_from_lomo"

    .line 196
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 2

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->q:Z

    .line 776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 777
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Iv;->d(Ljava/util/Map;)Ljava/util/Map;

    .line 781
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->k:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 782
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->h:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 783
    invoke-static {}, Lo/afG;->b()V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method private e(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "genre_id"

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lolomo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private p()Z
    .locals 10

    .line 549
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    invoke-virtual {v0}, Lo/Iv;->c()Lo/AH;

    move-result-object v0

    const-string v1, "HomeActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "frag-lolomosummary is null, lolomo request is perhaps in-flight"

    .line 551
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 555
    :cond_0
    invoke-interface {v0}, Lo/AH;->getExpiryTimeStamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-gtz v8, :cond_1

    new-array v3, v7, [Ljava/lang/Object;

    .line 556
    invoke-interface {v0}, Lo/AH;->getExpiryTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "frag-lolomosummary has no expiry value %d"

    invoke-static {v1, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 560
    :cond_1
    invoke-interface {v0}, Lo/AH;->getExpiryTimeStamp()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r:J

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v8, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r:J

    sub-long/2addr v3, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 568
    iget-wide v8, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    sget-wide v8, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "lolomo expiry time stamp = %s, FORCE_EXP_DELTA PLT = %s, Lolomo\'s time to expiry = %s"

    invoke-static {v1, v2, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method private q()V
    .locals 2

    .line 527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->startRenderNavigationLevelSession()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 528
    invoke-virtual {p0, v0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(IILjava/lang/String;)V

    return-void
.end method

.method private r()V
    .locals 3

    .line 501
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->s()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 502
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 503
    invoke-static {p0}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->d(Lo/UnicodeScript;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 504
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->b(Lio/reactivex/Observer;)V

    return-void
.end method

.method private static s()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/Iu;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    :goto_0
    return-object v0
.end method

.method private t()V
    .locals 2

    .line 842
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->i:Z

    if-eqz v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "experience="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->a()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 846
    invoke-interface {v1, v0}, Lo/zu;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    const-string v1, "com.netflix.mediaclient.service.ACTION_EXPAND_HOME_CAST_PLAYER"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->n()Lo/Iv;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 792
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s:Z

    if-nez p2, :cond_0

    return-void

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/NetflixApplication;->B()V

    .line 796
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 797
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/Iv;->d(Ljava/util/Map;)Ljava/util/Map;

    .line 802
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->m:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 803
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ttrDone-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/NetflixApplication;->b(Ljava/lang/String;)V

    .line 805
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b()V

    .line 806
    invoke-direct {p0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 807
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s:Z

    return-void
.end method

.method public b(Lo/BC;)Lo/HwBlob;
    .locals 2

    .line 861
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lo/Se;->e(Landroid/view/View;Landroid/app/Activity;Lo/BC;)Lo/HwBlob;

    move-result-object p1

    return-object p1

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lo/Se;->e(Landroid/view/View;Landroid/app/Activity;Lo/BC;)Lo/HwBlob;

    move-result-object p1

    return-object p1
.end method

.method public b(IILjava/lang/String;)V
    .locals 1

    .line 532
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->p()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, "HomeActivity"

    const-string p2, "Lolomo not expired, no ui refresh"

    .line 533
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/Iv;->b(IILjava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->S()V

    return-void
.end method

.method public bottomTabReselected(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V
    .locals 1

    .line 671
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    .line 677
    :goto_0
    invoke-super {p0, p1}, Lo/Io;->bottomTabReselected(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 236
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HomeActivity"

    const-string v2, "showFilteredGenre filter=%s, genre=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    invoke-static {p2}, Lo/KV;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g()V

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 244
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genre_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "genre_filter"

    .line 245
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 248
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/KV;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "genre_parcel"

    .line 249
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {p1, p2}, Lo/Ih;->a(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public c(Lo/Am;)V
    .locals 2

    .line 491
    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Rq;->b(Lo/BC;)I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getTutorialHelper()Lo/Se;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/Se;->c(Lo/Se$StateListAnimator;Lo/Am;)V

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->j()Z

    return-void
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowCastMenuFab()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->v:Lo/zT;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 694
    invoke-static {}, Lo/TextServicesManager;->e()I

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 0

    .line 819
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->l()V

    .line 820
    invoke-super {p0}, Lo/Io;->finish()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->b()Z

    return-void
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .line 349
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 903
    sget-object v0, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public synthetic h()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    invoke-virtual {v0}, Lo/Iv;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Landroid/content/Intent;Z)V

    return v1

    :cond_1
    const-string v0, "HomeActivity"

    const-string v1, "No more items in back stack"

    .line 596
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public hasBottomNavBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Z
    .locals 1

    .line 513
    invoke-static {p0}, Lo/Iw;->c(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lo/Iw;

    move-result-object v0

    invoke-virtual {v0}, Lo/Iw;->e()Z

    move-result v0

    return v0
.end method

.method public k()Lo/Iv;
    .locals 1

    .line 629
    invoke-super {p0}, Lo/Io;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/Iv;

    return-object v0
.end method

.method public l()V
    .locals 2

    .line 824
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->q:Z

    if-eqz v0, :cond_0

    .line 825
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 828
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s:Z

    if-eqz v0, :cond_1

    .line 829
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method protected m()V
    .locals 4

    .line 517
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    .line 518
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "prefs_debug_ttr_toast_enabled"

    .line 520
    invoke-static {p0, v2, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 521
    invoke-interface {v0}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "DEBUG: Profile %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lo/adk;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected n()Lo/Iv;
    .locals 5

    .line 647
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->h:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    const-string v1, "lolomo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->l:Lcom/netflix/cl/model/AppView;

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->h:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Lcom/netflix/cl/model/AppView;Z)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    move-result-object v0

    return-object v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const-string v1, "Lolomo"

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/Kh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->o:Z

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-static {v0, v1}, Lo/Kh;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Lo/Kh;

    move-result-object v0

    return-object v0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-static {v0, v2}, Lo/Kh;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Lo/Kh;

    move-result-object v0

    return-object v0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getGenreType()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    if-ne v0, v3, :cond_4

    .line 657
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->o:Z

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {v0, v2, v3, v1}, Lo/Kc;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)Lo/Kc;

    move-result-object v0

    return-object v0

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {v0, v1, v3, v2}, Lo/Kc;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)Lo/Kc;

    move-result-object v0

    return-object v0

    .line 663
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->l:Lcom/netflix/cl/model/AppView;

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->h:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Lcom/netflix/cl/model/AppView;Z)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 925
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const-string v1, "HomeActivity"

    const/16 v2, -0x154

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 927
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v1}, Lo/Ih;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 968
    invoke-super {p0, p1, p2, p3}, Lo/Io;->onActivityResult(IILandroid/content/Intent;)V

    .line 969
    sget v0, Lo/ClientCertRequest;->e:I

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "MULTI_MONTH_OFFER_DURATION"

    .line 973
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 975
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 976
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-le p2, p1, :cond_2

    .line 979
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lT:I

    invoke-static {p2, p1}, Lo/adk;->c(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 280
    :goto_0
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->i:Z

    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_cold_start"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->h:Z

    .line 282
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 284
    invoke-static {v3}, Lcom/netflix/cl/model/AppView;->valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/AppView;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->l:Lcom/netflix/cl/model/AppView;

    .line 286
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k:J

    if-eqz p1, :cond_2

    .line 290
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    const-string v4, "extra_back_stack_intents"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "extra_notification_list_status"

    .line 291
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    :cond_2
    if-nez p1, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 296
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->s()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Landroid/content/Intent;)Z

    .line 298
    new-instance v4, Lo/Im;

    invoke-direct {v4, p0, v3}, Lo/Im;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/content/Intent;)V

    invoke-static {v4}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(Landroid/content/Intent;)Z

    .line 303
    :goto_1
    new-instance v3, Lo/LinearLayout$ActionBar;

    invoke-direct {v3}, Lo/LinearLayout$ActionBar;-><init>()V

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d:Lo/LinearLayout$ActionBar;

    .line 306
    sget-object v3, Lo/KV;->c:Lo/KV;

    invoke-virtual {v3, p0}, Lo/KV;->c(Landroid/content/Context;)V

    .line 307
    new-instance v3, Lcom/netflix/mediaclient/ui/home/HomeActivity$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$2;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 316
    invoke-super {p0, p1}, Lo/Io;->onCreate(Landroid/os/Bundle;)V

    .line 317
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v4, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->i:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {v3, v4, v0, v1}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V

    .line 319
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->v()V

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->n:J

    .line 323
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-direct {v0, v2, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setFragmentHelper(Lo/Ih;)V

    if-nez p1, :cond_4

    .line 325
    sget-object p1, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Zg;->b(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 326
    new-instance p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->t:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    .line 327
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hD:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->t:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    .line 329
    invoke-virtual {p1, v0, v1}, Lo/UnsupportedEncodingException;->b(ILandroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->e()V

    .line 333
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->r()V

    .line 335
    invoke-static {}, Lo/fe;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    const-class p1, Lo/t;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/t;

    invoke-interface {p1}, Lo/t;->doSomething()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .line 602
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->P()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    .line 607
    :goto_0
    invoke-static {v0}, Lo/abX;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Z

    move-result v0

    .line 608
    const-class v1, Lo/v;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/v;

    invoke-interface {v1, p0, p1}, Lo/v;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 611
    :cond_1
    invoke-super {p0, p1, p2}, Lo/Io;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 835
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->l()V

    .line 838
    :cond_0
    invoke-super {p0}, Lo/Io;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 359
    invoke-super {p0, p1}, Lo/Io;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 574
    invoke-super {p0}, Lo/Io;->onPause()V

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->n:J

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->m:Z

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 957
    invoke-super {p0, p1}, Lo/Io;->onPostCreate(Landroid/os/Bundle;)V

    .line 958
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MULTI_MONTH_OFFER_DURATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 960
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 950
    invoke-super {p0, p1, p2, p3}, Lo/Io;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 947
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lo/RL;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 454
    invoke-super {p0}, Lo/Io;->onResume()V

    .line 461
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->m:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->q()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->m:Z

    .line 469
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 687
    invoke-super {p0, p1}, Lo/Io;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c:Ljava/util/LinkedList;

    const-string v1, "extra_back_stack_intents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a:Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    const-string v1, "extra_notification_list_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public performUpAction()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->k()Lo/Iv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Iv;->d(Z)V

    .line 638
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTheme()V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->shouldShowKidsTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->M:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setTheme(I)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lo/eq;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->L:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setTheme(I)V

    goto :goto_0

    .line 226
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->G:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSetIntentOnNewIntent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
