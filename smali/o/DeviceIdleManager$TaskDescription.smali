.class public final Lo/DeviceIdleManager$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RadioButton$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DeviceIdleManager;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/DeviceIdleManager;


# direct methods
.method constructor <init>(Lo/DeviceIdleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lo/DeviceIdleManager$TaskDescription;->e:Lo/DeviceIdleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/RadioButton;II)V
    .locals 0

    const-string p2, "seekButton"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lo/DeviceIdleManager$TaskDescription;->e:Lo/DeviceIdleManager;

    new-instance p2, Lo/CommonClock$ClipData;

    invoke-direct {p2, p3}, Lo/CommonClock$ClipData;-><init>(I)V

    invoke-virtual {p1, p2}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lo/RadioButton;II)V
    .locals 1

    const-string v0, "seekButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lo/DeviceIdleManager$TaskDescription;->e:Lo/DeviceIdleManager;

    invoke-virtual {v0}, Lo/DeviceIdleManager;->t()Lo/alB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    .line 106
    :cond_0
    invoke-virtual {p1}, Lo/RadioButton;->b()I

    move-result p1

    mul-int p1, p1, p2

    .line 108
    iget-object p2, p0, Lo/DeviceIdleManager$TaskDescription;->e:Lo/DeviceIdleManager;

    invoke-static {p2}, Lo/DeviceIdleManager;->a(Lo/DeviceIdleManager;)Lo/Filterable;

    move-result-object p2

    invoke-virtual {p2}, Lo/Filterable;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lo/Filterable;->setProgress(I)V

    .line 110
    iget-object p2, p0, Lo/DeviceIdleManager$TaskDescription;->e:Lo/DeviceIdleManager;

    new-instance v0, Lo/CommonClock$SharedElementCallback;

    invoke-direct {v0, p3, p1}, Lo/CommonClock$SharedElementCallback;-><init>(II)V

    invoke-virtual {p2, v0}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    return-void
.end method
