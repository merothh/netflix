.class public final Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->c(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)Landroid/graphics/Rect;

    move-result-object p1

    .line 464
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getMeasuredWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 465
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object v1, v1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$StateListAnimator;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-static {v1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 462
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    return-void
.end method
