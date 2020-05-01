.class Lo/TA$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TA;->a(Landroid/view/View;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic d:Lo/TA;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/TA;ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/TA$1;->d:Lo/TA;

    iput-boolean p2, p0, Lo/TA$1;->a:Z

    iput-object p3, p0, Lo/TA$1;->e:Landroid/view/View;

    iput-object p4, p0, Lo/TA$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    iget-boolean p1, p0, Lo/TA$1;->a:Z

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lo/TA$1;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lo/TA$1;->e:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 128
    :cond_0
    iget-object p1, p0, Lo/TA$1;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
