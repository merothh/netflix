.class Lo/InputStream$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InputStream;->b(Landroid/view/View;Lo/InputStreamReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/InputStreamReader;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lo/InputStream;


# direct methods
.method constructor <init>(Lo/InputStream;Lo/InputStreamReader;Landroid/view/View;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lo/InputStream$2;->e:Lo/InputStream;

    iput-object p2, p0, Lo/InputStream$2;->c:Lo/InputStreamReader;

    iput-object p3, p0, Lo/InputStream$2;->d:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 742
    iget-object p1, p0, Lo/InputStream$2;->c:Lo/InputStreamReader;

    iget-object v0, p0, Lo/InputStream$2;->d:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/InputStreamReader;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 747
    iget-object p1, p0, Lo/InputStream$2;->c:Lo/InputStreamReader;

    iget-object v0, p0, Lo/InputStream$2;->d:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/InputStreamReader;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 752
    iget-object p1, p0, Lo/InputStream$2;->c:Lo/InputStreamReader;

    iget-object v0, p0, Lo/InputStream$2;->d:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/InputStreamReader;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
