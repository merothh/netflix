.class public final Lo/Vj$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/XK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vj;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ImageSwitcher;

.field final synthetic b:F

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic d:Lo/GridView;

.field final synthetic e:Lo/Vj;


# direct methods
.method constructor <init>(Lo/Vj;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/ImageSwitcher;Lo/GridView;F)V
    .locals 0

    iput-object p1, p0, Lo/Vj$ActionBar;->e:Lo/Vj;

    iput-object p2, p0, Lo/Vj$ActionBar;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p3, p0, Lo/Vj$ActionBar;->a:Lo/ImageSwitcher;

    iput-object p4, p0, Lo/Vj$ActionBar;->d:Lo/GridView;

    iput p5, p0, Lo/Vj$ActionBar;->b:F

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lo/Vj$ActionBar;->a:Lo/ImageSwitcher;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Lo/GridView;)V
    .locals 4

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lo/Vj$ActionBar;->a:Lo/ImageSwitcher;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 96
    :cond_0
    invoke-virtual {p1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    iget-object v1, p0, Lo/Vj$ActionBar;->e:Lo/Vj;

    invoke-virtual {v1}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lo/Vj$ActionBar;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->assetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Image;->width()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    .line 99
    iget v3, p0, Lo/Vj$ActionBar;->b:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 101
    iget-object v1, p0, Lo/Vj$ActionBar;->e:Lo/Vj;

    invoke-virtual {v1}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lo/Vj$ActionBar;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Choice;->assetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Image;->height()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    int-to-float v1, v2

    .line 102
    iget v2, p0, Lo/Vj$ActionBar;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 103
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Lo/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 96
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
