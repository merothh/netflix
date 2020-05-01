.class public Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;,
        Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;,
        Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

.field private static final u:Landroid/util/TypedValue;


# instance fields
.field private final a:Lo/Magnifier;

.field private final b:Landroid/view/ViewGroup;

.field private final d:Lo/Fragment;

.field private e:Landroid/view/View;

.field private f:Lo/Fragment$StateListAnimator;

.field private g:Landroid/view/View;

.field private final h:Landroid/widget/TextView;

.field private i:Landroid/animation/Animator;

.field private final j:Landroid/view/View;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private final o:I

.field private final p:I

.field private q:Lo/KU;

.field private final r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

.field private final t:Landroid/graphics/drawable/Drawable;

.field private final v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final w:I

.field private final x:Lo/QuickContactBadge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    .line 95
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->u:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->l:I

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->k:Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_3

    move-object p1, p2

    :cond_3
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->o:I

    .line 129
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->d:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->p:I

    .line 132
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ch:I

    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->w:I

    .line 135
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 137
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarParentViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz p1, :cond_a

    check-cast p1, Landroid/view/ViewGroup;

    .line 138
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->a:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    .line 139
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 140
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V

    check-cast v1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 145
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 148
    :cond_5
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->d:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "actionBarGroup.findViewById(R.id.action_bar)"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/Magnifier;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    .line 149
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->bV:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "actionBarGroup.findViewById(R.id.centered_title)"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->h:Landroid/widget/TextView;

    .line 150
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->bU:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "actionBarGroup.findViewById(R.id.centered_logo)"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j:Landroid/view/View;

    .line 152
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    check-cast p2, Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 155
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    .line 157
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1, v0}, Lo/Fragment;->b(Z)V

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m()V

    .line 160
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->n()V

    .line 161
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->k()V

    .line 163
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 164
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->r:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->t:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p2}, Lo/Magnifier;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    .line 171
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    new-instance p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$1;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V

    check-cast p2, Lo/Magnifier$TaskDescription;

    invoke-virtual {p1, p2}, Lo/Magnifier;->setBackgroundChangeListener(Lo/Magnifier$TaskDescription;)V

    .line 179
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    new-instance p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$5;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$5;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V

    check-cast p2, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p1, p2}, Lo/Magnifier;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 187
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->k:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of p2, p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz p2, :cond_7

    .line 190
    new-instance p2, Lo/KU;

    check-cast p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p2, p0, p1}, Lo/KU;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->q:Lo/KU;

    :cond_7
    return-void

    .line 155
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.appcompat.app.ActionBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 621
    sget p1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->c:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->j:I

    :goto_0
    return p1
.end method

