.class public Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
        ">;"
    }
.end annotation


# static fields
.field public static final REVERSE_SORT_BY_TOP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_BY_BOTTOM:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_BY_TOP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->REVERSE_SORT_BY_TOP:Ljava/util/Comparator;

    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->SORT_BY_TOP:Ljava/util/Comparator;

    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$3;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator$3;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->SORT_BY_BOTTOM:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;)I
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getRect(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->compareTo(Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/util/ViewUtils$ViewComparator;->mView:Landroid/view/View;

    return-object v0
.end method
