.class public Lo/Temperature;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final c:[I


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Lo/TransactionTracker;

.field private d:I

.field protected e:Landroid/widget/ImageView;

.field private h:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

.field private i:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 43
    sput-object v0, Lo/Temperature;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lo/Temperature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lo/Temperature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lo/Temperature;->d:I

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lo/Temperature;->e()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    sget p1, Lo/IHwInterface$TaskDescription;->r:I

    invoke-virtual {p0, p1}, Lo/Temperature;->setBackgroundResource(I)V

    .line 66
    sget p1, Lo/IHwInterface$FragmentManager;->g:I

    invoke-virtual {p0, p1}, Lo/Temperature;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/Temperature;->e:Landroid/widget/ImageView;

    .line 67
    sget p1, Lo/IHwInterface$FragmentManager;->i:I

    invoke-virtual {p0, p1}, Lo/Temperature;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lo/TransactionTracker;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lo/Temperature;->b:Lo/TransactionTracker;

    .line 76
    invoke-virtual {p1}, Lo/TransactionTracker;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/Temperature;->setSelected(Z)V

    .line 77
    invoke-virtual {p1}, Lo/TransactionTracker;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/Temperature;->setEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lo/Temperature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/TransactionTracker;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Temperature;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p1}, Lo/TransactionTracker;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Temperature;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1}, Lo/TransactionTracker;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/Temperature;->setId(I)V

    return-void
.end method

.method public a(I)Z
    .locals 4

    .line 190
    iget-object v0, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 191
    iget-object v0, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()Lo/TransactionTracker;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/Temperature;->b:Lo/TransactionTracker;

    return-object v0
.end method

.method public d()Lcom/netflix/android/widgetry/widget/tabs/BadgeView;
    .locals 2

    .line 182
    iget-object v0, p0, Lo/Temperature;->h:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    if-nez v0, :cond_0

    .line 183
    sget v0, Lo/IHwInterface$FragmentManager;->b:I

    invoke-virtual {p0, v0}, Lo/Temperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lo/IHwInterface$FragmentManager;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    iput-object v0, p0, Lo/Temperature;->h:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    .line 186
    :cond_0
    iget-object v0, p0, Lo/Temperature;->h:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    return-object v0
.end method

.method protected e()I
    .locals 1

    .line 71
    sget v0, Lo/IHwInterface$LoaderManager;->e:I

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 127
    iget-object v0, p0, Lo/Temperature;->b:Lo/TransactionTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/TransactionTracker;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lo/Temperature;->c:[I

    invoke-static {p1, v0}, Lo/Temperature;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lo/Temperature;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lo/Temperature;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lo/FileReader;->e(Landroid/content/Context;I)Lo/FileReader;

    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Lo/FilterWriter;->c(Landroid/view/View;Lo/FileReader;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    invoke-static {p0, p1}, Lo/FilterWriter;->c(Landroid/view/View;Lo/FileReader;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lo/Temperature;->i:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lo/Temperature;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lo/Temperature;->i:Landroid/content/res/ColorStateList;

    .line 144
    iget-object p1, p0, Lo/Temperature;->b:Lo/TransactionTracker;

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lo/Temperature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/TransactionTracker;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Temperature;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lo/Temperature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 178
    :goto_0
    invoke-static {p0, p1}, Lo/FilterWriter;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 84
    iput p1, p0, Lo/Temperature;->d:I

    return-void
.end method

.method public setLabelVisibility(Z)V
    .locals 2

    .line 164
    iget-object v0, p0, Lo/Temperature;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x31

    .line 167
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x11

    .line 170
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    :goto_0
    iget-object p1, p0, Lo/Temperature;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lo/Temperature;->b:Lo/TransactionTracker;

    invoke-virtual {v0, p1}, Lo/TransactionTracker;->a(Z)V

    .line 104
    iget-object p1, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Lo/FilterWriter;->b(Landroid/view/View;F)V

    .line 105
    iget-object p1, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lo/FilterWriter;->d(Landroid/view/View;F)V

    .line 107
    invoke-virtual {p0}, Lo/Temperature;->refreshDrawableState()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/Temperature;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, p1}, Lo/Temperature;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
