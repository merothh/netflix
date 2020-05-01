.class final Lo/DeviceIdleManager$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DeviceIdleManager;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/DeviceIdleManager;


# direct methods
.method constructor <init>(Lo/DeviceIdleManager;)V
    .locals 0

    iput-object p1, p0, Lo/DeviceIdleManager$4;->b:Lo/DeviceIdleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lo/DeviceIdleManager$4;->b:Lo/DeviceIdleManager;

    invoke-virtual {p1}, Lo/DeviceIdleManager;->j()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lo/DeviceIdleManager$4;->b:Lo/DeviceIdleManager;

    sget-object v0, Lo/CommonClock$Dialog;->d:Lo/CommonClock$Dialog;

    invoke-virtual {p1, v0}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lo/DeviceIdleManager$4;->b:Lo/DeviceIdleManager;

    sget-object v0, Lo/CommonClock$FragmentManager;->d:Lo/CommonClock$FragmentManager;

    invoke-virtual {p1, v0}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
