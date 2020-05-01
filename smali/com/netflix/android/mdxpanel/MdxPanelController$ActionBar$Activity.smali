.class final Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iput-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    sub-int/2addr p9, p7

    sub-int/2addr p8, p6

    if-ne p5, p9, :cond_0

    if-eq p4, p8, :cond_1

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;->c:Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    iget-object p1, p1, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->d:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/MenuInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar$Activity;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lo/MenuInflater;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
