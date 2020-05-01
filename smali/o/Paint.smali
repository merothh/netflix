.class Lo/Paint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lo/MediaController$StateListAnimator;


# instance fields
.field a:Lo/Bitmap;

.field private b:Lo/PendingIntent;

.field private c:Lo/Mode;

.field private e:Lo/MediaController$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/Mode;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/Paint;->c:Lo/Mode;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 139
    iget-object v0, p0, Lo/Paint;->b:Lo/PendingIntent;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lo/PendingIntent;->dismiss()V

    :cond_0
    return-void
.end method

.method public e(Landroid/os/IBinder;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lo/Paint;->c:Lo/Mode;

    .line 56
    new-instance v1, Lo/PendingIntent$Activity;

    invoke-virtual {v0}, Lo/Mode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v2, Lo/Bitmap;

    invoke-virtual {v1}, Lo/PendingIntent$Activity;->b()Landroid/content/Context;

    move-result-object v3

    sget v4, Lo/LoaderManager$PendingIntent;->m:I

    invoke-direct {v2, v3, v4}, Lo/Bitmap;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lo/Paint;->a:Lo/Bitmap;

    .line 61
    iget-object v2, p0, Lo/Paint;->a:Lo/Bitmap;

    invoke-virtual {v2, p0}, Lo/Bitmap;->setCallback(Lo/MediaController$StateListAnimator;)V

    .line 62
    iget-object v2, p0, Lo/Paint;->c:Lo/Mode;

    iget-object v3, p0, Lo/Paint;->a:Lo/Bitmap;

    invoke-virtual {v2, v3}, Lo/Mode;->addMenuPresenter(Lo/MediaController;)V

    .line 63
    iget-object v2, p0, Lo/Paint;->a:Lo/Bitmap;

    invoke-virtual {v2}, Lo/Bitmap;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lo/PendingIntent$Activity;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 66
    invoke-virtual {v0}, Lo/Mode;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->e(Landroid/view/View;)Lo/PendingIntent$Activity;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lo/Mode;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/PendingIntent$Activity;->a(Landroid/graphics/drawable/Drawable;)Lo/PendingIntent$Activity;

    move-result-object v2

    invoke-virtual {v0}, Lo/Mode;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 76
    :goto_0
    invoke-virtual {v1, p0}, Lo/PendingIntent$Activity;->d(Landroid/content/DialogInterface$OnKeyListener;)Lo/PendingIntent$Activity;

    .line 79
    invoke-virtual {v1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lo/Paint;->b:Lo/PendingIntent;

    .line 80
    iget-object v0, p0, Lo/Paint;->b:Lo/PendingIntent;

    invoke-virtual {v0, p0}, Lo/PendingIntent;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    iget-object v0, p0, Lo/Paint;->b:Lo/PendingIntent;

    invoke-virtual {v0}, Lo/PendingIntent;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_1

    .line 85
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    iget-object p1, p0, Lo/Paint;->b:Lo/PendingIntent;

    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 169
    iget-object p1, p0, Lo/Paint;->c:Lo/Mode;

    iget-object v0, p0, Lo/Paint;->a:Lo/Bitmap;

    invoke-virtual {v0}, Lo/Bitmap;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/Mode;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Lo/Mode;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 151
    iget-object v0, p0, Lo/Paint;->c:Lo/Mode;

    if-ne p1, v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lo/Paint;->a()V

    .line 154
    :cond_1
    iget-object v0, p0, Lo/Paint;->e:Lo/MediaController$StateListAnimator;

    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0, p1, p2}, Lo/MediaController$StateListAnimator;->onCloseMenu(Lo/Mode;Z)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 146
    iget-object p1, p0, Lo/Paint;->a:Lo/Bitmap;

    iget-object v0, p0, Lo/Paint;->c:Lo/Mode;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo/Bitmap;->onCloseMenu(Lo/Mode;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object p1, p0, Lo/Paint;->b:Lo/PendingIntent;

    invoke-virtual {p1}, Lo/PendingIntent;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 108
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lo/Paint;->b:Lo/PendingIntent;

    invoke-virtual {v0}, Lo/PendingIntent;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object p2, p0, Lo/Paint;->c:Lo/Mode;

    invoke-virtual {p2, v1}, Lo/Mode;->close(Z)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    .line 125
    :cond_2
    iget-object p1, p0, Lo/Paint;->c:Lo/Mode;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lo/Mode;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public onOpenSubMenu(Lo/Mode;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lo/Paint;->e:Lo/MediaController$StateListAnimator;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Lo/MediaController$StateListAnimator;->onOpenSubMenu(Lo/Mode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
