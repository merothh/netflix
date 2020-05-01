.class abstract Lo/PKCS8EncodedKeySpec$Activity;
.super Lo/PKCS8EncodedKeySpec$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PKCS8EncodedKeySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Activity"
.end annotation


# instance fields
.field k:Ljava/lang/String;

.field protected m:[Lo/AccessibilityEvent$Application;

.field n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1679
    invoke-direct {p0, v0}, Lo/PKCS8EncodedKeySpec$StateListAnimator;-><init>(Lo/PKCS8EncodedKeySpec$5;)V

    .line 1675
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    return-void
.end method

.method public constructor <init>(Lo/PKCS8EncodedKeySpec$Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1705
    invoke-direct {p0, v0}, Lo/PKCS8EncodedKeySpec$StateListAnimator;-><init>(Lo/PKCS8EncodedKeySpec$5;)V

    .line 1675
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    .line 1706
    iget-object v0, p1, Lo/PKCS8EncodedKeySpec$Activity;->k:Ljava/lang/String;

    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->k:Ljava/lang/String;

    .line 1707
    iget v0, p1, Lo/PKCS8EncodedKeySpec$Activity;->n:I

    iput v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->n:I

    .line 1708
    iget-object p1, p1, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    invoke-static {p1}, Lo/AccessibilityEvent;->c([Lo/AccessibilityEvent$Application;)[Lo/AccessibilityEvent$Application;

    move-result-object p1

    iput-object p1, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/graphics/Path;)V
    .locals 1

    .line 1712
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1713
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    if-eqz v0, :cond_0

    .line 1714
    invoke-static {v0, p1}, Lo/AccessibilityEvent$Application;->a([Lo/AccessibilityEvent$Application;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getPathData()[Lo/AccessibilityEvent$Application;
    .locals 1

    .line 1736
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1719
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->k:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lo/AccessibilityEvent$Application;)V
    .locals 1

    .line 1741
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    invoke-static {v0, p1}, Lo/AccessibilityEvent;->b([Lo/AccessibilityEvent$Application;[Lo/AccessibilityEvent$Application;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    invoke-static {p1}, Lo/AccessibilityEvent;->c([Lo/AccessibilityEvent$Application;)[Lo/AccessibilityEvent$Application;

    move-result-object p1

    iput-object p1, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v0, p0, Lo/PKCS8EncodedKeySpec$Activity;->m:[Lo/AccessibilityEvent$Application;

    invoke-static {v0, p1}, Lo/AccessibilityEvent;->a([Lo/AccessibilityEvent$Application;[Lo/AccessibilityEvent$Application;)V

    :goto_0
    return-void
.end method
