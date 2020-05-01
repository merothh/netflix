.class final Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;)I
    .locals 3

    .line 657
    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->b()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 658
    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->b()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object p2

    .line 660
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 662
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 652
    check-cast p1, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;

    check-cast p2, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$5;->b(Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;)I

    move-result p1

    return p1
.end method
