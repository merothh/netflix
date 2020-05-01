.class Lo/iT$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/iT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/iT;


# direct methods
.method constructor <init>(Lo/iT;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/iT$2;->e:Lo/iT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "nf_logblob"

    const-string v1, "Check if we have not delivered events from last time our app was runnung..."

    .line 224
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lo/iT$2$1;

    invoke-direct {v0, p0}, Lo/iT$2$1;-><init>(Lo/iT$2;)V

    .line 236
    iget-object v1, p0, Lo/iT$2;->e:Lo/iT;

    invoke-static {v1}, Lo/iT;->a(Lo/iT;)Lo/aeL;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/aeL;->c(Lo/aeL$ActionBar;)V

    return-void
.end method
