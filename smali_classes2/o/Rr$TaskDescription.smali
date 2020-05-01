.class final Lo/Rr$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rr;->d(Landroid/view/Menu;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Rr;

.field final synthetic c:Landroid/view/Menu;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/Rr;ZLandroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lo/Rr$TaskDescription;->a:Lo/Rr;

    iput-boolean p2, p0, Lo/Rr$TaskDescription;->d:Z

    iput-object p3, p0, Lo/Rr$TaskDescription;->c:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 437
    iget-object p1, p0, Lo/Rr$TaskDescription;->a:Lo/Rr;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Rr;->a(Z)V

    return v0
.end method
