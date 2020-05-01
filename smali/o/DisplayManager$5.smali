.class Lo/DisplayManager$5;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DisplayManager;->c(Ljava/util/concurrent/atomic/AtomicBoolean;Lo/HdmiTimerRecordSources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lo/DisplayManager;


# direct methods
.method constructor <init>(Lo/DisplayManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/DisplayManager$5;->c:Lo/DisplayManager;

    iput-object p2, p0, Lo/DisplayManager$5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 168
    iget-object v0, p0, Lo/DisplayManager$5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
