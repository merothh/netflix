.class public final Lo/Binder;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Landroid/view/View;)Z
    .locals 1

    const-string v0, "$this$immersiveWindowMode"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    const/16 v0, 0x1000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$description"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString()"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Landroid/view/View;F)V
    .locals 1

    const-string v0, "$this$scale"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final d(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 2

    const-string v0, "$this$updateCompoundDrawableTintList"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 76
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 78
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    if-eqz p0, :cond_4

    invoke-static {p0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final e(Landroid/view/View;)V
    .locals 1

    const-string v0, "$this$safeRequestLayout"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lo/Binder$StateListAnimator;

    invoke-direct {v0, p0}, Lo/Binder$StateListAnimator;-><init>(Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method
