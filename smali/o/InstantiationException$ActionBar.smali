.class public Lo/InstantiationException$ActionBar;
.super Lo/OnGenericMotionListener$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstantiationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field b:[I

.field g:Landroid/app/PendingIntent;

.field h:Z

.field i:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lo/OnGenericMotionListener$Application;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lo/InstantiationException$ActionBar;->b:[I

    return-void
.end method

.method private c(Lo/OnGenericMotionListener$StateListAnimator;)Landroid/widget/RemoteViews;
    .locals 4

    .line 280
    invoke-virtual {p1}, Lo/OnGenericMotionListener$StateListAnimator;->d()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v2, v2, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lo/InterruptedException$Application;->d:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 283
    sget v2, Lo/InterruptedException$Activity;->c:I

    invoke-virtual {p1}, Lo/OnGenericMotionListener$StateListAnimator;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_1

    .line 285
    sget v0, Lo/InterruptedException$Activity;->c:I

    invoke-virtual {p1}, Lo/OnGenericMotionListener$StateListAnimator;->d()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 287
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    .line 288
    sget v0, Lo/InterruptedException$Activity;->c:I

    invoke-virtual {p1}, Lo/OnGenericMotionListener$StateListAnimator;->a()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method


# virtual methods
.method b()I
    .locals 1

    .line 294
    sget v0, Lo/InterruptedException$Application;->c:I

    return v0
.end method

.method public b(Lo/OnHoverListener;)V
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 211
    invoke-interface {p1}, Lo/OnHoverListener;->e()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 212
    invoke-virtual {p0, v0}, Lo/InstantiationException$ActionBar;->d(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 213
    :cond_0
    iget-boolean v0, p0, Lo/InstantiationException$ActionBar;->h:Z

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {p1}, Lo/OnHoverListener;->e()Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method c()Landroid/widget/RemoteViews;
    .locals 8

    .line 244
    invoke-virtual {p0}, Lo/InstantiationException$ActionBar;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0, v2, v0, v1}, Lo/InstantiationException$ActionBar;->e(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 246
    iget-object v3, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v3, v3, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 247
    iget-object v4, p0, Lo/InstantiationException$ActionBar;->b:[I

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v4, v4

    const/4 v5, 0x3

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 250
    :goto_0
    sget v5, Lo/InterruptedException$Activity;->d:I

    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v4, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    if-ge v5, v3, :cond_1

    .line 259
    iget-object v6, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v6, v6, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    iget-object v7, p0, Lo/InstantiationException$ActionBar;->b:[I

    aget v7, v7, v5

    .line 260
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/OnGenericMotionListener$StateListAnimator;

    .line 261
    invoke-direct {p0, v6}, Lo/InstantiationException$ActionBar;->c(Lo/OnGenericMotionListener$StateListAnimator;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 262
    sget v7, Lo/InterruptedException$Activity;->d:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 254
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    iget-boolean v1, p0, Lo/InstantiationException$ActionBar;->h:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 266
    sget v1, Lo/InterruptedException$Activity;->a:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    sget v1, Lo/InterruptedException$Activity;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    sget v1, Lo/InterruptedException$Activity;->e:I

    iget-object v2, p0, Lo/InstantiationException$ActionBar;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 269
    sget v1, Lo/InterruptedException$Activity;->e:I

    iget-object v2, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v2, v2, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    .line 270
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/InterruptedException$StateListAnimator;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    .line 269
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 272
    :cond_3
    sget v1, Lo/InterruptedException$Activity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    sget v1, Lo/InterruptedException$Activity;->e:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-object v0
.end method

.method public c(Lo/OnHoverListener;)Landroid/widget/RemoteViews;
    .locals 1

    .line 235
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lo/InstantiationException$ActionBar;->c()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public varargs c([I)Lo/InstantiationException$ActionBar;
    .locals 0

    .line 149
    iput-object p1, p0, Lo/InstantiationException$ActionBar;->b:[I

    return-object p0
.end method

.method d(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/InstantiationException$ActionBar;->b:[I

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 223
    :cond_0
    iget-object v0, p0, Lo/InstantiationException$ActionBar;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    :cond_1
    return-object p1
.end method

.method public d(Lo/OnHoverListener;)Landroid/widget/RemoteViews;
    .locals 1

    .line 303
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lo/InstantiationException$ActionBar;->e()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lo/InstantiationException$ActionBar;
    .locals 0

    .line 158
    iput-object p1, p0, Lo/InstantiationException$ActionBar;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method e(I)I
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 334
    sget p1, Lo/InterruptedException$Application;->b:I

    goto :goto_0

    :cond_0
    sget p1, Lo/InterruptedException$Application;->a:I

    :goto_0
    return p1
.end method

.method e()Landroid/widget/RemoteViews;
    .locals 6

    .line 311
    iget-object v0, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v0, v0, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    invoke-virtual {p0, v0}, Lo/InstantiationException$ActionBar;->e(I)I

    move-result v1

    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0, v2, v1, v2}, Lo/InstantiationException$ActionBar;->e(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 315
    sget v3, Lo/InterruptedException$Activity;->d:I

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 318
    iget-object v4, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v4, v4, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/OnGenericMotionListener$StateListAnimator;

    invoke-direct {p0, v4}, Lo/InstantiationException$ActionBar;->c(Lo/OnGenericMotionListener$StateListAnimator;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 319
    sget v5, Lo/InterruptedException$Activity;->d:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iget-boolean v0, p0, Lo/InstantiationException$ActionBar;->h:Z

    if-eqz v0, :cond_1

    .line 323
    sget v0, Lo/InterruptedException$Activity;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 324
    sget v0, Lo/InterruptedException$Activity;->e:I

    iget-object v2, p0, Lo/InstantiationException$ActionBar;->d:Lo/OnGenericMotionListener$Activity;

    iget-object v2, v2, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    .line 325
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/InterruptedException$StateListAnimator;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    .line 324
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 326
    sget v0, Lo/InterruptedException$Activity;->e:I

    iget-object v2, p0, Lo/InstantiationException$ActionBar;->g:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 328
    :cond_1
    sget v0, Lo/InterruptedException$Activity;->e:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object v1
.end method
