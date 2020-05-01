.class Lo/ApplicationLoaders$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ApplicationLoaders;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ApplicationLoaders;


# direct methods
.method constructor <init>(Lo/ApplicationLoaders;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lo/ApplicationLoaders$1;->b:Lo/ApplicationLoaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 50
    iget-object v0, p0, Lo/ApplicationLoaders$1;->b:Lo/ApplicationLoaders;

    invoke-static {v0}, Lo/ApplicationLoaders;->e(Lo/ApplicationLoaders;)Lo/BackStackRecord;

    move-result-object v0

    sget v1, Lo/AppOpsManager$StateListAnimator;->C:I

    sget v2, Lo/AppOpsManager$StateListAnimator;->B:I

    invoke-virtual {v0, v1, v2}, Lo/BackStackRecord;->c(II)V

    .line 51
    iget-object v0, p0, Lo/ApplicationLoaders$1;->b:Lo/ApplicationLoaders;

    invoke-virtual {v0}, Lo/ApplicationLoaders;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
