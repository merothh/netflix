.class Lo/tT$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uI$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final d:Lo/ug;

.field final synthetic e:Lo/tT;


# direct methods
.method public constructor <init>(Lo/tT;Lo/ug;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lo/tT$Application;->e:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p2, p0, Lo/tT$Application;->d:Lo/ug;

    return-void
.end method


# virtual methods
.method public a(JLo/uC;)V
    .locals 2

    .line 815
    iget-object p3, p0, Lo/tT$Application;->e:Lo/tT;

    invoke-static {p3}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lo/tT$Application;->d:Lo/ug;

    const/16 v1, 0x100c

    invoke-virtual {p3, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 816
    iget-object p3, p0, Lo/tT$Application;->e:Lo/tT;

    invoke-static {p3}, Lo/tT;->h(Lo/tT;)Lo/tf;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lo/tf;->d(JLo/uI$TaskDescription;)V

    return-void
.end method

.method public b(JLjava/io/IOException;)V
    .locals 0

    .line 821
    iget-object p3, p0, Lo/tT$Application;->e:Lo/tT;

    invoke-static {p3}, Lo/tT;->h(Lo/tT;)Lo/tf;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lo/tf;->d(JLo/uI$TaskDescription;)V

    return-void
.end method
