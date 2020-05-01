.class Lo/LV$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lo/LV$10;->b:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1082
    iget-object v0, p0, Lo/LV$10;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->f(Lo/LV;)Lo/RadialTimePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lo/RadialTimePickerView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lo/LV$10;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->f(Lo/LV;)Lo/RadialTimePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lo/RadialTimePickerView;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1088
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting thumb offset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MdxMiniPlayerViews"

    invoke-static {v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lo/LV$10;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->f(Lo/LV;)Lo/RadialTimePickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/RadialTimePickerView;->setThumbOffset(I)V

    .line 1092
    iget-object v0, p0, Lo/LV$10;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->f(Lo/LV;)Lo/RadialTimePickerView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
