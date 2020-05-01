.class Lo/TA$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TA;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic c:Lo/TA;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/TA;Landroid/view/View;Z)V
    .locals 0

    .line 169
    iput-object p1, p0, Lo/TA$5;->c:Lo/TA;

    iput-object p2, p0, Lo/TA$5;->e:Landroid/view/View;

    iput-boolean p3, p0, Lo/TA$5;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lo/TA$5;->e:Landroid/view/View;

    iget-boolean v0, p0, Lo/TA$5;->a:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
