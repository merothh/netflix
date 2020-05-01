.class public Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"


# instance fields
.field public final selectionIndicator:Landroid/view/View;

.field public final tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    .line 632
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    .line 633
    return-void
.end method
