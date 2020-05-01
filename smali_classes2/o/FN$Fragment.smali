.class public final Lo/FN$Fragment;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/FN;


# direct methods
.method constructor <init>(Lo/FN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1027
    iput-object p1, p0, Lo/FN$Fragment;->c:Lo/FN;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    iget-object p1, p0, Lo/FN$Fragment;->c:Lo/FN;

    invoke-static {p1}, Lo/FN;->m(Lo/FN;)Lo/Bc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1030
    iget-object p2, p0, Lo/FN$Fragment;->c:Lo/FN;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lo/FN;->b(Lo/FN;Lo/Bc;)V

    :cond_0
    return-void
.end method
