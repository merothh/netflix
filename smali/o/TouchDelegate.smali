.class public Lo/TouchDelegate;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TouchDelegate$Application;
    }
.end annotation


# instance fields
.field b:Lo/Factory2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 42
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p2}, Lo/TouchDelegate;->e(Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 48
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p2}, Lo/TouchDelegate;->e(Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 54
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 1

    const-string p1, "Constraints"

    const-string v0, " ################# init"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public b()Lo/Factory2;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/TouchDelegate;->b:Lo/Factory2;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    iput-object v0, p0, Lo/TouchDelegate;->b:Lo/Factory2;

    .line 151
    :cond_0
    iget-object v0, p0, Lo/TouchDelegate;->b:Lo/Factory2;

    invoke-virtual {v0, p0}, Lo/Factory2;->a(Lo/TouchDelegate;)V

    .line 152
    iget-object v0, p0, Lo/TouchDelegate;->b:Lo/Factory2;

    return-object v0
.end method

.method public b(Landroid/util/AttributeSet;)Lo/TouchDelegate$Application;
    .locals 2

    .line 62
    new-instance v0, Lo/TouchDelegate$Application;

    invoke-virtual {p0}, Lo/TouchDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/TouchDelegate$Application;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected e()Lo/TouchDelegate$Application;
    .locals 2

    .line 131
    new-instance v0, Lo/TouchDelegate$Application;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lo/TouchDelegate$Application;-><init>(II)V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/TouchDelegate;->e()Lo/TouchDelegate$Application;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lo/TouchDelegate;->b(Landroid/util/AttributeSet;)Lo/TouchDelegate$Application;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 143
    new-instance v0, Lo/MenuInflater$StateListAnimator;

    invoke-direct {v0, p1}, Lo/MenuInflater$StateListAnimator;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
