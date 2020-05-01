.class Lo/nC$Activity;
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
    name = "Activity"
.end annotation


# instance fields
.field final synthetic c:Lo/nC;


# direct methods
.method private constructor <init>(Lo/nC;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lo/nC$Activity;->c:Lo/nC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/nC;Lo/nC$3;)V
    .locals 0

    .line 468
    invoke-direct {p0, p1}, Lo/nC$Activity;-><init>(Lo/nC;)V

    return-void
.end method


# virtual methods
.method public c(Lo/D;)V
    .locals 2

    .line 471
    iget-object v0, p0, Lo/nC$Activity;->c:Lo/nC;

    invoke-static {v0}, Lo/nC;->d(Lo/nC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1007

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
