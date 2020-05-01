.class Lo/ObjectInputValidation$ActionBar;
.super Lo/ObjectInputValidation$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ObjectInputValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# direct methods
.method constructor <init>(Lo/ObjectInputValidation;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lo/ObjectInputValidation$StateListAnimator;-><init>(Lo/ObjectInputValidation;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ObjectInputValidation$ActionBar;->b:Lo/ObjectInputValidation;

    invoke-virtual {v0, p1}, Lo/ObjectInputValidation;->c(I)Lo/LineNumberInputStream;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lo/LineNumberInputStream;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
