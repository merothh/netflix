.class public final Lo/aac$Activity;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation


# instance fields
.field public a:Lo/GridView;

.field public b:Landroid/view/View;

.field final synthetic c:Lo/aac;

.field private e:Lo/ECPrivateKeySpec;


# direct methods
.method public constructor <init>(Lo/aac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lo/aac$Activity;->c:Lo/aac;

    invoke-direct {p0}, Lo/FU;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lo/GridView;
    .locals 2

    .line 90
    iget-object v0, p0, Lo/aac$Activity;->a:Lo/GridView;

    if-nez v0, :cond_0

    const-string v1, "imageView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 6

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lo/aac$Activity;->b:Landroid/view/View;

    .line 96
    sget v0, Lo/Zt$Application;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.movie_boxart)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lo/aac$Activity;->a:Lo/GridView;

    .line 98
    sget-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v0}, Lo/fl$ActionBar;->d()Z

    move-result v0

    const-string v1, "QuerySearch"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aac$Activity;->c:Lo/aac;

    invoke-virtual {v0}, Lo/aac;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 104
    :goto_0
    sget-object v2, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v2}, Lo/fl$ActionBar;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/aac$Activity;->c:Lo/aac;

    invoke-virtual {v2}, Lo/aac;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x400999999999999aL    # 3.2

    goto :goto_1

    :cond_1
    const-wide v1, 0x4004cccccccccccdL    # 2.6

    .line 109
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "itemView.context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "itemView.context.resources"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lo/Zt$Activity;->b:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int v0, v0, p1

    sub-int/2addr v3, v0

    int-to-float p1, v3

    float-to-double v3, p1

    div-double/2addr v3, v1

    double-to-int p1, v3

    int-to-float v0, p1

    const v1, 0x3fb70a3d    # 1.43f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 118
    iget-object v1, p0, Lo/aac$Activity;->a:Lo/GridView;

    const-string v2, "imageView"

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 119
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lo/Zt$TaskDescription;->b:I

    goto :goto_2

    .line 120
    :cond_3
    sget v3, Lo/Zt$TaskDescription;->d:I

    .line 117
    :goto_2
    invoke-static {v1, v3}, Lo/ECPrivateKeySpec;->b(Landroid/content/Context;I)Lo/ECPrivateKeySpec;

    move-result-object v1

    iput-object v1, p0, Lo/aac$Activity;->e:Lo/ECPrivateKeySpec;

    .line 122
    iget-object v1, p0, Lo/aac$Activity;->a:Lo/GridView;

    if-nez v1, :cond_4

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 123
    :cond_4
    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    invoke-virtual {v1}, Lo/GridView;->requestLayout()V

    return-void
.end method

.method public final d()Lo/ECPrivateKeySpec;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/aac$Activity;->e:Lo/ECPrivateKeySpec;

    return-object v0
.end method
