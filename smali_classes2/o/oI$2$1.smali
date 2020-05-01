.class Lo/oI$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oI$2;->c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/oI$2;

.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/oI$2;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/oI$2$1;->a:Lo/oI$2;

    iput-object p2, p0, Lo/oI$2$1;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/oI$2$1;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lo/oI$2$1;->a:Lo/oI$2;

    iget-object v1, v1, Lo/oI$2;->c:Lo/oI;

    invoke-virtual {v1}, Lo/oI;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineLicenseMgr"

    const-string v2, "DeactivateOfflineLicenseRequest onLicenseDeactivated playableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    iget-object v0, p0, Lo/oI$2$1;->a:Lo/oI$2;

    iget-object v0, v0, Lo/oI$2;->c:Lo/oI;

    iget-object v1, p0, Lo/oI$2$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/oI$2$1;->b:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v3, p0, Lo/oI$2$1;->a:Lo/oI$2;

    iget-boolean v3, v3, Lo/oI$2;->a:Z

    invoke-static {v0, v1, v2, v3}, Lo/oI;->e(Lo/oI;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method
