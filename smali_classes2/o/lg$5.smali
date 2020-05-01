.class Lo/lg$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lg;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/lg;


# direct methods
.method constructor <init>(Lo/lg;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/lg$5;->c:Lo/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MdxStackCaf"

    const-string v1, "restartDiscovery - disabling then enabling"

    .line 159
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lo/lg$5;->c:Lo/lg;

    invoke-virtual {v0}, Lo/lg;->r()V

    .line 161
    iget-object v0, p0, Lo/lg$5;->c:Lo/lg;

    invoke-virtual {v0}, Lo/lg;->p()V

    return-void
.end method
