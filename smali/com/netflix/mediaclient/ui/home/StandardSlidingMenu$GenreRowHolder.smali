.class public Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"


# instance fields
.field public final selectionIndicator:Landroid/view/View;

.field public final tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->tv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenreRowHolder;->selectionIndicator:Landroid/view/View;

    return-void
.end method
