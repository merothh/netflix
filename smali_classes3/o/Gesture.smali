.class public Lo/Gesture;
.super Lo/GestureConstants;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GestureConstants<",
        "Lo/SqliteWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lo/GestureConstants;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lo/Gesture;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/GestureConstants;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0, p1, p2}, Lo/Gesture;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lo/GestureConstants;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lo/Gesture;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericDraweeView#inflateHierarchy"

    .line 56
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-static {p1, p2}, Lo/SQLiteTableLockedException;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/SQLiteStatementInfo;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->d()F

    move-result p2

    invoke-virtual {p0, p2}, Lo/Gesture;->setAspectRatio(F)V

    .line 61
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->q()Lo/SqliteWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Gesture;->setHierarchy(Lo/DdmHandleHeap;)V

    .line 62
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void
.end method
