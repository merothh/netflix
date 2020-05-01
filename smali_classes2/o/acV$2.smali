.class Lo/acV$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acV;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/acV;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lo/acV$2;->c:Lo/acV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Manager is here!"

    .line 337
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lo/acV$2;->c:Lo/acV;

    invoke-static {v0, p1, p2}, Lo/acV;->a(Lo/acV;Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "VoipActivity"

    const-string v1, "Netflix service is not fully initialized, but we still need to provide help!"

    .line 343
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lo/acV$2;->c:Lo/acV;

    invoke-static {v0, p1, p2}, Lo/acV;->a(Lo/acV;Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
