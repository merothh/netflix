.class public Lo/Object$LoaderManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderManager"
.end annotation


# instance fields
.field a:Lo/NoSuchFieldException;

.field b:Z

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field private final e:Lo/Object$ActionBar;

.field private f:Landroid/net/Uri;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:I

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Z

.field private p:Landroid/view/Display;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/os/Bundle;

.field private v:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Lo/Object$ActionBar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 814
    iput v0, p0, Lo/Object$LoaderManager;->q:I

    .line 944
    iput-object p1, p0, Lo/Object$LoaderManager;->e:Lo/Object$ActionBar;

    .line 945
    iput-object p2, p0, Lo/Object$LoaderManager;->d:Ljava/lang/String;

    .line 946
    iput-object p3, p0, Lo/Object$LoaderManager;->c:Ljava/lang/String;

    return-void
.end method

.method private static b(Lo/Object$LoaderManager;)Z
    .locals 1

    .line 1305
    invoke-virtual {p0}, Lo/Object$LoaderManager;->t()Lo/NoSuchFieldError;

    move-result-object p0

    invoke-virtual {p0}, Lo/NoSuchFieldError;->a()Lo/NoSuchFieldError$Activity;

    move-result-object p0

    invoke-virtual {p0}, Lo/NoSuchFieldError$Activity;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1375
    invoke-static {}, Lo/Object;->b()V

    if-eqz p1, :cond_0

    .line 1377
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0, p0, p1}, Lo/Object$StateListAnimator;->a(Lo/Object$LoaderManager;I)V

    :cond_0
    return-void
.end method

