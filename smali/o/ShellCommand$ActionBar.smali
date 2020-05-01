.class public abstract Lo/ShellCommand$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionBar"
.end annotation


# instance fields
.field private a:I

.field private c:Z

.field private final d:Lo/ShellCommand$StateListAnimator;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ShellCommand$ActionBar;->e:Landroid/view/View;

    iput-object p2, p0, Lo/ShellCommand$ActionBar;->d:Lo/ShellCommand$StateListAnimator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 439
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    .line 440
    iput v0, p0, Lo/ShellCommand$ActionBar;->a:I

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lo/ShellCommand$ActionBar;->c:Z

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 396
    iput p1, p0, Lo/ShellCommand$ActionBar;->a:I

    return-void
.end method

.method public b(F)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 422
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->d:Lo/ShellCommand$StateListAnimator;

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 423
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iput p1, p0, Lo/ShellCommand$ActionBar;->a:I

    .line 425
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->d:Lo/ShellCommand$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/ShellCommand$StateListAnimator;->b(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lo/ShellCommand$ActionBar;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lo/ShellCommand$ActionBar;->e:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, -0x1

    .line 428
    iput p1, p0, Lo/ShellCommand$ActionBar;->a:I

    .line 430
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lo/ShellCommand$ActionBar;->c:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lo/ShellCommand$ActionBar;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 396
    iget v0, p0, Lo/ShellCommand$ActionBar;->a:I

    return v0
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 398
    iput-boolean p1, p0, Lo/ShellCommand$ActionBar;->c:Z

    return-void
.end method

.method public final e()Lo/ShellCommand$Application;
    .locals 2

    .line 400
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/ShellCommand$Application;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.android.widgetry.widget.ScaledItemListView.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 394
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->e:Landroid/view/View;

    return-object v0
.end method

.method public final g()Lo/ShellCommand$StateListAnimator;
    .locals 1

    .line 394
    iget-object v0, p0, Lo/ShellCommand$ActionBar;->d:Lo/ShellCommand$StateListAnimator;

    return-object v0
.end method
