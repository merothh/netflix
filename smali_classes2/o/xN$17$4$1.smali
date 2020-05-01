.class Lo/xN$17$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN$17$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/xN$17$4;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/xN$17$4;Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lo/xN$17$4$1;->b:Lo/xN$17$4;

    iput-object p2, p0, Lo/xN$17$4$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "nf_preappagentdatahandler"

    const-string v1, "saving merged data... "

    .line 273
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lo/xN$17$4$1;->b:Lo/xN$17$4;

    iget-object v0, v0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v0, v0, Lo/xN$17;->d:Lo/xN;

    invoke-static {v0}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/xN$17$4$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/xQ;->b(Landroid/content/Context;Ljava/lang/String;Lo/aeL$TaskDescription;)V

    return-void
.end method
