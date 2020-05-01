.class final Lo/Do$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/FC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Do;

.field final synthetic d:Lo/Am;


# direct methods
.method constructor <init>(Lo/Do;Lo/Am;)V
    .locals 0

    iput-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    iput-object p2, p0, Lo/Do$Activity;->d:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/FC;

    invoke-virtual {p0, p1}, Lo/Do$Activity;->d(Lo/FC;)V

    return-void
.end method

.method public final d(Lo/FC;)V
    .locals 7

    .line 526
    instance-of v0, p1, Lo/FC$PendingIntent;

    if-eqz v0, :cond_9

    .line 527
    iget-object v0, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {v0}, Lo/Do;->b(Lo/Do;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {v0}, Lo/Do;->n(Lo/Do;)J

    move-result-wide v0

    check-cast p1, Lo/FC$PendingIntent;

    invoke-virtual {p1}, Lo/FC$PendingIntent;->e()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lo/Do$Activity;->a:Lo/Do;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Do;->e(Lo/Do;Z)V

    .line 536
    iget-object v0, p0, Lo/Do$Activity;->a:Lo/Do;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lo/Do;->c(Lo/Do;Z)V

    .line 538
    invoke-virtual {p1}, Lo/FC$PendingIntent;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    .line 540
    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1, v2}, Lo/Do;->e(Lo/Do;Z)V

    .line 542
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1, v0}, Lo/Do;->c(Lo/Do;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 546
    :cond_2
    invoke-virtual {p1}, Lo/FC$PendingIntent;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 554
    :cond_3
    invoke-virtual {p1}, Lo/FC$PendingIntent;->d()I

    move-result v3

    .line 555
    invoke-virtual {p1}, Lo/FC$PendingIntent;->b()I

    move-result p1

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    .line 561
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p1, :cond_4

    .line 562
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1, v2}, Lo/Do;->e(Lo/Do;Z)V

    .line 568
    :cond_4
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object p1

    .line 569
    const-class v4, Lo/FH;

    .line 570
    new-instance v5, Lo/FH$PendingIntent;

    .line 573
    iget-object v6, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {v6}, Lo/Do;->j(Lo/Do;)Ljava/lang/String;

    move-result-object v6

    .line 570
    invoke-direct {v5, v0, v3, v6}, Lo/FH$PendingIntent;-><init>(Ljava/util/List;ILjava/lang/String;)V

    check-cast v5, Lo/VintfObject;

    .line 568
    invoke-virtual {p1, v4, v5}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    if-nez v3, :cond_7

    .line 577
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1}, Lo/Do;->i(Lo/Do;)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {v3}, Lo/Do;->d(Lo/Do;)I

    move-result v3

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 581
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1}, Lo/Do;->o(Lo/Do;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 583
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    .line 584
    :goto_0
    iget-object v1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {v1}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object v1

    .line 585
    const-class v2, Lo/FH;

    .line 586
    new-instance v3, Lo/FH$Application;

    .line 588
    iget-object v4, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {v4}, Lo/Do;->j(Lo/Do;)Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-direct {v3, p1, v4}, Lo/FH$Application;-><init>(ILjava/lang/String;)V

    check-cast v3, Lo/VintfObject;

    .line 584
    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_2

    .line 592
    :cond_7
    :goto_1
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object p1

    .line 593
    const-class v1, Lo/FH;

    .line 594
    new-instance v3, Lo/FH$ClipData;

    invoke-direct {v3, v2, v2}, Lo/FH$ClipData;-><init>(II)V

    check-cast v3, Lo/VintfObject;

    .line 592
    invoke-virtual {p1, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 598
    :goto_2
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1}, Lo/Do;->l(Lo/Do;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lo/Do;->e(Lo/Do;I)V

    .line 600
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object p1

    .line 601
    const-class v1, Lo/ApduList;

    .line 602
    sget-object v2, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    check-cast v2, Lo/VintfObject;

    .line 600
    invoke-virtual {p1, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 607
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    sget-object v1, Lo/Dj;->b:Lo/Dj$Activity;

    invoke-virtual {v1, v0}, Lo/Dj$Activity;->b(Ljava/util/List;)Z

    move-result v0

    invoke-static {p1, v0}, Lo/Do;->b(Lo/Do;Z)V

    goto :goto_4

    .line 548
    :cond_8
    :goto_3
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    invoke-static {p1, v2}, Lo/Do;->e(Lo/Do;Z)V

    .line 549
    iget-object p1, p0, Lo/Do$Activity;->a:Lo/Do;

    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {p1, v0}, Lo/Do;->c(Lo/Do;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_9
    :goto_4
    return-void
.end method
