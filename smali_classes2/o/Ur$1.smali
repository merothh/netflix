.class Lo/Ur$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ur;->aj_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Ur;


# direct methods
.method constructor <init>(Lo/Ur;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/Ur$1;->d:Lo/Ur;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lo/Ur$1;->d:Lo/Ur;

    invoke-virtual {p1}, Lo/Ur;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    iget-object p1, p0, Lo/Ur$1;->d:Lo/Ur;

    invoke-virtual {p1}, Lo/Ur;->e()V

    :cond_0
    return-void
.end method
