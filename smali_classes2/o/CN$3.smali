.class Lo/CN$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CN;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/CN;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/CN;Landroid/view/View;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/CN$3;->d:Lo/CN;

    iput-object p2, p0, Lo/CN$3;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lo/CN$3;->d:Lo/CN;

    iget-object v1, p0, Lo/CN$3;->e:Landroid/view/View;

    invoke-static {v0, v1}, Lo/CN;->a(Lo/CN;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
