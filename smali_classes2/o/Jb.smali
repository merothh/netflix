.class public Lo/Jb;
.super Lo/DH;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private p:Landroid/view/View$OnClickListener;

.field private q:Lo/BaseAdapter;

.field private r:Lo/AS;

.field private s:Lo/MenuItemHoverListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:I

.field private w:I

.field private final x:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILo/alA;Lo/Du$Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lo/alA<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;",
            "Lo/Du$Activity;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p5}, Lo/DH;-><init>(Landroid/content/Context;ILo/Du$Activity;)V

    .line 41
    new-instance p2, Lo/Jb$4;

    invoke-direct {p2, p0}, Lo/Jb$4;-><init>(Lo/Jb;)V

    iput-object p2, p0, Lo/Jb;->t:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p4, p0, Lo/Jb;->x:Lo/alA;

    .line 66
    iput p3, p0, Lo/Jb;->y:I

    .line 68
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget p4, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->m:I

    const/4 p5, 0x1

    invoke-virtual {p3, p4, p2, p5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 70
    iget p3, p2, Landroid/util/TypedValue;->data:I

    iput p3, p0, Lo/Jb;->u:I

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p3, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->k:I

    invoke-virtual {p1, p3, p2, p5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget p1, p2, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lo/Jb;->w:I

    :cond_1
    return-void
.end method

.method static synthetic b(Lo/Jb;)Lo/AS;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/Jb;->r:Lo/AS;

    return-object p0
.end method

.method static synthetic b(Lo/Jb;Lo/AS;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/Jb;->d(Lo/AS;)V

    return-void
.end method

.method static synthetic e(Lo/Jb;)Lo/alA;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/Jb;->x:Lo/alA;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 202
    iget-object v0, p0, Lo/Jb;->d:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method private h(Lo/AS;)V
    .locals 1

    .line 167
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->P()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 169
    :goto_0
    iget-boolean v0, p0, Lo/Jb;->j:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget p1, p0, Lo/Jb;->u:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lo/Jb;->w:I

    .line 170
    :goto_1
    iget-object v0, p0, Lo/Jb;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lo/Jb;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-boolean v0, p0, Lo/Jb;->j:Z

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0}, Lo/Jb;->f()V

    .line 176
    :cond_2
    iget-object v0, p0, Lo/Jb;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lo/Jb;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private j(Lo/AS;)V
    .locals 5

    .line 222
    iget-object v0, p0, Lo/Jb;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 223
    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->S()I

    move-result v0

    if-lez v0, :cond_1

    .line 224
    iget-object v0, p0, Lo/Jb;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lo/Jb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->im:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v4

    invoke-interface {v4}, Lo/AK;->S()I

    move-result v4

    invoke-static {v4}, Lo/aeC;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-interface {p1}, Lo/AS;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/AS;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    iget-object p1, p0, Lo/Jb;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lo/Jb;->g:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Lo/AS;)Ljava/lang/CharSequence;
    .locals 0

    .line 104
    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 79
    invoke-super {p0}, Lo/DH;->a()V

    .line 80
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oH:I

    invoke-virtual {p0, v0}, Lo/Jb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    iput-object v0, p0, Lo/Jb;->s:Lo/MenuItemHoverListener;

    .line 81
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qq:I

    invoke-virtual {p0, v0}, Lo/Jb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    iput-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    return-void
.end method

.method public a(Lo/AS;Lo/Bb;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lo/DH;->a(Lo/AS;Lo/Bb;)V

    .line 116
    invoke-virtual {p0, p1}, Lo/Jb;->i(Lo/AS;)V

    .line 117
    invoke-direct {p0, p1}, Lo/Jb;->j(Lo/AS;)V

    .line 118
    invoke-virtual {p0, p1}, Lo/Jb;->g(Lo/AS;)V

    .line 119
    invoke-virtual {p0}, Lo/Jb;->e()V

    .line 120
    invoke-virtual {p0, p1}, Lo/Jb;->c(Lo/AS;)V

    .line 121
    invoke-direct {p0, p1}, Lo/Jb;->h(Lo/AS;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lo/AS;

    check-cast p2, Lo/Bb;

    invoke-virtual {p0, p1, p2}, Lo/Jb;->a(Lo/AS;Lo/Bb;)V

    return-void
.end method

.method protected c(Lo/AS;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lo/Jb;->f(Lo/AS;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lo/Jb;->g()V

    :goto_0
    return-void
.end method

.method protected e()V
    .locals 3

    .line 126
    iget-object v0, p0, Lo/Jb;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lo/Jb;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    iget-object v1, p0, Lo/Jb;->h:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lo/Jb;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 134
    iget-object v0, p0, Lo/Jb;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 135
    iget-object v0, p0, Lo/Jb;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lo/Jb;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected f(Lo/AS;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lo/Jb;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lo/Jb;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setEnabled(Z)V

    .line 146
    iput-object p1, p0, Lo/Jb;->r:Lo/AS;

    .line 147
    iget-object p1, p0, Lo/Jb;->p:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lo/Jb;->t:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lo/Jb;->p:Landroid/view/View$OnClickListener;

    .line 150
    :cond_1
    invoke-virtual {p0}, Lo/Jb;->h()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/Jb;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected g()V
    .locals 2

    .line 158
    iget-object v0, p0, Lo/Jb;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lo/Jb;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setEnabled(Z)V

    return-void
.end method

.method protected g(Lo/AS;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lo/Jb;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lo/Jb;->b:Landroid/widget/TextView;

    iget v1, p0, Lo/Jb;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-virtual {p0}, Lo/Jb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 192
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qP:I

    invoke-interface {p1}, Lo/AS;->X()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lo/Jb;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lo/Jb;->a:Landroid/widget/TextView;

    invoke-interface {p1}, Lo/AS;->ai()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method protected h()Landroid/view/View;
    .locals 1

    .line 154
    iget-object v0, p0, Lo/Jb;->s:Lo/MenuItemHoverListener;

    return-object v0
.end method

.method protected i(Lo/AS;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {p1}, Lo/AS;->u()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lo/Jb;->q:Lo/BaseAdapter;

    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 210
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    invoke-interface {p1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lo/Jb;->j()V

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lo/Jb;->q:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lo/Jb;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget v0, p0, Lo/Jb;->y:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lo/Jb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->E:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 243
    iget-object v1, p0, Lo/Jb;->q:Lo/BaseAdapter;

    invoke-virtual {v1}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lo/Jb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v0, p0, Lo/Jb;->y:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f100000    # 0.5625f

    mul-float v2, v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lo/Jb;->i:Z

    .line 110
    invoke-virtual {p0}, Lo/Jb;->e()V

    return-void
.end method
