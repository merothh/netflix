.class public final Lo/Vm$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->a(ILcom/netflix/model/leafs/originals/interactive/Choice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic d:Lo/Vm;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Vm;ZLcom/netflix/model/leafs/originals/interactive/Choice;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 610
    iput-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    iput-boolean p2, p0, Lo/Vm$PendingIntent;->b:Z

    iput-object p3, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p4, p0, Lo/Vm$PendingIntent;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10

    .line 616
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 617
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->g(Lo/Vm;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 618
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->u()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 619
    :cond_0
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/Vm;->setVisibility(I)V

    .line 622
    :cond_1
    iget-boolean p1, p0, Lo/Vm$PendingIntent;->b:Z

    if-eqz p1, :cond_2

    .line 623
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 624
    iget-object v0, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {v0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    .line 626
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v2

    .line 627
    iget-object v3, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-static {v3}, Lo/Vm;->a(Lo/Vm;)Z

    move-result v3

    .line 623
    invoke-interface {p1, v0, v1, v2, v3}, Lo/Xt;->d(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Z)V

    goto/16 :goto_1

    .line 629
    :cond_2
    iget-object p1, p0, Lo/Vm$PendingIntent;->e:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 630
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isInterstitialPostPlay()Z

    move-result p1

    const-string v0, "choiceDetail.id()"

    if-nez p1, :cond_5

    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isFallbackTutorial()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 640
    :cond_3
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->g(Lo/Vm;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 641
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 643
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    .line 644
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    iget-object v5, p0, Lo/Vm$PendingIntent;->e:Ljava/lang/String;

    .line 646
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 641
    invoke-static/range {v1 .. v9}, Lo/Xt$StateListAnimator;->c(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 649
    :cond_4
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 651
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    .line 652
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v5, p0, Lo/Vm$PendingIntent;->e:Ljava/lang/String;

    .line 654
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 649
    invoke-static/range {v1 .. v9}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 631
    :cond_5
    :goto_0
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 632
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->a(Lo/Vm;)Z

    move-result v2

    .line 633
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    .line 634
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iget-object v5, p0, Lo/Vm$PendingIntent;->e:Ljava/lang/String;

    .line 636
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v6

    .line 637
    iget-object p1, p0, Lo/Vm$PendingIntent;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v7

    .line 631
    invoke-interface/range {v1 .. v7}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 662
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 663
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->g(Lo/Vm;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 664
    iget-object p1, p0, Lo/Vm$PendingIntent;->d:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->d(Lo/Vm;)Lo/ExpandableListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->d(Z)V

    :cond_0
    return-void
.end method
