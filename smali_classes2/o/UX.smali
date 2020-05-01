.class public final Lo/UX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final b:Lo/Ve;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Ve;)V
    .locals 1

    const-string v0, "scene"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UX;->b:Lo/Ve;

    .line 11
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/UX;->c:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lo/UX;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPreDraw()Z
    .locals 8

    .line 18
    iget-object v0, p0, Lo/UX;->b:Lo/Ve;

    invoke-virtual {v0}, Lo/Ve;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 21
    iget-object v0, p0, Lo/UX;->c:Ljava/util/LinkedList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 23
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    cmpg-float v7, v7, v4

    if-eqz v7, :cond_2

    .line 26
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 27
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    move v4, v2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 32
    iget-object v0, p0, Lo/UX;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-array v3, v6, [I

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_4

    float-to-int v7, v4

    .line 35
    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 33
    :cond_4
    invoke-static {v2, v3, v1}, Lo/PipedInputStream;->d(Landroid/widget/TextView;[II)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method
