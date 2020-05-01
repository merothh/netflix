.class final Lo/XA$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XA;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/XA;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/XA;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    iput-object p2, p0, Lo/XA$TaskDescription;->d:Landroid/view/View;

    iput-object p3, p0, Lo/XA$TaskDescription;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 83
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->c(Lo/XA;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 84
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->e(Lo/XA;)I

    move-result p1

    iget-object v0, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {v0}, Lo/XA;->b(Lo/XA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 85
    iget-object p1, p0, Lo/XA$TaskDescription;->d:Landroid/view/View;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 86
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->b(Lo/XA;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {v0}, Lo/XA;->e(Lo/XA;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "choiceSelections[nextChoicePointSelectionIndex]"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iget-object v0, p0, Lo/XA$TaskDescription;->d:Landroid/view/View;

    check-cast v0, Lo/ImageSwitcher;

    invoke-virtual {v0}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->e(Lo/XA;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lo/XA;->b(Lo/XA;I)V

    .line 88
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->e(Lo/XA;)I

    move-result p1

    iget-object v0, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {v0}, Lo/XA;->b(Lo/XA;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 89
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1, v1}, Lo/XA;->b(Lo/XA;Z)V

    .line 90
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->a(Lo/XA;)Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x0

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 92
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    .line 95
    iget-object v1, p0, Lo/XA$TaskDescription;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-nez v3, :cond_0

    .line 97
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    const-string v4, "interactive : phone choicepoint with invalid choice"

    invoke-interface {v3, v4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->code()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "choice.id()"

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v0

    move-object v4, p1

    move-object v5, v0

    move-object v3, v1

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v2

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_0

    :cond_2
    move-object v5, p1

    move-object v4, v0

    move-object v3, v2

    .line 112
    :goto_1
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->d(Lo/XA;)Lo/GridView;

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

    if-nez v4, :cond_3

    .line 114
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "going with default as we don\'t have segment Id to go to."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_3
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->j(Lo/XA;)Lo/Xt;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 119
    iget-object p1, p0, Lo/XA$TaskDescription;->a:Lo/XA;

    invoke-static {p1}, Lo/XA;->f(Lo/XA;)Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v2

    .line 117
    invoke-interface/range {v0 .. v6}, Lo/Xt;->d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
