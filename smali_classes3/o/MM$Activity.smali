.class Lo/MM$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic b:Lo/MM;


# direct methods
.method private constructor <init>(Lo/MM;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lo/MM$Activity;->b:Lo/MM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/MM;Lo/MM$5;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lo/MM$Activity;-><init>(Lo/MM;)V

    return-void
.end method

.method private a()Landroid/app/Notification$Builder;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 318
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    invoke-static {v1}, Lo/MM;->a(Lo/MM;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 319
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 321
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    .line 323
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 324
    invoke-static {v1, v2}, Lo/MM;->c(Lo/MM;Z)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cn:I

    iget-object v2, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 325
    invoke-static {v2}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->b()Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "Play"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->ck:I

    iget-object v2, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 326
    invoke-static {v2}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->a:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->c(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "Stop"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private c(ZLjava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "nf_mdxnotification"

    const-string v1, "createPlayerPausedBuilder"

    .line 331
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    invoke-static {v1}, Lo/MM;->a(Lo/MM;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 339
    invoke-static {v1, p1}, Lo/MM;->c(Lo/MM;Z)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 341
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cl:I

    iget-object v2, p0, Lo/MM$Activity;->b:Lo/MM;

    invoke-static {v2}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v2

    const/16 v3, -0x1e

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->c(I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "Rewind"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->cm:I

    iget-object v3, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 342
    invoke-static {v3}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->a()Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "Play"

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->ck:I

    iget-object v3, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 343
    invoke-static {v3}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->d:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->c(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "Stop"

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz p1, :cond_0

    .line 346
    invoke-static {p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    move-result-object p1

    .line 347
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->bw:I

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 350
    invoke-static {v1}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->a(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v1, "Skip Intro"

    .line 347
    invoke-virtual {v0, p2, v1, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    return-object v0
.end method

.method private d(ZLjava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "nf_mdxnotification"

    const-string v1, "createPlayerBuilder"

    .line 359
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    invoke-static {v1}, Lo/MM;->a(Lo/MM;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 362
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 365
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    .line 366
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 367
    invoke-static {v1, p1}, Lo/MM;->c(Lo/MM;Z)Landroid/app/Notification$MediaStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 369
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cl:I

    iget-object v2, p0, Lo/MM$Activity;->b:Lo/MM;

    invoke-static {v2}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v2

    const/16 v3, -0x1e

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->c(I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "Rewind"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->cn:I

    iget-object v3, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 370
    invoke-static {v3}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->c()Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "Pause"

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->ck:I

    iget-object v3, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 371
    invoke-static {v3}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->d:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    invoke-interface {v3, v4}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->c(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "Stop"

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz p1, :cond_0

    .line 374
    invoke-static {p2}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    move-result-object p1

    .line 375
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->bw:I

    iget-object v1, p0, Lo/MM$Activity;->b:Lo/MM;

    .line 378
    invoke-static {v1}, Lo/MM;->c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;->a(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v1, "Skip Intro"

    .line 375
    invoke-virtual {v0, p2, v1, p1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    return-object v0
.end method


# virtual methods
.method e(ZZZLjava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 308
    invoke-direct {p0}, Lo/MM$Activity;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 310
    invoke-direct {p0, p3, p4}, Lo/MM$Activity;->d(ZLjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1

    .line 312
    :cond_1
    invoke-direct {p0, p3, p4}, Lo/MM$Activity;->c(ZLjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method
