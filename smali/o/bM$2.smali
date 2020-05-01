.class public Lo/bM$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bV$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bM;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo/bM;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/bV;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/bV;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/util/ArrayList;

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/bV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/bM;Ljava/util/ArrayList;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lo/bM$2;->a:Lo/bM;

    iput-object p2, p0, Lo/bM$2;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    new-instance p1, Lcom/netflix/mediaclient/service/NetflixService$2$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/NetflixService$2$1;-><init>(Lo/bM$2;)V

    iput-object p1, p0, Lo/bM$2;->b:Ljava/util/ArrayList;

    .line 577
    new-instance p1, Lcom/netflix/mediaclient/service/NetflixService$2$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/NetflixService$2$2;-><init>(Lo/bM$2;)V

    iput-object p1, p0, Lo/bM$2;->c:Ljava/util/ArrayList;

    .line 594
    new-instance p1, Lcom/netflix/mediaclient/service/NetflixService$2$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/NetflixService$2$3;-><init>(Lo/bM$2;)V

    iput-object p1, p0, Lo/bM$2;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private c(Lo/bV;)V
    .locals 1

    .line 662
    iget-object v0, p0, Lo/bM$2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 664
    iget-object v0, p0, Lo/bM$2;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 666
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->r(Lo/bM;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lo/bV;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 601
    invoke-static {}, Lo/aeB;->a()Z

    .line 603
    iget-object v0, p0, Lo/bM$2;->a:Lo/bM;

    iget-object v1, p0, Lo/bM$2;->d:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, v1, p0}, Lo/bM;->b(Lo/bM;Lo/bV;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;Lo/bV$Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 607
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NetflixService"

    const-string v4, "NetflixService successfully initiated ServiceAgent %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 608
    iget-object v1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {v1}, Lo/bM;->o(Lo/bM;)Lo/mw;

    move-result-object v1

    if-ne p1, v1, :cond_2

    const-string p1, "Go for batch1!"

    .line 609
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p1, p0, Lo/bM$2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/bV;

    .line 613
    invoke-virtual {p2}, Lo/bV;->isInitCalled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    iget-object v1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {v1}, Lo/bM;->s(Lo/bM;)Lo/bV$TaskDescription;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lo/bV;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    goto :goto_0

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 616
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "Agent %s from batch1 already initialized!"

    invoke-static {v2, p2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 619
    :cond_2
    iget-object v1, p0, Lo/bM$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array p2, v0, [Ljava/lang/Object;

    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    const-string v1, "Remove %s from batch1"

    invoke-static {v2, v1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 622
    iget-object p2, p0, Lo/bM$2;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 623
    iget-object p1, p0, Lo/bM$2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "NetflixService successfully inited batch1 of ServiceAgents"

    .line 625
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p1, p0, Lo/bM$2;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/bV;

    .line 627
    invoke-virtual {p2}, Lo/bV;->isInitCalled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 628
    iget-object v1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {v1}, Lo/bM;->s(Lo/bM;)Lo/bV$TaskDescription;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lo/bV;->init(Lo/bV$TaskDescription;Lo/bV$Activity;)V

    goto :goto_1

    :cond_3
    new-array v1, v0, [Ljava/lang/Object;

    .line 630
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "Agent %s from batch2 already initialized!"

    invoke-static {v2, p2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_4
    new-array v1, v0, [Ljava/lang/Object;

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "Remove %s from batch2"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 636
    invoke-direct {p0, p1}, Lo/bM$2;->c(Lo/bV;)V

    .line 637
    iget-object v1, p0, Lo/bM$2;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 638
    iget-object p1, p0, Lo/bM$2;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "NetflixService successfully inited all ServiceAgents "

    .line 639
    invoke-static {v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1, p2}, Lo/bM;->b(Lo/bM;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 641
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->a(Lo/bM;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 642
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->t(Lo/bM;)Lo/cG;

    move-result-object p1

    invoke-virtual {p1}, Lo/cG;->aw()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 643
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    sget-object p2, Lo/LegacyErrorStrings;->d:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p1, p2}, Lo/bM;->b(Lo/bM;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    const-string p1, "Current app is obsolete. It should not run!"

    .line 644
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 645
    :cond_5
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->t(Lo/bM;)Lo/cG;

    move-result-object p1

    invoke-virtual {p1}, Lo/cG;->az()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Current app is not recommended. User should be warned!"

    .line 646
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    sget-object p2, Lo/LegacyErrorStrings;->c:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p1, p2}, Lo/bM;->b(Lo/bM;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 650
    :cond_6
    :goto_2
    iget-object p1, p0, Lo/bM$2;->a:Lo/bM;

    const-string p2, ""

    invoke-static {p1, p2}, Lo/bM;->b(Lo/bM;Ljava/lang/String;)V

    .line 653
    :cond_7
    iget-object p1, p0, Lo/bM$2;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/bV;

    .line 654
    invoke-virtual {p2}, Lo/bV;->isReady()Z

    move-result v1

    if-nez v1, :cond_8

    new-array v1, v0, [Ljava/lang/Object;

    .line 655
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "NetflixService still waiting for init of ServiceAgent %s"

    invoke-static {v2, p2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_9
    return-void
.end method
