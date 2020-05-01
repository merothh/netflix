.class public final Lo/BatteryStatsInternal;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final e(Landroid/view/Window;)V
    .locals 1

    const-string v0, "$this$setImmersiveWindowMode"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "decorView"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1006

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
