.class final Lo/FilterWriter$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FilterWriter;->c(Landroid/view/View;Lo/FilenameFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/FilenameFilter;


# direct methods
.method constructor <init>(Lo/FilenameFilter;)V
    .locals 0

    .line 2427
    iput-object p1, p0, Lo/FilterWriter$4;->a:Lo/FilenameFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 2430
    invoke-static {p2}, Lo/NotActiveException;->c(Ljava/lang/Object;)Lo/NotActiveException;

    move-result-object p2

    .line 2431
    iget-object v0, p0, Lo/FilterWriter$4;->a:Lo/FilenameFilter;

    invoke-interface {v0, p1, p2}, Lo/FilenameFilter;->onApplyWindowInsets(Landroid/view/View;Lo/NotActiveException;)Lo/NotActiveException;

    move-result-object p1

    .line 2432
    invoke-static {p1}, Lo/NotActiveException;->c(Lo/NotActiveException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method