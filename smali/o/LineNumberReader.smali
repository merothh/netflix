.class public final Lo/LineNumberReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LineNumberReader$Activity;,
        Lo/LineNumberReader$StateListAnimator;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityManager;Lo/LineNumberReader$Activity;)Z
    .locals 3

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    if-nez p1, :cond_0

    return v1

    .line 188
    :cond_0
    new-instance v0, Lo/LineNumberReader$StateListAnimator;

    invoke-direct {v0, p1}, Lo/LineNumberReader$StateListAnimator;-><init>(Lo/LineNumberReader$Activity;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static e(Landroid/view/accessibility/AccessibilityManager;Lo/LineNumberReader$Activity;)Z
    .locals 3

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    if-nez p1, :cond_0

    return v1

    .line 169
    :cond_0
    new-instance v0, Lo/LineNumberReader$StateListAnimator;

    invoke-direct {v0, p1}, Lo/LineNumberReader$StateListAnimator;-><init>(Lo/LineNumberReader$Activity;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method
