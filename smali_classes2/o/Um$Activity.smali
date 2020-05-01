.class final Lo/Um$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Um;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lo/Um;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILo/Um;Z)V
    .locals 0

    iput p1, p0, Lo/Um$Activity;->c:I

    iput-object p2, p0, Lo/Um$Activity;->b:Lo/Um;

    iput-boolean p3, p0, Lo/Um$Activity;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 61
    iget v0, p0, Lo/Um$Activity;->c:I

    iget-object v1, p0, Lo/Um$Activity;->b:Lo/Um;

    iget-object v1, v1, Lo/Um;->a:Lcom/netflix/model/leafs/PostPlayExperience;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    .line 62
    iget-object v1, p0, Lo/Um$Activity;->b:Lo/Um;

    iget-object v1, v1, Lo/Um;->g:Landroid/widget/LinearLayout;

    const-string v3, "mBackgroundContainer"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_8

    .line 63
    iget-object v1, p0, Lo/Um$Activity;->b:Lo/Um;

    iget-object v1, v1, Lo/Um;->g:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    iget-object v0, p0, Lo/Um$Activity;->b:Lo/Um;

    iget-object v0, v0, Lo/Um;->g:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lo/Um$Activity;->c:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->nK:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lo/Um$Activity;->a:Z

    const-string v6, "Lookup.get<Context>().resources"

    if-eqz v5, :cond_2

    int-to-float v5, v4

    .line 164
    sget-object v7, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 165
    const-class v7, Landroid/content/Context;

    invoke-static {v7}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 164
    invoke-static {v2, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x6

    int-to-float v5, v5

    .line 166
    sget-object v7, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 167
    const-class v7, Landroid/content/Context;

    invoke-static {v7}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 166
    invoke-static {v2, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    :goto_2
    float-to-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 67
    :cond_3
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->kB:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    if-eqz v3, :cond_5

    iget-boolean v6, p0, Lo/Um$Activity;->a:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_5
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->ky:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lo/Um$Activity;->a:Z

    if-eqz v3, :cond_6

    const/16 v4, 0x8

    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 70
    :cond_7
    iget-object v0, p0, Lo/Um$Activity;->b:Lo/Um;

    iget-object v0, v0, Lo/Um;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_8
    return-void
.end method
