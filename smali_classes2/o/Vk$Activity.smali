.class public final Lo/Vk$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/XK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic d:Lo/Vk;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field final synthetic i:F


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V
    .locals 0

    iput-object p1, p0, Lo/Vk$Activity;->b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    iput-object p2, p0, Lo/Vk$Activity;->c:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p3, p0, Lo/Vk$Activity;->d:Lo/Vk;

    iput p4, p0, Lo/Vk$Activity;->a:I

    iput-object p5, p0, Lo/Vk$Activity;->e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    iput p6, p0, Lo/Vk$Activity;->i:F

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Lo/GridView;)V
    .locals 5

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lo/Vk$Activity;->b:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->choiceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 595
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lo/Vk$Activity;->i:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 596
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lo/Vk$Activity;->i:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 598
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->y()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lo/Vk$Activity;->i:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 600
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->x()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lo/Vk$Activity;->i:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 601
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1}, Lo/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 594
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