.method private final a(IZI)Landroid/animation/Animator;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef",
            "WrongConstant"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(I)I

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity.resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 336
    :goto_0
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    .line 337
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v2, v3, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_2

    .line 358
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p2}, Lo/Magnifier;->getHeight()I

    move-result p2

    int-to-float p2, p2

    neg-float v2, p2

    :goto_1
    aput v2, v4, v6

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto/16 :goto_8

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getY()F

    move-result p1

    int-to-float v0, v6

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getY()F

    move-result p1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getHeight()I

    move-result p1

    int-to-float p1, p1

    neg-float p1, p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 354
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0, v2}, Lo/Magnifier;->setX(F)V

    if-eqz p2, :cond_5

    goto :goto_3

    .line 355
    :cond_5
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p2}, Lo/Magnifier;->getHeight()I

    move-result p2

    int-to-float p2, p2

    neg-float v2, p2

    :goto_3
    iput v2, v3, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    .line 356
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v4, [F

    aput p1, v2, v6

    iget p1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    aput p1, v2, v5

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto/16 :goto_8

    .line 347
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getX()F

    move-result p1

    int-to-float v7, v6

    cmpl-float p1, p1, v7

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getX()F

    move-result p1

    int-to-float v7, v0

    cmpg-float p1, p1, v7

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getX()F

    move-result p1

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    int-to-float p1, v0

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    .line 348
    :goto_4
    iget-object v7, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v7, v2}, Lo/Magnifier;->setY(F)V

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    int-to-float v2, v0

    .line 349
    :goto_5
    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    .line 350
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    aput p1, v2, v6

    iget p1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    aput p1, v2, v5

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_8

    .line 341
    :cond_a
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getX()F

    move-result p1

    int-to-float v7, v6

    cmpl-float p1, p1, v7

    if-lez p1, :cond_b

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getX()F

    move-result p1

    int-to-float v7, v0

    cmpg-float p1, p1, v7

    if-gez p1, :cond_b

    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lo/Magnifier;->getX()F

    move-result p1

    goto :goto_6

    :cond_b
    if-eqz p2, :cond_c

    int-to-float p1, v0

    neg-float p1, p1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    .line 342
    :goto_6
    iget-object v7, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v7, v2}, Lo/Magnifier;->setY(F)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_d
    int-to-float p2, v0

    neg-float v2, p2

    .line 343
    :goto_7
    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    .line 344
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    aput p1, v2, v6

    iget p1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    aput p1, v2, v5

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_8
    const-string p2, "animator"

    .line 361
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x96

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 362
    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 363
    new-instance p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;

    invoke-direct {p2, p0, p3, v1, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ILkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 381
    check-cast p1, Landroid/animation/Animator;

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i:Landroid/animation/Animator;

    return-object p1
.end method

.method private final a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V
    .locals 2

    .line 665
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Custom View and Title are mutually exclusive because of support for center title"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 669
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 670
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Custom View and Logo are mutually exclusive because of support for center logo"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->n:I

    return-void
.end method

.method private final a(Ljava/lang/Integer;)V
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 639
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object p1, v0

    .line 641
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 644
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v3, v2}, Lo/Magnifier;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 646
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v4, :cond_4

    .line 647
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    .line 650
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 651
    instance-of v7, v6, Lo/Cursor;

    if-eqz v7, :cond_3

    .line 652
    move-object v7, v6

    check-cast v7, Lo/Cursor;

    invoke-virtual {v7}, Lo/Cursor;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_3

    .line 654
    invoke-virtual {v7}, Lo/Cursor;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aget-object v10, v10, v9

    if-eqz v10, :cond_2

    .line 655
    new-instance v10, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;

    invoke-direct {v10, p1, v6, v9}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$StateListAnimator;-><init>(Landroid/graphics/PorterDuffColorFilter;Landroid/view/View;I)V

    check-cast v10, Ljava/lang/Runnable;

    invoke-virtual {v6, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private final b(I)I
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 326
    :cond_0
    invoke-static {}, Lo/afw;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method private final b(Landroid/graphics/drawable/Drawable;I)I
    .locals 4

    .line 496
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 497
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    goto :goto_1

    .line 499
    :cond_0
    instance-of v0, p1, Lo/Messenger;

    if-eqz v0, :cond_5

    .line 500
    check-cast p1, Lo/Messenger;

    invoke-virtual {p1}, Lo/Messenger;->d()[I

    move-result-object v0

    if-eqz v0, :cond_5

    .line 501
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 502
    invoke-virtual {p1}, Lo/Messenger;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lo/ExpandableListView;->a:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 504
    :cond_3
    invoke-static {v0}, Lo/ako;->c([I)I

    move-result p2

    goto :goto_1

    .line 503
    :cond_4
    aget p2, v0, v2

    :cond_5
    :goto_1
    return p2
.end method

.method private final b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/Fragment;->a(Z)V

    .line 593
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Magnifier;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/Magnifier;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 600
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->k()V

    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->o:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i(I)Z

    move-result v0

    .line 604
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(I)V

    goto :goto_1

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/Magnifier;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 612
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 613
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->q:I

    invoke-virtual {p1, v0}, Lo/Magnifier;->setNavigationContentDescription(I)V

    goto :goto_2

    .line 615
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->g()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Magnifier;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m:I

    return-void
.end method

.method private final b(ZI)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 555
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1, v1}, Lo/Fragment;->c(Z)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p2, p1}, Lo/Fragment;->c(Z)V

    .line 559
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)Landroid/view/ViewGroup;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final c(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;)V

    .line 232
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 231
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 216
    new-instance p1, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;

    const/16 v0, 0x30

    invoke-direct {p1, v0}, Lcom/netflix/android/widgetry/widget/ScrollAwayBehavior;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;)V

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V
    .locals 1

    .line 220
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->p()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;)V

    goto :goto_2

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->n()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Z)V

    :goto_2
    return-void

    .line 220
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hide on scroll and behavior are mutually exclusive!"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->n:I

    return p0
.end method

.method private final e(I)V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->u:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast v1, Lo/MessagePdu;

    .line 295
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v2, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e(Landroid/graphics/drawable/Drawable;Landroid/app/Activity;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/Magnifier;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V
    .locals 3

    .line 625
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->o:I

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Z)I

    move-result p1

    .line 627
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->u:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private final i(I)Z
    .locals 7

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    mul-int v1, v1, v1

    int-to-double v3, v1

    const-wide v5, 0x3fd322d0e5604189L    # 0.299

    mul-double v3, v3, v5

    mul-int v2, v2, v2

    int-to-double v1, v2

    const-wide v5, 0x3fe2c8b439581062L    # 0.587

    mul-double v1, v1, v5

    add-double/2addr v3, v1

    mul-int p1, p1, p1

    int-to-double v1, p1

    const-wide v5, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v1, v1, v5

    add-double/2addr v3, v1

    .line 532
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    int-to-double v3, v0

    const-wide v5, 0x405fe00000000000L    # 127.5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_0

    cmpl-double p1, v1, v5

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final k()V
    .locals 1

    .line 288
    sget v0, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->a:I

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(I)V

    return-void
.end method

