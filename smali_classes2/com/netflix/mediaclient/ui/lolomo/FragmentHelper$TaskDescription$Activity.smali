.class public final Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->e(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field private c:Z

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;->a:Landroid/view/View;

    iput p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;->d:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 575
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;->c:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;->c:Z

    if-nez p1, :cond_0

    .line 580
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;->a:Landroid/view/View;

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
