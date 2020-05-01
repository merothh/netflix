.class public final Lo/RadioButton$FragmentManager;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RadioButton;->a(Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/RadioButton;


# direct methods
.method constructor <init>(Lo/RadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lo/RadioButton$FragmentManager;->c:Lo/RadioButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lo/RadioButton$FragmentManager;->c:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->d(Lo/RadioButton;)Landroid/widget/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/RadioButton$FragmentManager;->c:Lo/RadioButton;

    invoke-static {v1}, Lo/RadioButton;->a(Lo/RadioButton;)Lo/ImageSwitcher;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lo/RadioButton$FragmentManager;->c:Lo/RadioButton;

    invoke-static {v2}, Lo/RadioButton;->b(Lo/RadioButton;)Landroid/view/View;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lo/RadioButton;->b(Lo/RadioButton;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
