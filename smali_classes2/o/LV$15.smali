.class Lo/LV$15;
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
.field final synthetic c:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lo/LV$15;->c:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MdxMiniPlayerViews"

    const-string v0, "resume pressed"

    .line 983
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object p1, p0, Lo/LV$15;->c:Lo/LV;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/LV;->d(Z)V

    .line 985
    iget-object p1, p0, Lo/LV$15;->c:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->h()V

    return-void
.end method
