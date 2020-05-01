.class public Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 610
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$3;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$3;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->b:Ljava/util/Comparator;

    .line 631
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$4;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$4;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->e:Ljava/util/Comparator;

    .line 652
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$5;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar$5;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->a:Landroid/view/View;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 567
    check-cast p1, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->d(Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;)I
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 596
    invoke-virtual {p1}, Lcom/netflix/mediaclient/util/ViewUtils$ActionBar;->b()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 598
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 600
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
