.class public final Lo/Fc;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fc$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/Fc$StateListAnimator;


# instance fields
.field private final a:Lo/NdefRecord;

.field private final c:Landroid/view/View;

.field private final d:I

.field private final e:Landroid/view/ViewGroup;

.field private final f:Lo/HorizontalScrollView;

.field private final g:Z

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/ProgressBar;

.field private final j:Landroid/widget/LinearLayout;

.field private final l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fc$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fc$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fc;->b:Lo/Fc$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 11

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-boolean p2, p0, Lo/Fc;->g:Z

    iput-object p3, p0, Lo/Fc;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 30
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->F:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p3, v1, v0}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Fc;->e:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dp_progressive_load_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Fc;->g:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setId(I)V

    .line 36
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Fc;->d:I

    .line 39
    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jD:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 39
    :goto_0
    iput-object p1, p0, Lo/Fc;->c:Landroid/view/View;

    .line 49
    iget-boolean p1, p0, Lo/Fc;->g:Z

    if-nez p1, :cond_3

    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-nez p1, :cond_3

    .line 50
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v1, "layoutParams"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result p2

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lo/BatteryManager;->b(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v2

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->c(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v5, :cond_1

    move-object v4, v0

    :cond_1
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    .line 164
    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 165
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 166
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 167
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 168
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 169
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 51
    :cond_2
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 178
    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    :cond_3
    iget-object v4, p0, Lo/Fc;->c:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 56
    new-instance p1, Lo/NdefRecord;

    .line 58
    invoke-direct {p0}, Lo/Fc;->p()I

    move-result v5

    .line 59
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string p2, "uiView.context"

    invoke-static {v6, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v3, p1

    .line 56
    invoke-direct/range {v3 .. v10}, Lo/NdefRecord;-><init>(Landroid/view/View;ILandroid/content/Context;JILo/amc;)V

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 55
    :goto_1
    iput-object p1, p0, Lo/Fc;->a:Lo/NdefRecord;

    .line 63
    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jB:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 63
    :goto_2
    iput-object p1, p0, Lo/Fc;->i:Landroid/widget/ProgressBar;

    .line 69
    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-nez p1, :cond_6

    .line 70
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qx:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    :cond_6
    iput-object v0, p0, Lo/Fc;->h:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qw:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/Fc;->j:Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qv:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/HorizontalScrollView;

    iput-object p1, p0, Lo/Fc;->f:Lo/HorizontalScrollView;

    .line 80
    iget-object p1, p0, Lo/Fc;->f:Lo/HorizontalScrollView;

    new-instance p2, Lo/Fc$5;

    invoke-direct {p2, p0}, Lo/Fc$5;-><init>(Lo/Fc;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lo/Fc;->h:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-boolean p3, p0, Lo/Fc;->g:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_7
    return-void

    .line 30
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic d(Lo/Fc;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lo/Fc;->g:Z

    return p0
.end method

.method private final m()V
    .locals 3

    .line 113
    iget-object v0, p0, Lo/Fc;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lo/Fc;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x3e99999a    # 0.3f

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final o()V
    .locals 2

    .line 121
    iget-object v0, p0, Lo/Fc;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 123
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private final p()I
    .locals 2

    .line 136
    iget-boolean v0, p0, Lo/Fc;->g:Z

    if-eqz v0, :cond_0

    .line 137
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->b:I

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lo/Fc;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_1

    .line 140
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->h:I

    goto :goto_0

    .line 142
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->c:I

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 36
    iget v0, p0, Lo/Fc;->d:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lo/Fc;->f()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Fc;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lo/Fc;->m()V

    .line 104
    iget-object v0, p0, Lo/Fc;->j:Landroid/widget/LinearLayout;

    const-string v1, "retryContainer"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/Fc;->a:Lo/NdefRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/NdefRecord;->e()V

    .line 99
    :cond_0
    iget-object v0, p0, Lo/Fc;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 2

    .line 93
    iget-object v0, p0, Lo/Fc;->a:Lo/NdefRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/NdefRecord;->b()V

    .line 94
    :cond_0
    iget-object v0, p0, Lo/Fc;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lo/Fc;->g:Z

    return v0
.end method

.method public final l()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lo/Fc;->o()V

    .line 109
    iget-object v0, p0, Lo/Fc;->j:Landroid/widget/LinearLayout;

    const-string v1, "retryContainer"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final n()V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/Fc;->a:Lo/NdefRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/NdefRecord;->d()V

    :cond_0
    return-void
.end method
