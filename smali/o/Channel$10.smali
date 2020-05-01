.class Lo/Channel$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Channel;->createAnimator(Landroid/view/ViewGroup;Lo/AlgorithmParameters;Lo/AlgorithmParameters;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:I

.field private g:Z

.field final synthetic h:Lo/Channel;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lo/Channel;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 367
    iput-object p1, p0, Lo/Channel$10;->h:Lo/Channel;

    iput-object p2, p0, Lo/Channel$10;->c:Landroid/view/View;

    iput-object p3, p0, Lo/Channel$10;->a:Landroid/graphics/Rect;

    iput p4, p0, Lo/Channel$10;->e:I

    iput p5, p0, Lo/Channel$10;->b:I

    iput p6, p0, Lo/Channel$10;->d:I

    iput p7, p0, Lo/Channel$10;->j:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lo/Channel$10;->g:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 377
    iget-boolean p1, p0, Lo/Channel$10;->g:Z

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lo/Channel$10;->c:Landroid/view/View;

    iget-object v0, p0, Lo/Channel$10;->a:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lo/FilterWriter;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 379
    iget-object p1, p0, Lo/Channel$10;->c:Landroid/view/View;

    iget v0, p0, Lo/Channel$10;->e:I

    iget v1, p0, Lo/Channel$10;->b:I

    iget v2, p0, Lo/Channel$10;->d:I

    iget v3, p0, Lo/Channel$10;->j:I

    invoke-static {p1, v0, v1, v2, v3}, Lo/DSAParams;->b(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
