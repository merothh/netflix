.class Lo/acS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/yY;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/acS;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-object p1, p0, Lo/acS;->a:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lo/acS;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lo/acS;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    .line 141
    iget-object v0, p0, Lo/acS;->a:Landroid/content/Context;

    .line 144
    invoke-static {v0}, Lo/acV;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    .line 141
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Landroid/app/Notification;
    .locals 8

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iget-object v2, p0, Lo/acS;->a:Landroid/content/Context;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->fp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lo/acS;->a:Landroid/content/Context;

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->fn:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 104
    iget-object v4, p0, Lo/acS;->a:Landroid/content/Context;

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->fw:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 106
    :cond_0
    iget-object v4, p0, Lo/acS;->a:Landroid/content/Context;

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->fu:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    :goto_0
    new-instance v5, Lo/OnGenericMotionListener$Activity;

    iget-object v6, p0, Lo/acS;->a:Landroid/content/Context;

    const-string v7, "help_notification_channel"

    invoke-direct {v5, v6, v7}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 112
    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->d(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    .line 113
    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->a(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->e(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    const-string v6, "call"

    .line 115
    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/String;)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->bB:I

    .line 116
    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->c(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    .line 117
    invoke-direct {p0}, Lo/acS;->c()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->c(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    const/4 v6, 0x2

    .line 118
    invoke-virtual {v5, v6}, Lo/OnGenericMotionListener$Activity;->d(I)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    .line 119
    invoke-virtual {v5, v2}, Lo/OnGenericMotionListener$Activity;->a(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v5

    .line 120
    invoke-virtual {v5, v4}, Lo/OnGenericMotionListener$Activity;->e(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v2}, Lo/OnGenericMotionListener$Activity;->b(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    .line 122
    invoke-direct {p0}, Lo/acS;->a()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/OnGenericMotionListener$Activity;->e(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    .line 123
    invoke-direct {p0}, Lo/acS;->e()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/OnGenericMotionListener$Activity;->a(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->T:I

    .line 124
    invoke-direct {p0}, Lo/acS;->e()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Lo/OnGenericMotionListener$Activity;->d(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v2, v3}, Lo/OnGenericMotionListener$Activity;->c(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v0, v1}, Lo/OnGenericMotionListener$Activity;->b(J)Lo/OnGenericMotionListener$Activity;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Lo/OnGenericMotionListener$Activity;->a(Z)Lo/OnGenericMotionListener$Activity;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lo/OnGenericMotionListener$Activity;->c()Landroid/app/Notification;

    move-result-object p1

    .line 130
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 132
    iget-object v0, p0, Lo/acS;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object p1
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 2

    .line 137
    iget-object v0, p0, Lo/acS;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bk:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/app/PendingIntent;
    .locals 4

    .line 149
    iget-object v0, p0, Lo/acS;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.CALL_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.intent.category.VOIP"

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    .line 149
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Lo/Ac;Landroid/os/Handler;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lo/acS;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lo/acS;->b(Z)Landroid/app/Notification;

    move-result-object v0

    .line 56
    new-instance v1, Lo/acS$4;

    invoke-direct {v1, p0, p1, v0}, Lo/acS$4;-><init>(Lo/acS;Lo/Ac;Landroid/app/Notification;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lo/Ac;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "nf_voip"

    const-string v1, "Cancel notification"

    .line 85
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lo/acS;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    new-instance v0, Lo/acS$2;

    invoke-direct {v0, p0, p1}, Lo/acS$2;-><init>(Lo/acS;Lo/Ac;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Lo/Ac;Landroid/os/Handler;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/acS;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    invoke-direct {p0, v1}, Lo/acS;->b(Z)Landroid/app/Notification;

    move-result-object v0

    .line 75
    new-instance v1, Lo/acS$5;

    invoke-direct {v1, p0, p1, v0}, Lo/acS$5;-><init>(Lo/acS;Lo/Ac;Landroid/app/Notification;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
