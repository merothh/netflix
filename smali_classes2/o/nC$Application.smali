.class Lo/nC$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/P;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final a:Lo/nA;

.field final synthetic b:Lo/nC;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/nC;Ljava/lang/String;Lo/nA;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lo/nC$Application;->b:Lo/nC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lo/nC$Application;->e:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Lo/nC$Application;->a:Lo/nA;

    return-void
.end method


# virtual methods
.method public c(Lo/D;)V
    .locals 4

    .line 464
    iget-object v0, p0, Lo/nC$Application;->b:Lo/nC;

    invoke-static {v0}, Lo/nC;->d(Lo/nC;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/nC$ActionBar;

    iget-object v2, p0, Lo/nC$Application;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/nC$Application;->a:Lo/nA;

    invoke-direct {v1, v2, v3, p1}, Lo/nC$ActionBar;-><init>(Ljava/lang/String;Lo/nA;Lo/D;)V

    const/16 p1, 0x1003

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
