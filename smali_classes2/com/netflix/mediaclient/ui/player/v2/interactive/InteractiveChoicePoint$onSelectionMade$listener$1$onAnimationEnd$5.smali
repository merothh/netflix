.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk$ActionBar;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lcom/netflix/model/leafs/originals/interactive/Choice;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Vk$ActionBar;

.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lo/Vk$ActionBar;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Choice;)Lo/akj;
    .locals 12

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validChoiceDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isInterstitialPostPlay()Z

    move-result v0

    const-string v1, "choice.id()"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isFallbackTutorial()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->s()Lo/Xt;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 739
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->m()Z

    move-result v4

    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v5

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v7, p1

    .line 738
    invoke-static/range {v3 .. v11}, Lo/Xt$StateListAnimator;->c(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v2, Lo/akj;->a:Lo/akj;

    goto :goto_1

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->s()Lo/Xt;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 747
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->m()Z

    move-result v4

    .line 748
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v5

    .line 749
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v7, p1

    .line 746
    invoke-static/range {v3 .. v11}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v2, Lo/akj;->a:Lo/akj;

    goto :goto_1

    .line 728
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->s()Lo/Xt;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->m()Z

    move-result v4

    .line 730
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a:Lo/Vk$ActionBar;

    iget-object v0, v0, Lo/Vk$ActionBar;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v5

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v8

    .line 734
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v9

    move-object v7, p1

    .line 728
    invoke-interface/range {v3 .. v9}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    sget-object v2, Lo/akj;->a:Lo/akj;

    :cond_3
    :goto_1
    return-object v2
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 703
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$onSelectionMade$listener$1$onAnimationEnd$5;->a(Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Choice;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
