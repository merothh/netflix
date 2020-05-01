.class Lo/jZ$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/jZ;


# direct methods
.method constructor <init>(Lo/jZ;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lo/jZ$5;->b:Lo/jZ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 346
    invoke-static {}, Lo/jZ;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Received intent %s"

    invoke-static {p1, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez p2, :cond_0

    return-void

    .line 352
    :cond_0
    sget-object p1, Lo/jZ;->h:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 353
    sget-object v1, Lo/jZ;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    sget-object v3, Lo/jZ;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    iget-object v4, p0, Lo/jZ$5;->b:Lo/jZ;

    invoke-static {v4, p1}, Lo/jZ;->d(Lo/jZ;Ljava/lang/String;)Lo/jY;

    move-result-object v4

    if-nez v4, :cond_1

    .line 357
    invoke-static {}, Lo/jZ;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "playable: %s - no session, dropping intent %s"

    invoke-static {v1, p1, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 361
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 362
    sget-object p2, Lo/jZ;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 363
    invoke-virtual {v4, v1, v3}, Lo/jY;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    sget-object p2, Lo/jZ;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 365
    invoke-virtual {v4, v1, v3}, Lo/jY;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_3
    sget-object p2, Lo/jZ;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 367
    invoke-virtual {v4, v1, v3}, Lo/jY;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_4
    invoke-static {}, Lo/jZ;->b()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "We do not support action :%s "

    invoke-static {p2, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
