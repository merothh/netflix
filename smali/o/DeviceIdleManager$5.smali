.class final Lo/DeviceIdleManager$5;
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
.field final synthetic e:Lo/DeviceIdleManager;


# direct methods
.method constructor <init>(Lo/DeviceIdleManager;)V
    .locals 0

    iput-object p1, p0, Lo/DeviceIdleManager$5;->e:Lo/DeviceIdleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lo/DeviceIdleManager$5;->e:Lo/DeviceIdleManager;

    sget-object v0, Lo/CommonClock$ComponentName;->b:Lo/CommonClock$ComponentName;

    invoke-virtual {p1, v0}, Lo/DeviceIdleManager;->e(Ljava/lang/Object;)V

    return-void
.end method
