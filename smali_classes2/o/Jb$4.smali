.class Lo/Jb$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Jb;


# direct methods
.method constructor <init>(Lo/Jb;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/Jb$4;->c:Lo/Jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lo/Jb$4;->c:Lo/Jb;

    invoke-static {p1}, Lo/Jb;->b(Lo/Jb;)Lo/AS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lo/Jb$4;->c:Lo/Jb;

    invoke-static {p1}, Lo/Jb;->b(Lo/Jb;)Lo/AS;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Jb;->b(Lo/Jb;Lo/AS;)V

    .line 46
    iget-object p1, p0, Lo/Jb$4;->c:Lo/Jb;

    invoke-static {p1}, Lo/Jb;->e(Lo/Jb;)Lo/alA;

    move-result-object p1

    iget-object v0, p0, Lo/Jb$4;->c:Lo/Jb;

    invoke-static {v0}, Lo/Jb;->b(Lo/Jb;)Lo/AS;

    move-result-object v0

    invoke-interface {v0}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
