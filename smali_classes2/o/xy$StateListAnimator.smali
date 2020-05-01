.class Lo/xy$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/xo$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Lo/uC;

.field final synthetic b:Lo/xy;

.field private e:Z


# direct methods
.method public constructor <init>(Lo/xy;Lo/uC;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p2, p0, Lo/xy$StateListAnimator;->a:Lo/uC;

    return-void
.end method


# virtual methods
.method public a(JLo/sE;Z)V
    .locals 8

    .line 512
    iget-object v0, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    invoke-static {v0}, Lo/xy;->a(Lo/xy;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/xy$StateListAnimator;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 516
    :cond_0
    new-instance v0, Lo/uv;

    iget-object v1, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object v1, v1, Lo/xy;->s:Landroid/content/Context;

    iget-object v2, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object v2, v2, Lo/xy;->C:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-direct {v0, p3, v1, v2}, Lo/uv;-><init>(Lo/sE;Landroid/content/Context;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    invoke-virtual {v0}, Lo/uv;->b()Lo/uC;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lo/xy$StateListAnimator;->a:Lo/uC;

    invoke-virtual {v1}, Lo/uC;->b()Lo/tL;

    move-result-object v1

    invoke-virtual {v1}, Lo/tL;->b()Ljava/util/Set;

    move-result-object v1

    .line 521
    invoke-virtual {v0}, Lo/uC;->b()Lo/tL;

    move-result-object v2

    invoke-virtual {v2}, Lo/tL;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "PlaylistPlaybackSession"

    if-nez v1, :cond_1

    new-array p3, v3, [Ljava/lang/Object;

    .line 522
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v2

    const-string v0, "updated manifest for %s not similar - ignoring update"

    invoke-static {v4, v0, p3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 523
    iget-object p3, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object v0, p3, Lo/xy;->k:Lo/xw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lo/xw;->a(JZZLjava/lang/String;)V

    return-void

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 527
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "manifest for %s updated due to connectivity change"

    invoke-static {v4, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    iget-object v1, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object v2, v1, Lo/xy;->k:Lo/xw;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-wide v3, p1

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lo/xw;->a(JZZLjava/lang/String;)V

    .line 529
    iget-object p4, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object p4, p4, Lo/xy;->m:Lo/xz;

    invoke-virtual {p4, p1, p2, p3}, Lo/xz;->a(JLo/sE;)V

    .line 530
    iget-object p4, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object p4, p4, Lo/xy;->l:Lo/xv;

    invoke-virtual {p4, p1, p2, p3}, Lo/xv;->c(JLo/sE;)V

    .line 531
    iget-object p3, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object p3, p3, Lo/xy;->e:Lo/tZ;

    invoke-virtual {v0}, Lo/uC;->c()Lo/tZ;

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/tZ;->a(Lo/tZ;)V

    .line 532
    iget-object p3, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object p3, p3, Lo/xy;->h:Lo/tL;

    invoke-virtual {v0}, Lo/uC;->b()Lo/tL;

    move-result-object p4

    invoke-virtual {p3, p4, p1, p2}, Lo/tL;->c(Lo/tL;J)V

    .line 533
    iget-object p3, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object p3, p3, Lo/xy;->n:Lo/tf;

    invoke-virtual {p3, p1, p2, v0}, Lo/tf;->c(JLo/uC;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(JLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 538
    iget-object v0, p0, Lo/xy$StateListAnimator;->b:Lo/xy;

    iget-object v1, v0, Lo/xy;->k:Lo/xw;

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->f()Ljava/lang/Throwable;

    move-result-object p3

    invoke-static {p3}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lo/xw;->a(JZZLjava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lo/xy$StateListAnimator;->e:Z

    return-void
.end method
