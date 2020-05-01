.class public final Lo/Xf;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xf$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/Xf$ActionBar;

.field private static final t:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final d:Lo/ImageSwitcher;

.field private final e:Landroid/view/View;

.field private f:Lo/CQ;

.field private g:Landroid/view/ViewPropertyAnimator;

.field private final h:Landroid/widget/LinearLayout;

.field private final i:Lo/CompoundButton;

.field private j:Lo/CQ;

.field private final k:I

.field private final l:Landroid/view/ViewGroup;

.field private final m:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lo/aka;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xf$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xf$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xf;->c:Lo/Xf$ActionBar;

    .line 27
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lo/Xf;->t:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Xf;->l:Landroid/view/ViewGroup;

    .line 36
    iget-object p1, p0, Lo/Xf;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->el:I

    iget-object v1, p0, Lo/Xf;->l:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026eekbar_bif, parent, true)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Xf;->e:Landroid/view/View;

    .line 38
    iget-object p1, p0, Lo/Xf;->e:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootUI.findViewById(R.id\u2026er_seekbar_bif_container)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xf;->b:Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->L:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.bif_current_time_label)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    .line 42
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->J:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.bif_image_view_container)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->N:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.bif_image_view)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/CompoundButton;

    iput-object p1, p0, Lo/Xf;->i:Lo/CompoundButton;

    .line 52
    iget-object p1, p0, Lo/Xf;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "parent.context"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ag:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lo/Xf;->k:I

    .line 56
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.empty()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Xf;->m:Lio/reactivex/Observable;

    .line 58
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeekbarBifUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeekbarBifUIView$containerId$2;-><init>(Lo/Xf;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xf;->n:Lo/aka;

    return-void
.end method

.method private final d(Landroid/view/View;I)I
    .locals 5

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr p2, v3

    .line 89
    iget-object v3, p0, Lo/Xf;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/Activity;

    invoke-static {v3, v4}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ltz p2, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lo/amh;->a(II)I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int v0, p2, v2

    goto :goto_1

    :cond_2
    move v0, p2

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Xf;->n:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lo/Xf;->j()V

    .line 66
    invoke-virtual {p0}, Lo/Xf;->k()V

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;I)V
    .locals 2

    const-string v0, "byteBufferForBif"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lo/Xf;->i:Lo/CompoundButton;

    invoke-virtual {v0, p1}, Lo/CompoundButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-boolean p1, p0, Lo/Xf;->o:Z

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lo/Xf;->i:Lo/CompoundButton;

    sget-object v0, Lo/Xf;->t:Landroid/graphics/ColorMatrixColorFilter;

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lo/CompoundButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lo/Xf;->d(Landroid/view/View;I)I

    move-result p1

    .line 111
    iget-object p2, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lo/Xf;->o()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "bifCurrentTime"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lo/Xf;->d(Landroid/view/View;I)I

    move-result p1

    .line 76
    iget-object p2, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setTranslationX(F)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lo/Xf;->o:Z

    return-void
.end method

.method public f()V
    .locals 4

    const-string v0, "PlayerSeekbarUIView"

    const-string v1, "Show Current time label"

    .line 135
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/aeV;->e(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    const-string v1, "Animate UP the elevation of Current time Label"

    .line 138
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lo/Xf;->f:Lo/CQ;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lo/CQ;

    iget-object v1, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lo/Xf;->k:I

    neg-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lo/CQ;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lo/Xf;->f:Lo/CQ;

    .line 142
    :cond_0
    iget-object v0, p0, Lo/Xf;->f:Lo/CQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/CQ;->b()V

    :cond_1
    return-void
.end method

.method public h()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 2

    .line 119
    iget-object v0, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aeV;->e(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public j()V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/Xf;->g:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 127
    check-cast v0, Landroid/view/ViewPropertyAnimator;

    iput-object v0, p0, Lo/Xf;->g:Landroid/view/ViewPropertyAnimator;

    .line 128
    iget-object v0, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lo/Xf;->h:Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/aeV;->e(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public k()V
    .locals 5

    const-string v0, "PlayerSeekbarUIView"

    const-string v1, "Animate DOWN the elevation of Current time Label"

    .line 146
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lo/Xf;->f:Lo/CQ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/CQ;->e()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "Animate UP elevation Current Time label is not complete yet - cancelling it"

    .line 148
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lo/Xf;->f:Lo/CQ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/CQ;->a()V

    .line 150
    :cond_0
    iget-object v1, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setTranslationY(F)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lo/Xf;->j:Lo/CQ;

    if-nez v1, :cond_2

    .line 153
    new-instance v1, Lo/CQ;

    iget-object v3, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    check-cast v3, Landroid/view/View;

    iget v4, p0, Lo/Xf;->k:I

    neg-int v4, v4

    invoke-direct {v1, v3, v4, v2}, Lo/CQ;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lo/Xf;->j:Lo/CQ;

    .line 155
    :cond_2
    iget-object v1, p0, Lo/Xf;->j:Lo/CQ;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lo/CQ;->b()V

    :cond_3
    :goto_0
    const-string v1, "Hide Current time label"

    .line 158
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lo/Xf;->d:Lo/ImageSwitcher;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/aeV;->e(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public o()Landroid/view/ViewGroup;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/Xf;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public w()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/Xf;->m:Lio/reactivex/Observable;

    return-object v0
.end method
