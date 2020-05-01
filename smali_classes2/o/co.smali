.class public Lo/co;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ci;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Lo/ci;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lo/ci;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/co;->c:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lo/co;->d:Lo/ci;

    return-void
.end method

.method static synthetic a(Lo/co;Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/co;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/co;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/co;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/co;->b(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/co;)Lo/ci;
    .locals 0

    .line 52
    iget-object p0, p0, Lo/co;->d:Lo/ci;

    return-object p0
.end method

.method private synthetic b(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lo/co;->d:Lo/ci;

    invoke-interface {v0, p1, p2}, Lo/ci;->d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private synthetic c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 517
    iget-object v0, p0, Lo/co;->d:Lo/ci;

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic c(Lo/co;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/co;->e(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lo/co;->d:Lo/ci;

    invoke-interface {v0, p1, p2}, Lo/ci;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lo/co;->d:Lo/ci;

    invoke-interface {v0, p1, p2, p3}, Lo/ci;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/co;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/co;->c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private synthetic t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 101
    invoke-static {}, Lo/aeB;->a()Z

    .line 102
    iget-object v0, p0, Lo/co;->d:Lo/ci;

    invoke-interface {v0, p1, p2}, Lo/ci;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$10;

    invoke-direct {v1, p0, p1, p2}, Lo/co$10;-><init>(Lo/co;ILcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/cn;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/cn;-><init>(Lo/co;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$12;

    invoke-direct {v1, p0, p1, p2}, Lo/co$12;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 2

    .line 345
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/co$20;-><init>(Lo/co;Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 537
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/cs;

    invoke-direct {v1, p0, p1, p2}, Lo/cs;-><init>(Lo/co;Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/cp;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/cp;-><init>(Lo/co;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$39;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/co$39;-><init>(Lo/co;Lcom/netflix/model/leafs/ListOfMoviesSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$25;

    invoke-direct {v1, p0, p1, p2}, Lo/co$25;-><init>(Lo/co;Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$34;

    invoke-direct {v1, p0, p1, p2}, Lo/co$34;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$13;

    invoke-direct {v1, p0, p1, p2}, Lo/co$13;-><init>(Lo/co;Lo/AQ;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/co$8;-><init>(Lo/co;Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$6;

    invoke-direct {v1, p0, p1, p2}, Lo/co$6;-><init>(Lo/co;Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$16;

    invoke-direct {v1, p0, p1}, Lo/co$16;-><init>(Lo/co;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$22;

    invoke-direct {v1, p0, p1, p2}, Lo/co$22;-><init>(Lo/co;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$24;

    invoke-direct {v1, p0, p1, p2}, Lo/co$24;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$1;

    invoke-direct {v1, p0, p1, p2}, Lo/co$1;-><init>(Lo/co;Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$7;

    invoke-direct {v1, p0, p1, p2}, Lo/co$7;-><init>(Lo/co;Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$5;

    invoke-direct {v1, p0, p1, p2}, Lo/co$5;-><init>(Lo/co;Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 335
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$18;

    invoke-direct {v1, p0, p1}, Lo/co$18;-><init>(Lo/co;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$38;

    invoke-direct {v1, p0, p1, p2}, Lo/co$38;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$28;

    invoke-direct {v1, p0, p1, p2}, Lo/co$28;-><init>(Lo/co;Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$9;

    invoke-direct {v1, p0, p1, p2}, Lo/co$9;-><init>(Lo/co;Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$19;

    invoke-direct {v1, p0, p1, p2}, Lo/co$19;-><init>(Lo/co;Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/co$14;-><init>(Lo/co;Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/ct;

    invoke-direct {v1, p0, p1, p2}, Lo/ct;-><init>(Lo/co;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$3;

    invoke-direct {v1, p0, p1, p2}, Lo/co$3;-><init>(Lo/co;Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 467
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$29;

    invoke-direct {v1, p0, p1, p2}, Lo/co$29;-><init>(Lo/co;Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$31;

    invoke-direct {v1, p0, p1, p2}, Lo/co$31;-><init>(Lo/co;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$21;

    invoke-direct {v1, p0, p1, p2}, Lo/co$21;-><init>(Lo/co;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AB;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/cl;

    invoke-direct {v1, p0, p1, p2}, Lo/cl;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$4;

    invoke-direct {v1, p0, p1, p2}, Lo/co$4;-><init>(Lo/co;Lo/AI;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 507
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$32;

    invoke-direct {v1, p0, p1, p2}, Lo/co$32;-><init>(Lo/co;ZLcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$2;

    invoke-direct {v1, p0, p1, p2}, Lo/co$2;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AT;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$37;

    invoke-direct {v1, p0, p1, p2}, Lo/co$37;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$40;

    invoke-direct {v1, p0, p1, p2}, Lo/co$40;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$36;

    invoke-direct {v1, p0, p1, p2}, Lo/co$36;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$15;

    invoke-direct {v1, p0, p1, p2}, Lo/co$15;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$23;

    invoke-direct {v1, p0, p1, p2}, Lo/co$23;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Bv;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$17;

    invoke-direct {v1, p0, p1, p2}, Lo/co$17;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$26;

    invoke-direct {v1, p0, p1, p2}, Lo/co$26;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$11;

    invoke-direct {v1, p0, p1, p2}, Lo/co$11;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$30;

    invoke-direct {v1, p0, p1, p2}, Lo/co$30;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/agg;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$27;

    invoke-direct {v1, p0, p1, p2}, Lo/co$27;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$35;

    invoke-direct {v1, p0, p1, p2}, Lo/co$35;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public s(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AA;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lo/co;->c:Landroid/os/Handler;

    new-instance v1, Lo/co$33;

    invoke-direct {v1, p0, p1, p2}, Lo/co$33;-><init>(Lo/co;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
