.class public Lo/OnGenericMotionListener$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field A:I

.field B:Z

.field C:Ljava/lang/String;

.field D:Landroid/os/Bundle;

.field E:Ljava/lang/String;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Landroid/widget/RemoteViews;

.field I:Landroid/app/Notification;

.field J:Ljava/lang/String;

.field K:I

.field L:J

.field M:Landroid/app/Notification;

.field N:I

.field public R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field a:Ljava/lang/CharSequence;

.field b:Ljava/lang/CharSequence;

.field public c:Landroid/content/Context;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/OnGenericMotionListener$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/OnGenericMotionListener$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Landroid/app/PendingIntent;

.field i:Ljava/lang/CharSequence;

.field j:Landroid/app/PendingIntent;

.field k:I

.field l:Lo/OnGenericMotionListener$Application;

.field m:Z

.field n:Z

.field o:I

.field p:I

.field q:Z

.field r:[Ljava/lang/CharSequence;

.field s:Ljava/lang/CharSequence;

.field t:I

.field u:Z

.field v:Z

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Z

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, p1, v0}, Lo/OnGenericMotionListener$Activity;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/OnGenericMotionListener$Activity;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Lo/OnGenericMotionListener$Activity;->n:Z

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lo/OnGenericMotionListener$Activity;->v:Z

    .line 707
    iput v0, p0, Lo/OnGenericMotionListener$Activity;->z:I

    .line 708
    iput v0, p0, Lo/OnGenericMotionListener$Activity;->A:I

    .line 714
    iput v0, p0, Lo/OnGenericMotionListener$Activity;->K:I

    .line 717
    iput v0, p0, Lo/OnGenericMotionListener$Activity;->N:I

    .line 718
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    .line 740
    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    .line 741
    iput-object p2, p0, Lo/OnGenericMotionListener$Activity;->E:Ljava/lang/String;

    .line 744
    iget-object p1, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    .line 745
    iget-object p1, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 746
    iput v0, p0, Lo/OnGenericMotionListener$Activity;->o:I

    .line 747
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->R:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 996
    sget v1, Lo/AccessibilityDelegate$TaskDescription;->d:I

    .line 997
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 998
    sget v2, Lo/AccessibilityDelegate$TaskDescription;->e:I

    .line 999
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1000
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 1004
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1009
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1007
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1191
    iget-object p2, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 1193
    :cond_0
    iget-object p2, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1595
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1596
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1632
    iget-boolean v0, p0, Lo/OnGenericMotionListener$Activity;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public a(I)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1450
    iput p1, p0, Lo/OnGenericMotionListener$Activity;->A:I

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;
    .locals 1

    .line 928
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 825
    invoke-static {p1}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1510
    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->E:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lo/OnGenericMotionListener$StateListAnimator;)Lo/OnGenericMotionListener$Activity;
    .locals 1

    .line 1379
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 789
    iput-boolean p1, p0, Lo/OnGenericMotionListener$Activity;->m:Z

    return-object p0
.end method

.method public b()I
    .locals 1

    .line 1652
    iget v0, p0, Lo/OnGenericMotionListener$Activity;->z:I

    return v0
.end method

.method public b(I)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1438
    iput p1, p0, Lo/OnGenericMotionListener$Activity;->z:I

    return-object p0
.end method

.method public b(J)Lo/OnGenericMotionListener$Activity;
    .locals 1

    .line 764
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;
    .locals 1

    .line 962
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    invoke-static {p1}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1258
    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->x:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 773
    iput-boolean p1, p0, Lo/OnGenericMotionListener$Activity;->n:Z

    return-object p0
.end method

.method public c()Landroid/app/Notification;
    .locals 1

    .line 1590
    new-instance v0, Lo/OnFocusChangeListener;

    invoke-direct {v0, p0}, Lo/OnFocusChangeListener;-><init>(Lo/OnGenericMotionListener$Activity;)V

    invoke-virtual {v0}, Lo/OnFocusChangeListener;->d()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lo/OnGenericMotionListener$Activity;
    .locals 1

    .line 801
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public c(Landroid/graphics/Bitmap;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lo/OnGenericMotionListener$Activity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 847
    invoke-static {p1}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->s:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Z)Lo/OnGenericMotionListener$Activity;
    .locals 1

    const/16 v0, 0x10

    .line 1144
    invoke-direct {p0, v0, p1}, Lo/OnGenericMotionListener$Activity;->a(IZ)V

    return-object p0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .line 1337
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->D:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/OnGenericMotionListener$Activity;->D:Landroid/os/Bundle;

    .line 1340
    :cond_0
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->D:Landroid/os/Bundle;

    return-object v0
.end method

.method public d(I)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1215
    iput p1, p0, Lo/OnGenericMotionListener$Activity;->o:I

    return-object p0
.end method

.method public d(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;
    .locals 2

    .line 1360
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->e:Ljava/util/ArrayList;

    new-instance v1, Lo/OnGenericMotionListener$StateListAnimator;

    invoke-direct {v1, p1, p2, p3}, Lo/OnGenericMotionListener$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Landroid/net/Uri;)Lo/OnGenericMotionListener$Activity;
    .locals 2

    .line 1023
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 1024
    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1025
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1026
    iget-object p1, p0, Lo/OnGenericMotionListener$Activity;->M:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1027
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1028
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1167
    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->C:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lo/OnGenericMotionListener$Application;)Lo/OnGenericMotionListener$Activity;
    .locals 1

    .line 1421
    iget-object v0, p0, Lo/OnGenericMotionListener$Activity;->l:Lo/OnGenericMotionListener$Application;

    if-eq v0, p1, :cond_0

    .line 1422
    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->l:Lo/OnGenericMotionListener$Application;

    .line 1423
    iget-object p1, p0, Lo/OnGenericMotionListener$Activity;->l:Lo/OnGenericMotionListener$Application;

    if-eqz p1, :cond_0

    .line 1424
    invoke-virtual {p1, p0}, Lo/OnGenericMotionListener$Application;->a(Lo/OnGenericMotionListener$Activity;)V

    :cond_0
    return-object p0
.end method

.method public d(Z)Lo/OnGenericMotionListener$Activity;
    .locals 1

    const/4 v0, 0x2

    .line 1100
    invoke-direct {p0, v0, p1}, Lo/OnGenericMotionListener$Activity;->a(IZ)V

    return-object p0
.end method

.method public e()I
    .locals 1

    .line 1642
    iget v0, p0, Lo/OnGenericMotionListener$Activity;->o:I

    return v0
.end method

.method public e(Landroid/app/PendingIntent;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 916
    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->h:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 833
    invoke-static {p1}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/OnGenericMotionListener$Activity;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Z)Lo/OnGenericMotionListener$Activity;
    .locals 1

    const/16 v0, 0x8

    .line 1133
    invoke-direct {p0, v0, p1}, Lo/OnGenericMotionListener$Activity;->a(IZ)V

    return-object p0
.end method

.method public g(Z)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1155
    iput-boolean p1, p0, Lo/OnGenericMotionListener$Activity;->v:Z

    return-object p0
.end method

.method public i(Z)Lo/OnGenericMotionListener$Activity;
    .locals 0

    .line 1270
    iput-boolean p1, p0, Lo/OnGenericMotionListener$Activity;->y:Z

    return-object p0
.end method
