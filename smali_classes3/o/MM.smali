.class public final Lo/MM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/la;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MM$Activity;
    }
.end annotation


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private final b:I

.field private final c:I

.field private final d:Lo/MM$Activity;

.field private e:Landroid/app/Notification;

.field private f:Z

.field private final g:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Bitmap;

.field private final m:Lo/SuggestionsAdapter;

.field private final n:Landroid/content/Context;

.field private o:Landroid/app/Notification$Builder;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;Lo/SuggestionsAdapter;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lo/MM;->c:I

    const/16 v0, 0xc9

    .line 52
    iput v0, p0, Lo/MM;->b:I

    .line 54
    new-instance v0, Lo/MM$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/MM$Activity;-><init>(Lo/MM;Lo/MM$5;)V

    iput-object v0, p0, Lo/MM;->d:Lo/MM$Activity;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is episode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_mdxnotification"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-boolean p2, p0, Lo/MM;->i:Z

    .line 79
    iput-object p1, p0, Lo/MM;->n:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lo/MM;->g:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    .line 81
    iput-object p4, p0, Lo/MM;->m:Lo/SuggestionsAdapter;

    .line 83
    invoke-direct {p0}, Lo/MM;->c()V

    .line 84
    invoke-direct {p0}, Lo/MM;->b()V

    return-void
.end method

.method static synthetic a(Lo/MM;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/MM;->n:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/MM;->d:Lo/MM$Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lo/MM$Activity;->e(ZZZLjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iput-object p1, p0, Lo/MM;->k:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lo/MM;->h:Ljava/lang/String;

    .line 218
    iget-boolean v1, p0, Lo/MM;->i:Z

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    return-void
.end method

.method private b(ZZZ)V
    .locals 6

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 269
    invoke-direct/range {v0 .. v5}, Lo/MM;->b(ZZZLjava/lang/String;Z)V

    return-void
.end method

.method private b(ZZZLjava/lang/String;Z)V
    .locals 0

    .line 273
    iget-object p2, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/MM;->a:Landroid/app/NotificationManager;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lo/MM;->j:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iput-boolean p5, p0, Lo/MM;->f:Z

    .line 280
    iget-object p2, p0, Lo/MM;->d:Lo/MM$Activity;

    invoke-virtual {p2, p5, p1, p3, p4}, Lo/MM$Activity;->e(ZZZLjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    .line 281
    iget-object p1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lo/MM;->j()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 282
    invoke-direct {p0}, Lo/MM;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lo/MM;Z)Landroid/app/Notification$MediaStyle;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lo/MM;->e(Z)Landroid/app/Notification$MediaStyle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lo/MM;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/MM;->g:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/MM;->n:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lo/MM;->a:Landroid/app/NotificationManager;

    return-void
.end method

.method private e(Z)Landroid/app/Notification$MediaStyle;
    .locals 3

    .line 387
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 390
    fill-array-data p1, :array_1

    invoke-virtual {v0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 393
    :cond_0
    iget-object p1, p0, Lo/MM;->m:Lo/SuggestionsAdapter;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/SuggestionsAdapter;->a()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lo/MM;->m:Lo/SuggestionsAdapter;

    invoke-interface {p1}, Lo/SuggestionsAdapter;->a()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SPY-7597 - Got null mMediaSessionTokenProvider for MdxNotificationManagerLollipop"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
    .end array-data
.end method

.method private e()Landroid/graphics/Bitmap;
    .locals 2

    .line 169
    iget-object v0, p0, Lo/MM;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bS:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 174
    iget-object v0, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lo/MM;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Lo/MM;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lo/MM;->l:Landroid/graphics/Bitmap;

    .line 182
    :cond_1
    iget-object v0, p0, Lo/MM;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const-string v0, "nf_mdxnotification"

    const-string v1, "We failed to decode resource!"

    .line 183
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 191
    :goto_0
    iget-object v0, p0, Lo/MM;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 192
    :cond_3
    iget-object v0, p0, Lo/MM;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 194
    :cond_4
    iget-boolean v0, p0, Lo/MM;->f:Z

    if-eqz v0, :cond_5

    .line 195
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hA:I

    invoke-static {v0}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 198
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lX:I

    invoke-static {v0}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 202
    :goto_1
    iget-object v0, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 203
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    const-string v1, "mdx_notification_channel"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 206
    :cond_6
    iget-object v0, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lo/MM;->e:Landroid/app/Notification;

    .line 207
    iget-object v0, p0, Lo/MM;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lo/MM;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private j()Landroid/app/PendingIntent;
    .locals 4

    .line 257
    iget-object v0, p0, Lo/MM;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 264
    invoke-static {}, Lo/bM;->E()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 261
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 290
    iget-object v0, p0, Lo/MM;->a:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 295
    iget-object v0, p0, Lo/MM;->a:Landroid/app/NotificationManager;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public a(Landroid/app/Notification;Lo/Ac;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget v0, p0, Lo/MM;->p:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    .line 105
    invoke-interface {p2, v1, p1}, Lo/Ac;->e(ILandroid/app/Notification;)V

    .line 106
    iput v1, p0, Lo/MM;->p:I

    .line 108
    :cond_1
    iput-boolean p3, p0, Lo/MM;->f:Z

    .line 109
    iput-boolean v1, p0, Lo/MM;->j:Z

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Lo/MM;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b(Lo/Ac;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lo/MM;->a()V

    const/4 v0, 0x1

    .line 115
    invoke-interface {p1, v0, v0}, Lo/Ac;->c(IZ)V

    const/4 p1, 0x0

    .line 116
    iput p1, p0, Lo/MM;->p:I

    .line 117
    iput-boolean p1, p0, Lo/MM;->j:Z

    return-void
.end method

.method public b(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lo/MM;->i:Z

    .line 161
    invoke-direct {p0, p2, p3}, Lo/MM;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lo/MM;->i()V

    return-void
.end method

.method public c(Z)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .line 141
    iput-boolean p1, p0, Lo/MM;->f:Z

    .line 142
    iget-object v0, p0, Lo/MM;->d:Lo/MM$Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lo/MM$Activity;->e(ZZZLjava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    .line 144
    iget-object p1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    if-eqz p1, :cond_1

    .line 145
    invoke-static {}, Lo/adk;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    const-string v0, "mdx_notification_channel"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 148
    :cond_0
    iget-object p1, p0, Lo/MM;->o:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lo/MM;->e:Landroid/app/Notification;

    :cond_1
    const/4 p1, 0x1

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lo/MM;->e:Landroid/app/Notification;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public c(ZZZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 246
    invoke-direct/range {v0 .. v5}, Lo/MM;->b(ZZZLjava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lo/MM;->b(Landroid/graphics/Bitmap;)V

    .line 241
    invoke-direct {p0}, Lo/MM;->i()V

    return-void
.end method

.method public d(Lo/Ac;)V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lo/MM;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 128
    invoke-interface {p1, v0, v0}, Lo/Ac;->c(IZ)V

    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lo/MM;->p:I

    .line 130
    iput-boolean p1, p0, Lo/MM;->j:Z

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/MM;->f:Z

    return v0
.end method

.method public e(ZZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lo/MM;->b(ZZZ)V

    :cond_0
    return-void
.end method
