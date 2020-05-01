.class public Lo/LineNumberInputStream$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LineNumberInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p1, p0, Lo/LineNumberInputStream$TaskDescription;->e:Ljava/lang/Object;

    return-void
.end method

.method public static b(IIZI)Lo/LineNumberInputStream$TaskDescription;
    .locals 2

    .line 671
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 672
    new-instance v0, Lo/LineNumberInputStream$TaskDescription;

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/LineNumberInputStream$TaskDescription;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 674
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_1

    .line 675
    new-instance p3, Lo/LineNumberInputStream$TaskDescription;

    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {p3, p0}, Lo/LineNumberInputStream$TaskDescription;-><init>(Ljava/lang/Object;)V

    return-object p3

    .line 678
    :cond_1
    new-instance p0, Lo/LineNumberInputStream$TaskDescription;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/LineNumberInputStream$TaskDescription;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
