.class public final Lo/KG$Activity;
.super Lo/KL$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pulseAnimator"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lo/KL$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;Lo/PooledStringReader;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 79
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->n:I

    .line 77
    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lo/KG$Activity;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-void
.end method


# virtual methods
.method public S_()Landroid/graphics/Rect;
    .locals 4

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lo/KG$Activity;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lo/KG$Activity;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
