.class public final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->p()Lo/Cloneable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cloneable;->b(Ljava/lang/Object;)V

    return-void
.end method
