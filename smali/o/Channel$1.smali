.class Lo/Channel$1;
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
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lo/Channel;

.field final synthetic c:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic d:F

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/Channel;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 445
    iput-object p1, p0, Lo/Channel$1;->b:Lo/Channel;

    iput-object p2, p0, Lo/Channel$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/Channel$1;->c:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lo/Channel$1;->e:Landroid/view/View;

    iput p5, p0, Lo/Channel$1;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lo/Channel$1;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/DSAParams;->a(Landroid/view/View;)Lo/AlgorithmParameterSpec;

    move-result-object p1

    iget-object v0, p0, Lo/Channel$1;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lo/AlgorithmParameterSpec;->b(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object p1, p0, Lo/Channel$1;->e:Landroid/view/View;

    iget v0, p0, Lo/Channel$1;->d:F

    invoke-static {p1, v0}, Lo/DSAParams;->a(Landroid/view/View;F)V

    return-void
.end method
