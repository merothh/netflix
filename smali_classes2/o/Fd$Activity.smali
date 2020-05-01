.class public final Lo/Fd$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SimpleClock$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fd;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Fd;


# direct methods
.method constructor <init>(Lo/Fd;)V
    .locals 0

    iput-object p1, p0, Lo/Fd$Activity;->c:Lo/Fd;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/SystemVibrator;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lo/SystemVibrator;Z)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(F)V
    .locals 2

    .line 195
    iget-object v0, p0, Lo/Fd$Activity;->c:Lo/Fd;

    invoke-virtual {v0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public d(Lo/SystemVibrator;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lo/Fd$Activity;->c:Lo/Fd;

    new-instance v0, Lo/DG$Fragment;

    invoke-direct {v0, p2}, Lo/DG$Fragment;-><init>(I)V

    invoke-virtual {p1, v0}, Lo/Fd;->e(Ljava/lang/Object;)V

    return-void
.end method
