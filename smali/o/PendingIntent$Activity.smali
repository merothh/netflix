.class public Lo/PendingIntent$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private final a:Lo/Dialog$TaskDescription;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-static {p1, v0}, Lo/PendingIntent;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lo/Dialog$TaskDescription;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 344
    invoke-static {p1, p2}, Lo/PendingIntent;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lo/Dialog$TaskDescription;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    .line 345
    iput p2, p0, Lo/PendingIntent$Activity;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lo/PendingIntent$Activity;
    .locals 2

    .line 367
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/Dialog$TaskDescription;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lo/PendingIntent$Activity;
    .locals 1

    .line 445
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 659
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->u:Landroid/widget/ListAdapter;

    .line 660
    iput-object p2, v0, Lo/Dialog$TaskDescription;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 486
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->f:Ljava/lang/CharSequence;

    .line 487
    iput-object p2, v0, Lo/Dialog$TaskDescription;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lo/PendingIntent$Activity;
    .locals 1

    .line 579
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-boolean p1, v0, Lo/Dialog$TaskDescription;->r:Z

    return-object p0
.end method

.method public a()Lo/PendingIntent;
    .locals 3

    .line 981
    new-instance v0, Lo/PendingIntent;

    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v1, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    iget v2, p0, Lo/PendingIntent$Activity;->d:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent;-><init>(Landroid/content/Context;I)V

    .line 982
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v2, v0, Lo/PendingIntent;->d:Lo/Dialog;

    invoke-virtual {v1, v2}, Lo/Dialog$TaskDescription;->c(Lo/Dialog;)V

    .line 983
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-boolean v1, v1, Lo/Dialog$TaskDescription;->r:Z

    invoke-virtual {v0, v1}, Lo/PendingIntent;->setCancelable(Z)V

    .line 984
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-boolean v1, v1, Lo/Dialog$TaskDescription;->r:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 985
    invoke-virtual {v0, v1}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    .line 987
    :cond_0
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v1, Lo/Dialog$TaskDescription;->s:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lo/PendingIntent;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 988
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v1, Lo/Dialog$TaskDescription;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lo/PendingIntent;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 989
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v1, Lo/Dialog$TaskDescription;->v:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 990
    iget-object v1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v1, Lo/Dialog$TaskDescription;->v:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lo/PendingIntent;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 358
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v0, v0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 2

    .line 509
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/Dialog$TaskDescription;->m:Ljava/lang/CharSequence;

    .line 510
    iget-object p1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p2, p1, Lo/Dialog$TaskDescription;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(I)Lo/PendingIntent$Activity;
    .locals 2

    .line 408
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/Dialog$TaskDescription;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 2

    .line 545
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/Dialog$TaskDescription;->k:Ljava/lang/CharSequence;

    .line 546
    iget-object p1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p2, p1, Lo/Dialog$TaskDescription;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Landroid/content/DialogInterface$OnDismissListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 610
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->t:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;
    .locals 1

    .line 418
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 522
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->m:Ljava/lang/CharSequence;

    .line 523
    iput-object p2, v0, Lo/Dialog$TaskDescription;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 831
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->x:[Ljava/lang/CharSequence;

    .line 832
    iput-object p3, v0, Lo/Dialog$TaskDescription;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 833
    iput p2, v0, Lo/Dialog$TaskDescription;->H:I

    const/4 p1, 0x1

    .line 834
    iput-boolean p1, v0, Lo/Dialog$TaskDescription;->G:Z

    return-object p0
.end method

.method public c([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 730
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->x:[Ljava/lang/CharSequence;

    .line 731
    iput-object p3, v0, Lo/Dialog$TaskDescription;->N:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 732
    iput-object p2, v0, Lo/Dialog$TaskDescription;->F:[Z

    const/4 p1, 0x1

    .line 733
    iput-boolean p1, v0, Lo/Dialog$TaskDescription;->E:Z

    return-object p0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;
    .locals 2

    .line 473
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iget-object v1, v0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lo/Dialog$TaskDescription;->f:Ljava/lang/CharSequence;

    .line 474
    iget-object p1, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p2, p1, Lo/Dialog$TaskDescription;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d(Landroid/content/DialogInterface$OnCancelListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 600
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->s:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public d(Landroid/content/DialogInterface$OnKeyListener;)Lo/PendingIntent$Activity;
    .locals 1

    .line 620
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->v:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public d(Landroid/view/View;)Lo/PendingIntent$Activity;
    .locals 1

    .line 902
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->B:Landroid/view/View;

    const/4 p1, 0x0

    .line 903
    iput p1, v0, Lo/Dialog$TaskDescription;->y:I

    .line 904
    iput-boolean p1, v0, Lo/Dialog$TaskDescription;->I:Z

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;
    .locals 1

    .line 377
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Landroid/view/View;)Lo/PendingIntent$Activity;
    .locals 1

    .line 398
    iget-object v0, p0, Lo/PendingIntent$Activity;->a:Lo/Dialog$TaskDescription;

    iput-object p1, v0, Lo/Dialog$TaskDescription;->g:Landroid/view/View;

    return-object p0
.end method

.method public e()Lo/PendingIntent;
    .locals 1

    .line 1006
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Lo/PendingIntent;->show()V

    return-object v0
.end method
