.class final Lo/UQ$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/UQ;


# direct methods
.method constructor <init>(Lo/UQ;)V
    .locals 0

    iput-object p1, p0, Lo/UQ$LoaderManager;->d:Lo/UQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 160
    iget-object p1, p0, Lo/UQ$LoaderManager;->d:Lo/UQ;

    invoke-static {p1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object p1

    new-instance v0, Lo/UP$Uri;

    const-string v1, "insets"

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lo/UP$Uri;-><init>(Landroid/view/WindowInsets;)V

    check-cast v0, Lo/UP;

    invoke-interface {p1, v0}, Lo/UI;->c(Lo/UP;)V

    return-object p2
.end method
