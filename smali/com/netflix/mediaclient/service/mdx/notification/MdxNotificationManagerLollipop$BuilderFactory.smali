.class Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;
.super Ljava/lang/Object;
.source "MdxNotificationManagerLollipop.java"


# static fields
.field private static final PAUSE:Ljava/lang/String; = "Pause"

.field private static final PLAY:Ljava/lang/String; = "Play"

.field private static final REWIND:Ljava/lang/String; = "Rewind"

.field private static final SKIPBACK_SECONDS:I = -0x1e

.field private static final STOP:Ljava/lang/String; = "Stop"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;-><init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)V

    return-void
.end method

.method private createPlayerBuilder()Landroid/app/Notification$Builder;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "createPlayerBuilder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201a7

    const-string/jumbo v2, "Rewind"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    const/16 v4, -0x1e

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSkipbackIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201ab

    const-string/jumbo v2, "Pause"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getResumeIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201ad

    const-string/jumbo v2, "Stop"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createPlayerPausedBuilder()Landroid/app/Notification$Builder;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "createPlayerPausedBuilder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201a7

    const-string/jumbo v2, "Rewind"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    const/16 v4, -0x1e

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSkipbackIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201a9

    const-string/jumbo v2, "Play"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPauseIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201ad

    const-string/jumbo v2, "Stop"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createPostPlayerBuilder()Landroid/app/Notification$Builder;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201ab

    const-string/jumbo v2, "Play"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0201ad

    const-string/jumbo v2, "Stop"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->this$0:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getBuilder(ZZ)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->createPostPlayerBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->createPlayerBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->createPlayerPausedBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0
.end method
