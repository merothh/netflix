.class public final Lo/aaT$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaT;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/aaT;


# direct methods
.method constructor <init>(Lo/aaT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lo/aaT$ActionBar;->d:Lo/aaT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lo/aaT$ActionBar;->d:Lo/aaT;

    invoke-virtual {v0}, Lo/aaT;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/Sl;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/Sl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo/Sl;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lo/aaT$ActionBar;->d:Lo/aaT;

    invoke-virtual {v0}, Lo/aaT;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/Sl;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/Sl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lo/Sl;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method
