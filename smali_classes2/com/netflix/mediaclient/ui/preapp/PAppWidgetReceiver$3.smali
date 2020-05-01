.class final Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lo/xO$Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;->d:Landroid/content/Intent;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;->e:Lo/xO$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;->d:Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver$3;->e:Lo/xO$Activity;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/preapp/PAppWidgetReceiver;->e(Landroid/content/Context;Landroid/content/Intent;Lo/xO$Activity;)V

    return-void
.end method
