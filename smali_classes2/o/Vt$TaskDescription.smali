.class final Lo/Vt$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vt;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Vt;


# direct methods
.method constructor <init>(Lo/Vt;)V
    .locals 0

    iput-object p1, p0, Lo/Vt$TaskDescription;->d:Lo/Vt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lo/Vt$TaskDescription;->d:Lo/Vt;

    invoke-virtual {v0}, Lo/Vt;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 31
    iget-object v0, p0, Lo/Vt$TaskDescription;->d:Lo/Vt;

    invoke-virtual {v0}, Lo/Vt;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lo/Vt$TaskDescription;->d:Lo/Vt;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/Vt;->d(Lo/Vt;Ljava/lang/Runnable;)V

    return-void
.end method
