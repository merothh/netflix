.class public Lo/PendingIntent;
.super Lo/AssistContent;
.source ""

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PendingIntent$Activity;
    }
.end annotation


# instance fields
.field final d:Lo/Dialog;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lo/PendingIntent;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 98
    invoke-static {p1, p2}, Lo/PendingIntent;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lo/AssistContent;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance p1, Lo/Dialog;

    invoke-virtual {p0}, Lo/PendingIntent;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lo/PendingIntent;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lo/Dialog;-><init>(Landroid/content/Context;Lo/AssistContent;Landroid/view/Window;)V

    iput-object p1, p0, Lo/PendingIntent;->d:Lo/Dialog;

    return-void
.end method

.method static c(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    .line 114
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lo/LoaderManager$StateListAnimator;->q:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    .line 226
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lo/Dialog;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(I)Landroid/widget/Button;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1}, Lo/Dialog;->e(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1}, Lo/Dialog;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1}, Lo/Dialog;->c(I)V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1}, Lo/Dialog;->c(Landroid/view/View;)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1}, Lo/Dialog;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lo/AssistContent;->onCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object p1, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {p1}, Lo/Dialog;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1, p2}, Lo/Dialog;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Lo/AssistContent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1, p2}, Lo/Dialog;->d(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 295
    :cond_0
    invoke-super {p0, p1, p2}, Lo/AssistContent;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lo/AssistContent;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v0, p1}, Lo/Dialog;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
