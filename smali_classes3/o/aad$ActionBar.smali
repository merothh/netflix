.class public final Lo/aad$ActionBar;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field public b:Lo/GridView;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lo/GridView;
    .locals 2

    .line 52
    iget-object v0, p0, Lo/aad$ActionBar;->b:Lo/GridView;

    if-nez v0, :cond_0

    const-string v1, "imageView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 5

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lo/aad$ActionBar;->e:Landroid/view/View;

    .line 57
    sget v0, Lo/Zt$Application;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.movie_boxart)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lo/aad$ActionBar;->b:Lo/GridView;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "itemView.context.resources"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lo/Zt$Activity;->b:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    sub-int/2addr v0, p1

    .line 61
    div-int/lit8 v0, v0, 0x3

    int-to-double v1, v0

    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e()D

    move-result-wide v3

    mul-double v1, v1, v3

    const/high16 p1, 0x3f000000    # 0.5f

    float-to-double v3, p1

    add-double/2addr v1, v3

    double-to-int p1, v1

    .line 64
    iget-object v1, p0, Lo/aad$ActionBar;->b:Lo/GridView;

    if-nez v1, :cond_0

    const-string v2, "imageView"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {v1}, Lo/GridView;->requestLayout()V

    return-void
.end method
