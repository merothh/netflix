.class public final Lo/Yh$Activity;
.super Lo/Yh$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yh;->b(Lo/Yd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lo/Av;

.field final synthetic e:Lo/Yd;


# direct methods
.method constructor <init>(ILjava/lang/Object;Lo/Yd;Lo/Av;)V
    .locals 0

    iput p1, p0, Lo/Yh$Activity;->a:I

    iput-object p3, p0, Lo/Yh$Activity;->e:Lo/Yd;

    iput-object p4, p0, Lo/Yh$Activity;->c:Lo/Av;

    .line 189
    invoke-direct {p0, p2}, Lo/Yh$Application;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lo/Yh$Activity;->b()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v4}, Lo/Yd;->a()Lo/Av;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v3}, Lo/Yd;->e()Lo/Bv;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v3}, Lo/Yd;->d()Landroid/view/View;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "view.resources"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    .line 200
    sget-object v7, Lo/Yh;->d:Lo/Yh;

    invoke-static {v7}, Lo/Yh;->a(Lo/Yh;)[I

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 201
    sget-object v7, Lo/Yh;->d:Lo/Yh;

    invoke-static {v7}, Lo/Yh;->a(Lo/Yh;)[I

    move-result-object v7

    aget v7, v7, v1

    int-to-float v7, v7

    neg-float v8, v5

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    sget-object v7, Lo/Yh;->d:Lo/Yh;

    invoke-static {v7}, Lo/Yh;->a(Lo/Yh;)[I

    move-result-object v7

    aget v7, v7, v1

    int-to-float v7, v7

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    cmpg-float v5, v7, v8

    if-gtz v5, :cond_0

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    .line 205
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lo/Yh;->d:Lo/Yh;

    invoke-static {v6}, Lo/Yh;->a(Lo/Yh;)[I

    move-result-object v6

    aget v6, v6, v2

    int-to-float v6, v6

    neg-float v7, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    sget-object v6, Lo/Yh;->d:Lo/Yh;

    invoke-static {v6}, Lo/Yh;->a(Lo/Yh;)[I

    move-result-object v6

    aget v6, v6, v2

    int-to-float v6, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-float v4, v4

    sub-float/2addr v4, v5

    cmpg-float v4, v6, v4

    if-gez v4, :cond_0

    .line 208
    :try_start_1
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v2}, Lo/Yd;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 212
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v2, "view.context"

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v6, p0, Lo/Yh$Activity;->e:Lo/Yd;

    .line 214
    iget-object v7, p0, Lo/Yh$Activity;->c:Lo/Av;

    .line 215
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v2}, Lo/Yd;->j()Lorg/json/JSONObject;

    move-result-object v8

    .line 216
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v2}, Lo/Yd;->h()Lcom/netflix/cl/model/context/CLContext;

    move-result-object v9

    .line 217
    iget v10, p0, Lo/Yh$Activity;->a:I

    .line 218
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v2}, Lo/Yd;->g()Lcom/netflix/cl/model/AppView;

    move-result-object v11

    .line 211
    invoke-static/range {v4 .. v11}, Lo/Yh;->b(Lo/Yh;Landroid/content/Context;Lo/Yd;Lo/Av;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V

    .line 220
    sget-boolean v2, Lo/Yh;->b:Z

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lo/Yd;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 231
    :cond_1
    :goto_0
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v2, v1}, Lo/Yd;->b(Z)V

    .line 232
    iget-object v1, p0, Lo/Yh$Activity;->e:Lo/Yd;

    check-cast v0, Lo/Yh$Application;

    invoke-virtual {v1, v0}, Lo/Yd;->d(Lo/Yh$Application;)V

    return-void

    :catchall_1
    move-exception v1

    .line 231
    :goto_1
    iget-object v3, p0, Lo/Yh$Activity;->e:Lo/Yd;

    invoke-virtual {v3, v2}, Lo/Yd;->b(Z)V

    .line 232
    iget-object v2, p0, Lo/Yh$Activity;->e:Lo/Yd;

    check-cast v0, Lo/Yh$Application;

    invoke-virtual {v2, v0}, Lo/Yd;->d(Lo/Yh$Application;)V

    throw v1
.end method
