.class public final Lo/FN$TaskDescription;
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
.field final synthetic e:Lo/FN;


# direct methods
.method constructor <init>(Lo/FN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1035
    iput-object p1, p0, Lo/FN$TaskDescription;->e:Lo/FN;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1038
    sget-object p1, Lo/FN;->u:Lo/FN$Application;

    check-cast p1, Lo/MessagePdu;

    return-void

    :cond_0
    const-string p1, "extra_video_id"

    .line 1042
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1044
    iget-object p2, p0, Lo/FN$TaskDescription;->e:Lo/FN;

    invoke-static {p2}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1045
    iget-object p1, p0, Lo/FN$TaskDescription;->e:Lo/FN;

    invoke-static {p1}, Lo/FN;->m(Lo/FN;)Lo/Bc;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1046
    iget-object p2, p0, Lo/FN$TaskDescription;->e:Lo/FN;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lo/FN;->e(Lo/FN;Lo/Bc;Z)V

    :cond_1
    return-void
.end method
