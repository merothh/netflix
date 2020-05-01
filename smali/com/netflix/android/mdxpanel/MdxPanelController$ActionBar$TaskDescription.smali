.class final Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 475
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->e()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/CancellationSignal$TaskDescription;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const-string v1, "insets"

    .line 476
    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x1

    .line 475
    aput v0, p1, v1

    .line 477
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;I)V

    .line 478
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$TaskDescription;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->e()V

    return-object p2
.end method
