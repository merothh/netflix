.class final Lo/Vj$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vj;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic d:Lo/Vj;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/Choice;


# direct methods
.method constructor <init>(Lo/Vj;ILcom/netflix/model/leafs/originals/interactive/Choice;)V
    .locals 0

    iput-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    iput p2, p0, Lo/Vj$TaskDescription;->a:I

    iput-object p3, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 111
    iget-object v0, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v0}, Lo/Vj;->m()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v0}, Lo/Vj;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Vj;->d(Z)V

    const/4 v0, 0x3

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 114
    iget-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->a()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    .line 115
    iget-object v0, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v0}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 116
    iget v1, p0, Lo/Vj$TaskDescription;->a:I

    const-wide/16 v2, 0xfa

    if-eq p1, v1, :cond_0

    .line 117
    iget-object v1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v1}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 119
    :cond_0
    iget-object v1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v1}, Lo/Vj;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 124
    iget-object p1, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 126
    iget-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->s()Lo/Xt;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 128
    iget-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    .line 131
    iget-object p1, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v4

    .line 126
    invoke-interface/range {v0 .. v6}, Lo/Xt;->d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V

    goto :goto_2

    .line 136
    :cond_2
    iget-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->n()Z

    move-result p1

    const-string v0, "choice.id()"

    if-nez p1, :cond_3

    .line 137
    iget-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->s()Lo/Xt;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 139
    iget-object v2, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v2}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v5

    .line 143
    iget-object v0, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v6

    move-object v0, p1

    .line 137
    invoke-interface/range {v0 .. v6}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object p1, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->s()Lo/Xt;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lo/Vj$TaskDescription;->d:Lo/Vj;

    invoke-virtual {v2}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lo/Vj$TaskDescription;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    .line 146
    invoke-interface/range {v0 .. v6}, Lo/Xt;->d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
