.class public final Lo/SharedMemory$Application;
.super Landroid/view/ViewGroup$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 449
    iget v0, p0, Lo/SharedMemory$Application;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 449
    iput p1, p0, Lo/SharedMemory$Application;->c:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 447
    iput p1, p0, Lo/SharedMemory$Application;->b:I

    return-void
.end method

.method public final e()I
    .locals 1

    .line 447
    iget v0, p0, Lo/SharedMemory$Application;->b:I

    return v0
.end method