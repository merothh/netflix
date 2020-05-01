.class Lo/LV$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 930
    iput-object p1, p0, Lo/LV$7;->b:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MdxMiniPlayerViews"

    const-string v0, "Dummy click listener"

    .line 933
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object p1, p0, Lo/LV$7;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->f(Lo/LV;)Lo/RadialTimePickerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 937
    iget-object p1, p0, Lo/LV$7;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->f(Lo/LV;)Lo/RadialTimePickerView;

    move-result-object p1

    invoke-virtual {p1}, Lo/RadialTimePickerView;->invalidate()V

    :cond_0
    return-void
.end method
