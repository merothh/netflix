.class Lo/abu$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lo/abu$10;->a:Lo/abu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 464
    iget-object p1, p0, Lo/abu$10;->a:Lo/abu;

    invoke-static {p1}, Lo/abu;->a(Lo/abu;)V

    const/4 p1, 0x1

    return p1
.end method
