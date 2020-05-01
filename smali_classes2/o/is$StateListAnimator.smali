.class public final Lo/is$StateListAnimator;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/is;-><init>(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/is;


# direct methods
.method constructor <init>(Lo/is;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lo/is$StateListAnimator;->a:Lo/is;

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

    .line 89
    iget-object p1, p0, Lo/is$StateListAnimator;->a:Lo/is;

    invoke-static {p1, p2}, Lo/is;->c(Lo/is;Landroid/content/Intent;)V

    return-void
.end method
