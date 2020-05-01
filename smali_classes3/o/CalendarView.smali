.class public Lo/CalendarView;
.super Lo/NumberPicker;
.source ""


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/NumberPicker;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    .line 23
    new-instance v0, Lo/CalendarView$3;

    invoke-direct {v0, p0}, Lo/CalendarView$3;-><init>(Lo/CalendarView;)V

    invoke-static {p1, v0}, Lo/aeV;->c(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 1

    const v0, 0x3f333333    # 0.7f

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