.method private final l()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final m()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    .line 306
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final n()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 277
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 278
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v4}, Lo/Magnifier;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 279
    iput-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e:Landroid/view/View;

    .line 280
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ku:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 443
    check-cast v0, Landroid/animation/Animator;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private final q()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 455
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c()V

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final r()V
    .locals 1

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected final a()Lo/Fragment;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "toolbar.background"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 262
    invoke-virtual {v0}, Lo/QuickContactBadge;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v0, p1}, Lo/QuickContactBadge;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final a(ZI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 418
    iget p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 419
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m:I

    .line 420
    invoke-direct {p0, p2, v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(IZI)Landroid/animation/Animator;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->p()V

    .line 425
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/Magnifier;->setTranslationX(F)V

    .line 426
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1, p2}, Lo/Magnifier;->setTranslationY(F)V

    .line 427
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1, v0}, Lo/Magnifier;->setVisibility(I)V

    .line 429
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1}, Lo/Fragment;->e()V

    return-void
.end method

.method public final b()Lo/Magnifier;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    return-object v0
.end method

.method public final b(F)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0, p1}, Lo/Magnifier;->setAlpha(F)V

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/QuickContactBadge;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/QuickContactBadge;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    if-eqz v0, :cond_6

    .line 475
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->l:I

    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;I)I

    move-result p1

    .line 477
    invoke-virtual {v0}, Lo/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->l:I

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    if-eq p1, v1, :cond_6

    .line 478
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast v1, Lo/MessagePdu;

    .line 479
    invoke-virtual {v0}, Lo/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 480
    :cond_2
    invoke-virtual {v0}, Lo/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_3

    move-object v0, v3

    :cond_3
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 482
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 483
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i(I)Z

    move-result p1

    const-string v0, "activity.window.decorView"

    const-string v1, "activity.window"

    if-eqz p1, :cond_5

    .line 485
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 488
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final c(I)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lo/KU;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->q:Lo/KU;

    return-object v0
.end method

.method public final c(FI)V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "toolbar.animate().alpha(alpha)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 543
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lo/QuickContactBadge;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 677
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->b()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(ZI)V

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->h:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->U:I

    invoke-static {v0, v1}, Lo/PipedInputStream;->b(Landroid/widget/TextView;I)V

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Fragment;->a(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/Magnifier;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 684
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/Magnifier;->setTitleTextColor(I)V

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->m()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Magnifier;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/Magnifier;->setSubtitleTextColor(I)V

    .line 688
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 690
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->h()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 691
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->o()Lo/Fragment$StateListAnimator;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(Landroid/view/View;Lo/Fragment$StateListAnimator;)V

    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->x:Lo/QuickContactBadge;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/QuickContactBadge;->setAlpha(F)V

    .line 695
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/Magnifier;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 697
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->r()V

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Magnifier;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 700
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 704
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 705
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 710
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 711
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->g()V

    .line 713
    :cond_4
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 715
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    return-void
.end method

.method public final c(ZLcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V
    .locals 2

    const-string v0, "logoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 565
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p2, p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1, v1}, Lo/Fragment;->e(Z)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lo/Fragment;->e(Z)V

    .line 570
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 571
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p2, p1, :cond_1

    .line 572
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    iget p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->p:I

    invoke-virtual {p1, p2}, Lo/Magnifier;->setLogo(I)V

    goto :goto_0

    .line 573
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p2, p1, :cond_2

    .line 574
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    iget p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->w:I

    invoke-virtual {p1, p2}, Lo/Magnifier;->setLogo(I)V

    goto :goto_0

    .line 575
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->b:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p2, p1, :cond_4

    .line 576
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->p:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, -0x1

    .line 578
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 579
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p2, p1}, Lo/Magnifier;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {p1, v1}, Lo/Fragment;->e(Z)V

    .line 586
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    const/4 p2, 0x0

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lo/Magnifier;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d(I)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 437
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->s:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    return-object v0
.end method

.method protected final d(Landroid/view/View;Lo/Fragment$StateListAnimator;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    invoke-virtual {v0, p1, p2}, Lo/Fragment;->c(Landroid/view/View;Lo/Fragment$StateListAnimator;)V

    .line 548
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->g:Landroid/view/View;

    .line 549
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->f:Lo/Fragment$StateListAnimator;

    .line 550
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d:Lo/Fragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lo/Fragment;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(ZI)V

    return-void
.end method

.method public final d(ZI)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 395
    iget p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 396
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m:I

    const/4 p1, 0x0

    .line 398
    invoke-direct {p0, p2, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(IZI)Landroid/animation/Animator;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->p()V

    .line 403
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {p1, v0}, Lo/Magnifier;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final d(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->q()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e:Landroid/view/View;

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(ZI)V

    return-void
.end method

.method public final f()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Z)V

    const/4 v0, 0x1

    .line 243
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Z)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 2

    .line 195
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;->b:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$TaskDescription;->d()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v1}, Lo/Magnifier;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v1}, Lo/Magnifier;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v1}, Lo/Magnifier;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v1}, Lo/Magnifier;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .line 207
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a:Lo/Magnifier;

    invoke-virtual {v0}, Lo/Magnifier;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected final o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->v:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method
