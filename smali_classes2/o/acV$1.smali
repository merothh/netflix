.class Lo/acV$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acV;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/acV;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lo/acV$1;->e:Lo/acV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "VoipActivity"

    const-string v1, "User did NOT verified call to proceed!"

    .line 707
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lo/acV$1;->e:Lo/acV;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/acV;->d(Lo/acV;Z)Z

    .line 709
    iget-object v0, p0, Lo/acV$1;->e:Lo/acV;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v1, v2}, Lo/acV;->b(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;Ljava/lang/String;I)V

    return-void
.end method
