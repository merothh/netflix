.class public Lo/ApplicationLoaders;
.super Landroid/widget/ScrollView;
.source ""

# interfaces
.implements Lo/ApplicationErrorReport;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/View;

.field private c:Lo/ApplicationPackageManager;

.field d:[I

.field private e:Landroid/view/View;

.field private g:Lo/BackStackRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lo/ApplicationLoaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ApplicationLoaders;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lo/ApplicationLoaders;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lo/ApplicationLoaders;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 32
    iput-object p3, p0, Lo/ApplicationLoaders;->d:[I

    .line 44
    new-instance p3, Lo/AlertDialog;

    invoke-direct {p3, p1}, Lo/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lo/AppComponentFactory;

    sget-object v1, Lo/AppOpsManager$StateListAnimator;->z:[I

    invoke-direct {v0, p1, p2, v1}, Lo/AppComponentFactory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[I)V

    .line 46
    new-instance p1, Lo/BackStackRecord;

    invoke-direct {p1, p0, p3, v0}, Lo/BackStackRecord;-><init>(Lo/ApplicationErrorReport;Lo/AppOpsManagerInternal;Lo/AliasActivity;)V

    iput-object p1, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    .line 47
    invoke-virtual {p0}, Lo/ApplicationLoaders;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lo/ApplicationLoaders$1;

    invoke-direct {p2, p0}, Lo/ApplicationLoaders$1;-><init>(Lo/ApplicationLoaders;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lo/ApplicationLoaders;->d(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic e(Lo/ApplicationLoaders;)Lo/BackStackRecord;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 81
    invoke-virtual {p0, p1}, Lo/ApplicationLoaders;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    .line 82
    iget-object p1, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    iget-object v0, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    invoke-direct {p0, v1}, Lo/ApplicationLoaders;->d(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lo/BackStackRecord;->a(II)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/ApplicationLoaders;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    iget-object v0, p0, Lo/ApplicationLoaders;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lo/ApplicationThreadConstants;->c(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lo/ApplicationLoaders;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/ApplicationLoaders;->a:Landroid/view/View;

    .line 76
    iget-object p1, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    iget-object v0, p0, Lo/ApplicationLoaders;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/BackStackRecord;->a(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lo/ApplicationLoaders;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 103
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    iget-object p1, p0, Lo/ApplicationLoaders;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/ApplicationThreadConstants;->c(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 59
    iget-object p2, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lo/ApplicationLoaders;->d:[I

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 61
    iget-object p1, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    iget-object p2, p0, Lo/ApplicationLoaders;->e:Landroid/view/View;

    invoke-direct {p0, p2}, Lo/ApplicationLoaders;->d(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lo/ApplicationLoaders;->d:[I

    const/4 p4, 0x1

    aget p3, p3, p4

    invoke-virtual {p1, p2, p3}, Lo/BackStackRecord;->d(II)V

    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 143
    iget-object p1, p0, Lo/ApplicationLoaders;->c:Lo/ApplicationPackageManager;

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1, p4}, Lo/ApplicationPackageManager;->b(Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 160
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Landroid/os/Bundle;

    .line 162
    iget-object v0, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    const-string v1, "scroll_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lo/BackStackRecord;->d:Z

    const-string v0, "super_state"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "super_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    iget-object v1, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    iget-boolean v1, v1, Lo/BackStackRecord;->d:Z

    const-string v2, "scroll_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 118
    iget-object v0, p0, Lo/ApplicationLoaders;->g:Lo/BackStackRecord;

    invoke-virtual {v0, p2}, Lo/BackStackRecord;->d(I)V

    .line 119
    iget-object v0, p0, Lo/ApplicationLoaders;->c:Lo/ApplicationPackageManager;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p1, p2, p3, p4}, Lo/ApplicationPackageManager;->d(IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lo/ApplicationPackageManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lo/ApplicationLoaders;->c:Lo/ApplicationPackageManager;

    return-void
.end method
