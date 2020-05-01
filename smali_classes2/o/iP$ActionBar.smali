.class Lo/iP$ActionBar;
.super Lo/aew;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/iP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lo/iP;


# direct methods
.method public constructor <init>(Lo/iP;)V
    .locals 7

    .line 237
    iput-object p1, p0, Lo/iP$ActionBar;->b:Lo/iP;

    const-string v1, "nf_log_clv2_queue"

    const/16 v2, 0x1e

    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 238
    invoke-direct/range {v0 .. v6}, Lo/aew;-><init>(Ljava/lang/String;IJZZ)V

    return-void
.end method


# virtual methods
.method protected d(Z)V
    .locals 0

    .line 243
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/Logger;->flush()V

    return-void
.end method
