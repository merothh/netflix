.class abstract Lo/KL$StateListAnimator;
.super Lo/KA$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StateListAnimator"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;)V
    .locals 1

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/KA$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    return-void
.end method
