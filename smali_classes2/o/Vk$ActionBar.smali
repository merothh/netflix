.class public final Lo/Vk$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->a(Lcom/netflix/model/leafs/originals/interactive/Choice;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field public final synthetic c:Lo/Vk;


# direct methods
.method constructor <init>(Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ")V"
        }
    .end annotation

    .line 703
    iput-object p1, p0, Lo/Vk$ActionBar;->c:Lo/Vk;

    iput p2, p0, Lo/Vk$ActionBar;->a:I

    iput-object p3, p0, Lo/Vk$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 709
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, p0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->l()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lo/Vk$ActionBar;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 710
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-nez v0, :cond_0

    .line 711
    sget-object v0, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v0, Lo/MessagePdu;

    .line 712
    iget-object v0, p0, Lo/Vk$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 714
    :cond_0
    sget-object v0, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v0, Lo/MessagePdu;

    .line 715
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v0, :cond_5

    .line 716
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->type()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "playNextEpisode"

    invoke-static {v0, v4, v2, v3, v1}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    .line 718
    iget-object p1, p0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->s()Lo/Xt;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 719
    iget-object v0, p0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    .line 720
    iget-object v2, p0, Lo/Vk$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v2, :cond_2

    .line 721
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v1

    .line 722
    :cond_2
    iget-object v3, p0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v3}, Lo/Vk;->m()Z

    move-result v3

    .line 718
    invoke-interface {p1, v0, v2, v1, v3}, Lo/Xt;->d(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Z)V

    goto :goto_1

    .line 725
    :cond_3
    sget-object v0, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v0, Lo/MessagePdu;

    .line 726
    iget-object v0, p0, Lo/Vk$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lo/Vk$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/Choice;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;-><init>(Lo/Vk$ActionBar;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lo/alN;

    invoke-static {v1, v0, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