.method public a(Lo/OutOfMemoryError;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1117
    invoke-static {}, Lo/Object;->b()V

    .line 1118
    iget-object v0, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lo/OutOfMemoryError;->c(Ljava/util/List;)Z

    move-result p1

    return p1

    .line 1115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lo/NoSuchFieldException;)I
    .locals 3

    .line 1487
    iput-object p1, p0, Lo/Object$LoaderManager;->a:Lo/NoSuchFieldException;

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 1489
    iget-object v1, p0, Lo/Object$LoaderManager;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/BufferedReader;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-virtual {p1}, Lo/NoSuchFieldException;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Object$LoaderManager;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1493
    :cond_0
    iget-object v1, p0, Lo/Object$LoaderManager;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/BufferedReader;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1494
    invoke-virtual {p1}, Lo/NoSuchFieldException;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Object$LoaderManager;->g:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    .line 1497
    :cond_1
    iget-object v1, p0, Lo/Object$LoaderManager;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lo/BufferedReader;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    invoke-virtual {p1}, Lo/NoSuchFieldException;->a()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lo/Object$LoaderManager;->f:Landroid/net/Uri;

    or-int/lit8 v0, v0, 0x1

    .line 1501
    :cond_2
    iget-boolean v1, p0, Lo/Object$LoaderManager;->b:Z

    invoke-virtual {p1}, Lo/NoSuchFieldException;->h()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1502
    invoke-virtual {p1}, Lo/NoSuchFieldException;->h()Z

    move-result v1

    iput-boolean v1, p0, Lo/Object$LoaderManager;->b:Z

    or-int/lit8 v0, v0, 0x1

    .line 1505
    :cond_3
    iget-boolean v1, p0, Lo/Object$LoaderManager;->i:Z

    invoke-virtual {p1}, Lo/NoSuchFieldException;->i()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1506
    invoke-virtual {p1}, Lo/NoSuchFieldException;->i()Z

    move-result v1

    iput-boolean v1, p0, Lo/Object$LoaderManager;->i:Z

    or-int/lit8 v0, v0, 0x1

    .line 1509
    :cond_4
    iget v1, p0, Lo/Object$LoaderManager;->j:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->j()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1510
    invoke-virtual {p1}, Lo/NoSuchFieldException;->j()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->j:I

    or-int/lit8 v0, v0, 0x1

    .line 1513
    :cond_5
    iget-object v1, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1514
    iget-object v1, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1515
    iget-object v1, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v0, v0, 0x1

    .line 1518
    :cond_6
    iget v1, p0, Lo/Object$LoaderManager;->n:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->m()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 1519
    invoke-virtual {p1}, Lo/NoSuchFieldException;->m()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->n:I

    or-int/lit8 v0, v0, 0x1

    .line 1522
    :cond_7
    iget v1, p0, Lo/Object$LoaderManager;->k:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->o()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 1523
    invoke-virtual {p1}, Lo/NoSuchFieldException;->o()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->k:I

    or-int/lit8 v0, v0, 0x1

    .line 1526
    :cond_8
    iget v1, p0, Lo/Object$LoaderManager;->m:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->n()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 1527
    invoke-virtual {p1}, Lo/NoSuchFieldException;->n()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->m:I

    or-int/lit8 v0, v0, 0x1

    .line 1530
    :cond_9
    iget v1, p0, Lo/Object$LoaderManager;->r:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->p()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 1531
    invoke-virtual {p1}, Lo/NoSuchFieldException;->p()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->r:I

    or-int/lit8 v0, v0, 0x3

    .line 1534
    :cond_a
    iget v1, p0, Lo/Object$LoaderManager;->s:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->q()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 1535
    invoke-virtual {p1}, Lo/NoSuchFieldException;->q()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->s:I

    or-int/lit8 v0, v0, 0x3

    .line 1538
    :cond_b
    iget v1, p0, Lo/Object$LoaderManager;->t:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->r()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 1539
    invoke-virtual {p1}, Lo/NoSuchFieldException;->r()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->t:I

    or-int/lit8 v0, v0, 0x3

    .line 1542
    :cond_c
    iget v1, p0, Lo/Object$LoaderManager;->q:I

    invoke-virtual {p1}, Lo/NoSuchFieldException;->s()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 1543
    invoke-virtual {p1}, Lo/NoSuchFieldException;->s()I

    move-result v1

    iput v1, p0, Lo/Object$LoaderManager;->q:I

    const/4 v1, 0x0

    .line 1544
    iput-object v1, p0, Lo/Object$LoaderManager;->p:Landroid/view/Display;

    or-int/lit8 v0, v0, 0x5

    .line 1547
    :cond_d
    iget-object v1, p0, Lo/Object$LoaderManager;->u:Landroid/os/Bundle;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->t()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lo/BufferedReader;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1548
    invoke-virtual {p1}, Lo/NoSuchFieldException;->t()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lo/Object$LoaderManager;->u:Landroid/os/Bundle;

    or-int/lit8 v0, v0, 0x1

    .line 1551
    :cond_e
    iget-object v1, p0, Lo/Object$LoaderManager;->v:Landroid/content/IntentSender;

    invoke-virtual {p1}, Lo/NoSuchFieldException;->f()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v1, v2}, Lo/BufferedReader;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1552
    invoke-virtual {p1}, Lo/NoSuchFieldException;->f()Landroid/content/IntentSender;

    move-result-object v1

    iput-object v1, p0, Lo/Object$LoaderManager;->v:Landroid/content/IntentSender;

    or-int/lit8 v0, v0, 0x1

    .line 1555
    :cond_f
    iget-boolean v1, p0, Lo/Object$LoaderManager;->o:Z

    invoke-virtual {p1}, Lo/NoSuchFieldException;->g()Z

    move-result v2

    if-eq v1, v2, :cond_10

    .line 1556
    invoke-virtual {p1}, Lo/NoSuchFieldException;->g()Z

    move-result p1

    iput-boolean p1, p0, Lo/Object$LoaderManager;->o:Z

    or-int/lit8 v0, v0, 0x5

    :cond_10
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 982
    iget-object v0, p0, Lo/Object$LoaderManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method c(Lo/NoSuchFieldException;)I
    .locals 1

    .line 1479
    iget-object v0, p0, Lo/Object$LoaderManager;->a:Lo/NoSuchFieldException;

    if-eq v0, p1, :cond_0

    .line 1480
    invoke-virtual {p0, p1}, Lo/Object$LoaderManager;->b(Lo/NoSuchFieldException;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 968
    iget-object v0, p0, Lo/Object$LoaderManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 3

    .line 1361
    invoke-static {}, Lo/Object;->b()V

    .line 1362
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    iget v1, p0, Lo/Object$LoaderManager;->t:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lo/Object$StateListAnimator;->d(Lo/Object$LoaderManager;I)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 1143
    invoke-static {}, Lo/Object;->b()V

    .line 1145
    iget-object v0, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1147
    iget-object v3, p0, Lo/Object$LoaderManager;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 1141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "category must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 996
    iget-object v0, p0, Lo/Object$LoaderManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lo/Object$ActionBar;
    .locals 1

    .line 953
    iget-object v0, p0, Lo/Object$LoaderManager;->e:Lo/Object$ActionBar;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1258
    iget v0, p0, Lo/Object$LoaderManager;->n:I

    return v0
.end method

.method public g()Z
    .locals 3

    .line 1285
    invoke-virtual {p0}, Lo/Object$LoaderManager;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lo/Object$LoaderManager;->m:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    invoke-static {p0}, Lo/Object$LoaderManager;->b(Lo/Object$LoaderManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 1291
    invoke-virtual {p0, v0}, Lo/Object$LoaderManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 1292
    invoke-virtual {p0, v0}, Lo/Object$LoaderManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public h()Z
    .locals 1

    .line 1049
    invoke-static {}, Lo/Object;->b()V

    .line 1050
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0}, Lo/Object$StateListAnimator;->a()Lo/Object$LoaderManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1061
    invoke-static {}, Lo/Object;->b()V

    .line 1062
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0}, Lo/Object$StateListAnimator;->e()Lo/Object$LoaderManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    .line 1267
    iget v0, p0, Lo/Object$LoaderManager;->k:I

    return v0
.end method

.method public k()Landroid/os/Bundle;
    .locals 1

    .line 1434
    iget-object v0, p0, Lo/Object$LoaderManager;->u:Landroid/os/Bundle;

    return-object v0
.end method

.method l()Z
    .locals 1

    .line 1301
    iget-object v0, p0, Lo/Object$LoaderManager;->a:Lo/NoSuchFieldException;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Object$LoaderManager;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 1327
    iget v0, p0, Lo/Object$LoaderManager;->s:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 1337
    iget v0, p0, Lo/Object$LoaderManager;->t:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1317
    iget v0, p0, Lo/Object$LoaderManager;->r:I

    return v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .line 1564
    iget-object v0, p0, Lo/Object$LoaderManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1450
    invoke-static {}, Lo/Object;->b()V

    .line 1451
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/Object$StateListAnimator;->e(Lo/Object$LoaderManager;)V

    return-void
.end method

.method public t()Lo/NoSuchFieldError;
    .locals 1

    .line 1570
    iget-object v0, p0, Lo/Object$LoaderManager;->e:Lo/Object$ActionBar;

    invoke-virtual {v0}, Lo/Object$ActionBar;->a()Lo/NoSuchFieldError;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Object$LoaderManager;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Object$LoaderManager;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Object$LoaderManager;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Object$LoaderManager;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->u:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->v:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Object$LoaderManager;->e:Lo/Object$ActionBar;

    .line 1473
    invoke-virtual {v1}, Lo/Object$ActionBar;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
