.class Lo/Mi$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Mi;->b(Landroid/view/KeyEvent;Lo/Am;Lo/Mq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Mq;

.field final synthetic c:Lo/Mi;


# direct methods
.method constructor <init>(Lo/Mi;Lo/Mq;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/Mi$4;->c:Lo/Mi;

    iput-object p2, p0, Lo/Mi$4;->b:Lo/Mq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lo/Mi$4;->c:Lo/Mi;

    invoke-static {v0}, Lo/Mi;->e(Lo/Mi;)Lo/Mi$Activity;

    move-result-object v0

    invoke-interface {v0}, Lo/Mi$Activity;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 68
    iget-object v1, p0, Lo/Mi$4;->b:Lo/Mq;

    invoke-virtual {v1, v0}, Lo/Mq;->a(I)V

    .line 69
    iget-object v0, p0, Lo/Mi$4;->c:Lo/Mi;

    invoke-static {v0}, Lo/Mi;->e(Lo/Mi;)Lo/Mi$Activity;

    move-result-object v0

    iget-object v1, p0, Lo/Mi$4;->b:Lo/Mq;

    invoke-virtual {v1}, Lo/Mq;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lo/Mi$Activity;->e(I)V

    return-void
.end method
