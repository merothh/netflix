.class public final Lo/Vm$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Vm;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Ljava/lang/String;Lo/Vm;)V
    .locals 0

    iput-object p1, p0, Lo/Vm$Dialog;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p2, p0, Lo/Vm$Dialog;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9

    .line 278
    iget-object p1, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/Vm;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lo/Vm$Dialog;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz p1, :cond_2

    .line 280
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->type()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "playNextEpisode"

    invoke-static {p1, v3, v1, v2, v0}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 284
    iget-object v0, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-virtual {v0}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lo/Vm$Dialog;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    .line 286
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v2

    .line 287
    iget-object v3, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-static {v3}, Lo/Vm;->a(Lo/Vm;)Z

    move-result v3

    .line 283
    invoke-interface {p1, v0, v1, v2, v3}, Lo/Xt;->d(Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/Choice;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Z)V

    goto :goto_1

    .line 290
    :cond_1
    iget-object p1, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->g(Lo/Vm;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 291
    iget-object p1, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->s()Lo/Xt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 292
    iget-object p1, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->a(Lo/Vm;)Z

    move-result v1

    .line 293
    iget-object p1, p0, Lo/Vm$Dialog;->a:Lo/Vm;

    invoke-virtual {p1}, Lo/Vm;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    .line 294
    iget-object p1, p0, Lo/Vm$Dialog;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v3

    const-string p1, "nextChoice.id()"

    invoke-static {v3, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lo/Vm$Dialog;->d:Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lo/Vm$Dialog;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 291
    invoke-static/range {v0 .. v8}, Lo/Xt$StateListAnimator;->c(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
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
