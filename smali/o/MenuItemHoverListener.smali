.class public Lo/MenuItemHoverListener;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field protected b:Lo/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lo/CalendarView;

    invoke-direct {p1, p0}, Lo/CalendarView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/MenuItemHoverListener;->b:Lo/NumberPicker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lo/CalendarView;

    invoke-direct {p1, p0}, Lo/CalendarView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/MenuItemHoverListener;->b:Lo/NumberPicker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lo/CalendarView;

    invoke-direct {p1, p0}, Lo/CalendarView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/MenuItemHoverListener;->b:Lo/NumberPicker;

    return-void
.end method


# virtual methods
.method protected d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lo/MenuItemHoverListener;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/MenuItemHoverListener;->b:Lo/NumberPicker;

    invoke-virtual {v0, p1}, Lo/NumberPicker;->c(Z)V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    return-void
.end method

.method public setPressedStateHandlerEnabled(Z)V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/MenuItemHoverListener;->b:Lo/NumberPicker;

    invoke-virtual {v0, p1}, Lo/NumberPicker;->b(Z)V

    return-void
.end method
