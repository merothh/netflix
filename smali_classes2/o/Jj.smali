.class public Lo/Jj;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private J:Lo/BaseAdapter;

.field private K:Landroid/widget/ImageView;

.field protected L:Lo/BaseAdapter;

.field private M:Lo/MenuItemHoverListener;

.field protected N:Lo/BaseAdapter;

.field private O:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/RadioButton;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/RadioButton;

.field private T:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:I

.field protected d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    iput p2, p0, Lo/Jj;->W:I

    .line 65
    invoke-direct {p0}, Lo/Jj;->x()V

    .line 66
    invoke-direct {p0}, Lo/Jj;->u()V

    return-void
.end method

.method private A()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 259
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->M:I

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_0
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->C:I

    if-ne v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_1
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->E:I

    if-ne v0, v1, :cond_2

    .line 264
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_2
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->G:I

    if-ne v0, v1, :cond_3

    .line 266
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_3
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->H:I

    if-ne v0, v1, :cond_4

    .line 268
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_4
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private e(Lo/AU;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lo/Jj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lo/Jj;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lo/Jj;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/AU;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lo/Jj;->L:Lo/BaseAdapter;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private h(Lo/Bc;)V
    .locals 4

    .line 348
    iget-object v0, p0, Lo/Jj;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lo/Bb;

    if-eqz v0, :cond_2

    .line 353
    check-cast p1, Lo/Bb;

    .line 354
    invoke-interface {p1}, Lo/Bb;->aw()I

    move-result v0

    if-lez v0, :cond_1

    .line 356
    iget-object v0, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/Bb;->aG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p1, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object p1, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 361
    :cond_2
    instance-of v0, p1, Lo/agg;

    if-eqz v0, :cond_4

    .line 362
    check-cast p1, Lo/agg;

    .line 363
    invoke-interface {p1}, Lo/agg;->S()I

    move-result p1

    if-lez p1, :cond_3

    .line 365
    iget-object v0, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/Jj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p1, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_3
    iget-object p1, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private j(Lo/Bc;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lo/Jj;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    invoke-interface {p1}, Lo/Bc;->aQ()Ljava/lang/String;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lo/Jj;->R:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lo/Jj;->R:Landroid/widget/TextView;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private u()V
    .locals 2

    .line 231
    iget-object v0, p0, Lo/Jj;->K:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->M:I

    if-ne v0, v1, :cond_1

    .line 238
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->A:I

    goto :goto_0

    .line 239
    :cond_1
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->C:I

    if-ne v0, v1, :cond_2

    .line 240
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->w:I

    goto :goto_0

    .line 241
    :cond_2
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->E:I

    if-ne v0, v1, :cond_3

    .line 242
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->x:I

    goto :goto_0

    .line 243
    :cond_3
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->G:I

    if-ne v0, v1, :cond_4

    .line 244
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->D:I

    goto :goto_0

    .line 245
    :cond_4
    iget v0, p0, Lo/Jj;->W:I

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->H:I

    if-ne v0, v1, :cond_5

    .line 246
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->v:I

    goto :goto_0

    .line 248
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->u:I

    .line 251
    :goto_0
    iget-object v1, p0, Lo/Jj;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private x()V
    .locals 5

    .line 208
    invoke-virtual {p0}, Lo/Jj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 211
    iget-object v1, p0, Lo/Jj;->M:Lo/MenuItemHoverListener;

    iget-object v2, p0, Lo/Jj;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/MenuItemHoverListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lo/Jj;->n()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0}, Lo/Jj;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {p0}, Lo/Jj;->n()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-virtual {p0}, Lo/Jj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lo/Jj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->h(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    double-to-int v1, v1

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 222
    :goto_0
    invoke-virtual {p0}, Lo/Jj;->n()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 224
    invoke-virtual {p0}, Lo/Jj;->m()Lo/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v1, v1

    const v3, 0x3fe39581    # 1.778f

    mul-float v3, v3, v1

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    invoke-virtual {p0}, Lo/Jj;->m()Lo/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-float v1, v1, v4

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iget-object v1, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v0, v0

    const v2, 0x3eb851ec    # 0.36f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 324
    iget-object v0, p0, Lo/Jj;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x15

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    return-void
.end method

.method protected a(Lo/AU;)V
    .locals 4

    .line 282
    iget-object v0, p0, Lo/Jj;->J:Lo/BaseAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 283
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setPassActualScaleTypeToParent(Z)V

    .line 284
    iget-object v0, p0, Lo/Jj;->J:Lo/BaseAdapter;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 285
    iget-object v0, p0, Lo/Jj;->J:Lo/BaseAdapter;

    invoke-interface {p1}, Lo/AU;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lo/Jj;->J:Lo/BaseAdapter;

    .line 287
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/AU;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {v0, p1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ce:I

    return v0
.end method

.method protected c()V
    .locals 3

    .line 374
    iget-object v0, p0, Lo/Jj;->S:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->aj:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 376
    iget-object v0, p0, Lo/Jj;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lo/Jj;->S:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lo/Jj;->Q:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->N:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 382
    iget-object v0, p0, Lo/Jj;->T:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lo/Jj;->Q:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method public c(Lo/AU;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lo/Jj;->d(Lo/AU;)V

    .line 277
    invoke-virtual {p0, p1}, Lo/Jj;->a(Lo/AU;)V

    .line 278
    invoke-direct {p0, p1}, Lo/Jj;->e(Lo/AU;)V

    return-void
.end method

.method protected d(Lo/AU;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-interface {p1}, Lo/AU;->i()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lo/Jj;->h:Lo/RemoteViewsListAdapter;

    invoke-virtual {v1, v0}, Lo/RemoteViewsListAdapter;->b(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lo/Jj;->h:Lo/RemoteViewsListAdapter;

    .line 304
    invoke-virtual {p0}, Lo/Jj;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lo/AU;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {v1, p1}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 305
    iget-object p1, p0, Lo/Jj;->h:Lo/RemoteViewsListAdapter;

    invoke-virtual {p1, v0}, Lo/RemoteViewsListAdapter;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lo/Bc;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lo/Bc;)V

    .line 105
    invoke-virtual {p0, p1}, Lo/Jj;->g(Lo/Bc;)V

    .line 107
    invoke-direct {p0, p1}, Lo/Jj;->j(Lo/Bc;)V

    .line 108
    invoke-direct {p0, p1}, Lo/Jj;->h(Lo/Bc;)V

    .line 110
    invoke-virtual {p0}, Lo/Jj;->c()V

    .line 112
    invoke-virtual {p0}, Lo/Jj;->a()V

    .line 114
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lo/Jj;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    return-void
.end method

.method public e()Lo/BaseAdapter;
    .locals 1

    .line 388
    iget-object v0, p0, Lo/Jj;->N:Lo/BaseAdapter;

    return-object v0
.end method

.method public e(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p1}, Lo/Bc;->aX()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lo/Jj;->h:Lo/RemoteViewsListAdapter;

    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 159
    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 160
    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    sget-object v3, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 161
    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 163
    iget-object v1, p0, Lo/Jj;->h:Lo/RemoteViewsListAdapter;

    invoke-virtual {v1, p3}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p3, p0, Lo/Jj;->h:Lo/RemoteViewsListAdapter;

    invoke-virtual {p3, v0}, Lo/RemoteViewsListAdapter;->setTag(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0, p1, p2}, Lo/Jj;->d(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lo/Bc;)V
    .locals 0

    return-void
.end method

.method public g(Lo/Bc;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 171
    iget-object v0, p0, Lo/Jj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {p1}, Lo/Bc;->bh()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 179
    iget-object v0, p0, Lo/Jj;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lo/Jj;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lo/Jj;->L:Lo/BaseAdapter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lo/Jj;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lo/Jj;->L:Lo/BaseAdapter;

    invoke-virtual {v1, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lo/Jj;->L:Lo/BaseAdapter;

    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 187
    invoke-virtual {v3, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    const/4 v3, 0x1

    .line 188
    invoke-virtual {v0, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    sget-object v3, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    .line 189
    invoke-virtual {v0, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 191
    iget-object v0, p0, Lo/Jj;->L:Lo/BaseAdapter;

    invoke-interface {p1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 194
    iget-object p1, p0, Lo/Jj;->L:Lo/BaseAdapter;

    invoke-virtual {p1}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    iget-object v0, p0, Lo/Jj;->L:Lo/BaseAdapter;

    invoke-virtual {v0, p1}, Lo/BaseAdapter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->i()V

    .line 73
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uI:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/Jj;->S:Landroid/widget/RadioButton;

    .line 74
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uN:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lo/Jj;->Q:Landroid/widget/RadioButton;

    .line 75
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uJ:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Jj;->P:Landroid/view/View;

    .line 76
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jb:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Jj;->L:Lo/BaseAdapter;

    .line 77
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iV:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Jj;->R:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iW:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Jj;->d:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uO:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Jj;->T:Landroid/view/View;

    .line 80
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vs:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Jj;->N:Lo/BaseAdapter;

    .line 81
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->va:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lo/Jj;->O:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 82
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uC:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Jj;->V:Landroid/view/View;

    .line 83
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iZ:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Jj;->J:Lo/BaseAdapter;

    .line 84
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jc:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/Jj;->K:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oH:I

    invoke-virtual {p0, v0}, Lo/Jj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    iput-object v0, p0, Lo/Jj;->M:Lo/MenuItemHoverListener;

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public o()I
    .locals 2

    .line 203
    invoke-virtual {p0}, Lo/Jj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public p()Lo/ListView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/Jj;->O:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method
