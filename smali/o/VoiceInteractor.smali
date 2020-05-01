.class Lo/VoiceInteractor;
.super Lo/PictureInPictureParams;
.source ""

# interfaces
.implements Lo/Mode$StateListAnimator;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VoiceInteractor$Activity;,
        Lo/VoiceInteractor$TaskDescription;,
        Lo/VoiceInteractor$ActionBar;,
        Lo/VoiceInteractor$Dialog;,
        Lo/VoiceInteractor$PendingIntent;,
        Lo/VoiceInteractor$StateListAnimator;,
        Lo/VoiceInteractor$LoaderManager;,
        Lo/VoiceInteractor$Application;
    }
.end annotation


# static fields
.field private static final u:[I

.field private static final w:Z

.field private static x:Z


# instance fields
.field private A:Lo/VoiceInteractor$StateListAnimator;

.field private B:Landroid/view/ViewGroup;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/widget/TextView;

.field private G:Z

.field private H:Z

.field private I:Landroid/view/View;

.field private J:[Lo/VoiceInteractor$PendingIntent;

.field private K:Z

.field private L:Lo/VoiceInteractor$PendingIntent;

.field private M:I

.field private N:Z

.field private O:Lo/VoiceInteractor$TaskDescription;

.field private final P:Ljava/lang/Runnable;

.field private Q:Landroid/graphics/Rect;

.field private R:Landroid/graphics/Rect;

.field private S:Z

.field private W:Landroidx/appcompat/app/AppCompatViewInflater;

.field final a:Landroid/view/Window$Callback;

.field final b:Landroid/content/Context;

.field final c:Lo/TaskStackBuilder;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/view/Window;

.field f:Lo/Fragment;

.field g:Landroid/view/MenuInflater;

.field h:Landroid/widget/PopupWindow;

.field i:Lo/ServiceConnection;

.field j:Landroidx/appcompat/widget/ActionBarContextView;

.field k:Ljava/lang/Runnable;

.field l:Z

.field m:Z

.field n:Lo/InputStream;

.field o:Z

.field p:Z

.field q:I

.field r:Z

.field s:Z

.field t:Z

.field private v:Ljava/lang/CharSequence;

.field private y:Landroidx/appcompat/widget/DecorContentParent;

.field private z:Lo/VoiceInteractor$LoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/VoiceInteractor;->w:Z

    new-array v0, v2, [I

    const v3, 0x1010054

    aput v3, v0, v1

    .line 119
    sput-object v0, Lo/VoiceInteractor;->u:[I

    .line 128
    sget-boolean v0, Lo/VoiceInteractor;->w:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lo/VoiceInteractor;->x:Z

    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 132
    new-instance v1, Lo/VoiceInteractor$3;

    invoke-direct {v1, v0}, Lo/VoiceInteractor$3;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    sput-boolean v2, Lo/VoiceInteractor;->x:Z

    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lo/TaskStackBuilder;)V
    .locals 2

    .line 244
    invoke-direct {p0}, Lo/PictureInPictureParams;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lo/VoiceInteractor;->n:Lo/InputStream;

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Lo/VoiceInteractor;->C:Z

    const/16 v1, -0x64

    .line 215
    iput v1, p0, Lo/VoiceInteractor;->M:I

    .line 223
    new-instance v1, Lo/VoiceInteractor$4;

    invoke-direct {v1, p0}, Lo/VoiceInteractor$4;-><init>(Lo/VoiceInteractor;)V

    iput-object v1, p0, Lo/VoiceInteractor;->P:Ljava/lang/Runnable;

    .line 245
    iput-object p1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    .line 247
    iput-object p3, p0, Lo/VoiceInteractor;->c:Lo/TaskStackBuilder;

    .line 249
    iget-object p2, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    iput-object p2, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    .line 250
    iget-object p2, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    instance-of p3, p2, Lo/VoiceInteractor$ActionBar;

    if-nez p3, :cond_1

    .line 254
    new-instance p3, Lo/VoiceInteractor$ActionBar;

    invoke-direct {p3, p0, p2}, Lo/VoiceInteractor$ActionBar;-><init>(Lo/VoiceInteractor;Landroid/view/Window$Callback;)V

    iput-object p3, p0, Lo/VoiceInteractor;->d:Landroid/view/Window$Callback;

    .line 256
    iget-object p2, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    iget-object p3, p0, Lo/VoiceInteractor;->d:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 258
    sget-object p2, Lo/VoiceInteractor;->u:[I

    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 260
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 262
    iget-object p3, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {p3, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void

    .line 251
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()Z
    .locals 6

    .line 2129
    iget-boolean v0, p0, Lo/VoiceInteractor;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 2132
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 2134
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    iget-object v5, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 2135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2134
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2138
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    .line 2142
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_1
    return v1
.end method

.method private C()I
    .locals 2

    .line 2066
    iget v0, p0, Lo/VoiceInteractor;->M:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/VoiceInteractor;->m()I

    move-result v0

    :goto_0
    return v0
.end method

.method private D()V
    .locals 2

    .line 2117
    iget-object v0, p0, Lo/VoiceInteractor;->O:Lo/VoiceInteractor$TaskDescription;

    if-nez v0, :cond_0

    .line 2118
    new-instance v0, Lo/VoiceInteractor$TaskDescription;

    iget-object v1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-static {v1}, Lo/ComponentCallbacks;->a(Landroid/content/Context;)Lo/ComponentCallbacks;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/VoiceInteractor$TaskDescription;-><init>(Lo/VoiceInteractor;Lo/ComponentCallbacks;)V

    iput-object v0, p0, Lo/VoiceInteractor;->O:Lo/VoiceInteractor$TaskDescription;

    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1278
    :cond_0
    iget-object v1, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eq p1, v1, :cond_3

    .line 1286
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    .line 1287
    invoke-static {v2}, Lo/FilterWriter;->C(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1294
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private a(Lo/VoiceInteractor$PendingIntent;)Z
    .locals 3

    .line 1518
    iget-object v0, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    iput-object v0, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    return v1

    .line 1523
    :cond_0
    iget-object v0, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1527
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor;->z:Lo/VoiceInteractor$LoaderManager;

    if-nez v0, :cond_2

    .line 1528
    new-instance v0, Lo/VoiceInteractor$LoaderManager;

    invoke-direct {v0, p0}, Lo/VoiceInteractor$LoaderManager;-><init>(Lo/VoiceInteractor;)V

    iput-object v0, p0, Lo/VoiceInteractor;->z:Lo/VoiceInteractor$LoaderManager;

    .line 1531
    :cond_2
    iget-object v0, p0, Lo/VoiceInteractor;->z:Lo/VoiceInteractor$LoaderManager;

    invoke-virtual {p1, v0}, Lo/VoiceInteractor$PendingIntent;->d(Lo/MediaController$StateListAnimator;)Lo/Drawable;

    move-result-object v0

    .line 1533
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    .line 1535
    iget-object p1, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c(Lo/Mode;Z)V
    .locals 4

    .line 1431
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 1432
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    .line 1433
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1435
    :cond_0
    invoke-virtual {p0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object p1

    .line 1437
    iget-object v2, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1457
    :cond_1
    iget-object p2, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {p2}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1458
    iget-boolean p2, p0, Lo/VoiceInteractor;->t:Z

    if-nez p2, :cond_4

    .line 1459
    invoke-virtual {p0, v1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p2

    .line 1460
    iget-object p2, p2, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 1438
    iget-boolean p2, p0, Lo/VoiceInteractor;->t:Z

    if-nez p2, :cond_4

    .line 1440
    iget-boolean p2, p0, Lo/VoiceInteractor;->s:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lo/VoiceInteractor;->q:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1442
    iget-object p2, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lo/VoiceInteractor;->P:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1443
    iget-object p2, p0, Lo/VoiceInteractor;->P:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1446
    :cond_3
    invoke-virtual {p0, v1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p2

    .line 1450
    iget-object v0, p2, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-eqz v0, :cond_4

    iget-boolean v0, p2, Lo/VoiceInteractor$PendingIntent;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p2, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    iget-object v2, p2, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    .line 1451
    invoke-interface {p1, v1, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1452
    iget-object p2, p2, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1453
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    :cond_4
    :goto_1
    return-void

    .line 1466
    :cond_5
    invoke-virtual {p0, v1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    .line 1468
    iput-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->r:Z

    .line 1469
    invoke-virtual {p0, p1, v1}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    const/4 p2, 0x0

    .line 1471
    invoke-direct {p0, p1, p2}, Lo/VoiceInteractor;->c(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private c(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1329
    iget-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lo/VoiceInteractor;->t:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1335
    :cond_0
    iget v0, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1336
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1337
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 1344
    :cond_2
    invoke-virtual {p0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1345
    iget v3, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1347
    invoke-virtual {p0, p1, v2}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    return-void

    .line 1351
    :cond_3
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 1357
    :cond_4
    invoke-direct {p0, p1, p2}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 1362
    :cond_5
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->r:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 1398
    :cond_6
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    if-eqz p2, :cond_e

    .line 1401
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 1402
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_e

    const/4 v6, -0x1

    goto :goto_2

    .line 1363
    :cond_7
    :goto_1
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    if-nez p2, :cond_9

    .line 1365
    invoke-direct {p0, p1}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    if-nez p2, :cond_a

    :cond_8
    return-void

    .line 1367
    :cond_9
    iget-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->r:Z

    if-eqz p2, :cond_a

    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    .line 1369
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1373
    :cond_a
    invoke-direct {p0, p1}, Lo/VoiceInteractor;->a(Lo/VoiceInteractor$PendingIntent;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lo/VoiceInteractor$PendingIntent;->d()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    .line 1377
    :cond_b
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_c

    .line 1379
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1382
    :cond_c
    iget v3, p1, Lo/VoiceInteractor$PendingIntent;->b:I

    .line 1383
    iget-object v5, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1385
    iget-object v3, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1386
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 1387
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1389
    :cond_d
    iget-object v3, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    iget-object v5, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_e

    .line 1396
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_e
    const/4 v6, -0x2

    .line 1407
    :goto_2
    iput-boolean v1, p1, Lo/VoiceInteractor$PendingIntent;->o:Z

    .line 1409
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Lo/VoiceInteractor$PendingIntent;->a:I

    iget v9, p1, Lo/VoiceInteractor$PendingIntent;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1416
    iget v1, p1, Lo/VoiceInteractor$PendingIntent;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1417
    iget v1, p1, Lo/VoiceInteractor$PendingIntent;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1419
    iget-object v1, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    iput-boolean v2, p1, Lo/VoiceInteractor$PendingIntent;->l:Z

    :cond_f
    :goto_3
    return-void
.end method

.method private c(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1693
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1694
    invoke-virtual {p0, p1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    .line 1695
    iget-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-nez v0, :cond_0

    .line 1696
    invoke-direct {p0, p1, p2}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lo/VoiceInteractor$PendingIntent;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 1815
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1823
    :cond_0
    iget-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->m:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-eqz v0, :cond_2

    .line 1825
    iget-object v0, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v0, p2, p3, p4}, Lo/Mode;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 1830
    iget-object p3, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-nez p3, :cond_3

    .line 1831
    invoke-virtual {p0, p1, p2}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    :cond_3
    return v1
.end method

.method private d(Lo/VoiceInteractor$PendingIntent;)Z
    .locals 6

    .line 1475
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 1478
    iget v1, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v1, :cond_4

    .line 1480
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1481
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1482
    sget v4, Lo/LoaderManager$StateListAnimator;->h:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1485
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 1486
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1487
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1488
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1489
    sget v5, Lo/LoaderManager$StateListAnimator;->g:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 1492
    :cond_1
    sget v5, Lo/LoaderManager$StateListAnimator;->g:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1496
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 1498
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1499
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1501
    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    .line 1505
    new-instance v1, Lo/IntentSender;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lo/IntentSender;-><init>(Landroid/content/Context;I)V

    .line 1506
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1510
    :cond_4
    new-instance v1, Lo/Mode;

    invoke-direct {v1, v0}, Lo/Mode;-><init>(Landroid/content/Context;)V

    .line 1511
    invoke-virtual {v1, p0}, Lo/Mode;->setCallback(Lo/Mode$StateListAnimator;)V

    .line 1512
    invoke-virtual {p1, v1}, Lo/VoiceInteractor$PendingIntent;->a(Lo/Mode;)V

    return v2
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1704
    iget-object v0, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1709
    invoke-virtual {p0, p1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object v2

    if-nez p1, :cond_2

    .line 1710
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz p1, :cond_2

    .line 1711
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 1712
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1713
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1714
    iget-boolean p1, p0, Lo/VoiceInteractor;->t:Z

    if-nez p1, :cond_5

    invoke-direct {p0, v2, p2}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1715
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    move-result p1

    goto :goto_2

    .line 1718
    :cond_1
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result p1

    goto :goto_2

    .line 1721
    :cond_2
    iget-boolean p1, v2, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-nez p1, :cond_6

    iget-boolean p1, v2, Lo/VoiceInteractor$PendingIntent;->o:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1727
    :cond_3
    iget-boolean p1, v2, Lo/VoiceInteractor$PendingIntent;->m:Z

    if-eqz p1, :cond_5

    .line 1729
    iget-boolean p1, v2, Lo/VoiceInteractor$PendingIntent;->s:Z

    if-eqz p1, :cond_4

    .line 1732
    iput-boolean v1, v2, Lo/VoiceInteractor$PendingIntent;->m:Z

    .line 1733
    invoke-direct {p0, v2, p2}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    .line 1738
    invoke-direct {p0, v2, p2}, Lo/VoiceInteractor;->c(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    .line 1724
    :cond_6
    :goto_1
    iget-boolean p1, v2, Lo/VoiceInteractor$PendingIntent;->l:Z

    .line 1726
    invoke-virtual {p0, v2, v0}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    :goto_2
    if-eqz p1, :cond_8

    .line 1745
    iget-object p2, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    if-eqz p2, :cond_7

    .line 1748
    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    const-string p2, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 1750
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return p1
.end method

.method private e(Lo/VoiceInteractor$PendingIntent;)Z
    .locals 2

    .line 1424
    invoke-virtual {p0}, Lo/VoiceInteractor;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/VoiceInteractor$PendingIntent;->c(Landroid/content/Context;)V

    .line 1425
    new-instance v0, Lo/VoiceInteractor$Dialog;

    iget-object v1, p1, Lo/VoiceInteractor$PendingIntent;->k:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lo/VoiceInteractor$Dialog;-><init>(Lo/VoiceInteractor;Landroid/content/Context;)V

    iput-object v0, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    .line 1426
    iput v0, p1, Lo/VoiceInteractor$PendingIntent;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method private e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1539
    iget-boolean v0, p0, Lo/VoiceInteractor;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1544
    :cond_0
    iget-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1548
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 1550
    invoke-virtual {p0, v0, v1}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    .line 1553
    :cond_2
    invoke-virtual {p0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1556
    iget v3, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    .line 1559
    :cond_3
    iget v3, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    if-eqz v3, :cond_5

    iget v3, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 1562
    iget-object v4, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 1565
    invoke-interface {v4}, Landroidx/appcompat/widget/DecorContentParent;->setMenuPrepared()V

    .line 1568
    :cond_6
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    .line 1569
    invoke-virtual {p0}, Lo/VoiceInteractor;->n()Lo/Fragment;

    move-result-object v4

    instance-of v4, v4, Lo/ClipData;

    if-nez v4, :cond_15

    .line 1572
    :cond_7
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Lo/VoiceInteractor$PendingIntent;->s:Z

    if-eqz v4, :cond_f

    .line 1573
    :cond_8
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-nez v4, :cond_a

    .line 1574
    invoke-direct {p0, p1}, Lo/VoiceInteractor;->d(Lo/VoiceInteractor$PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-nez v4, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz v3, :cond_c

    .line 1579
    iget-object v4, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v4, :cond_c

    .line 1580
    iget-object v4, p0, Lo/VoiceInteractor;->A:Lo/VoiceInteractor$StateListAnimator;

    if-nez v4, :cond_b

    .line 1581
    new-instance v4, Lo/VoiceInteractor$StateListAnimator;

    invoke-direct {v4, p0}, Lo/VoiceInteractor$StateListAnimator;-><init>(Lo/VoiceInteractor;)V

    iput-object v4, p0, Lo/VoiceInteractor;->A:Lo/VoiceInteractor$StateListAnimator;

    .line 1583
    :cond_b
    iget-object v4, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    iget-object v6, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    iget-object v7, p0, Lo/VoiceInteractor;->A:Lo/VoiceInteractor$StateListAnimator;

    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lo/MediaController$StateListAnimator;)V

    .line 1588
    :cond_c
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v4}, Lo/Mode;->stopDispatchingItemsChanged()V

    .line 1589
    iget v4, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    iget-object v6, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1591
    invoke-virtual {p1, v5}, Lo/VoiceInteractor$PendingIntent;->a(Lo/Mode;)V

    if-eqz v3, :cond_d

    .line 1593
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz p1, :cond_d

    .line 1595
    iget-object p2, p0, Lo/VoiceInteractor;->A:Lo/VoiceInteractor$StateListAnimator;

    invoke-interface {p1, v5, p2}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lo/MediaController$StateListAnimator;)V

    :cond_d
    return v1

    .line 1601
    :cond_e
    iput-boolean v1, p1, Lo/VoiceInteractor$PendingIntent;->s:Z

    .line 1606
    :cond_f
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v4}, Lo/Mode;->stopDispatchingItemsChanged()V

    .line 1610
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    .line 1611
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    iget-object v6, p1, Lo/VoiceInteractor$PendingIntent;->q:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lo/Mode;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1612
    iput-object v5, p1, Lo/VoiceInteractor$PendingIntent;->q:Landroid/os/Bundle;

    .line 1616
    :cond_10
    iget-object v4, p1, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    iget-object v6, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    .line 1617
    iget-object p2, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz p2, :cond_11

    .line 1620
    iget-object v0, p0, Lo/VoiceInteractor;->A:Lo/VoiceInteractor$StateListAnimator;

    invoke-interface {p2, v5, v0}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lo/MediaController$StateListAnimator;)V

    .line 1622
    :cond_11
    iget-object p1, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {p1}, Lo/Mode;->startDispatchingItemsChanged()V

    return v1

    :cond_12
    if-eqz p2, :cond_13

    .line 1628
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_13
    const/4 p2, -0x1

    .line 1627
    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1629
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_14

    const/4 p2, 0x1

    goto :goto_3

    :cond_14
    const/4 p2, 0x0

    :goto_3
    iput-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->t:Z

    .line 1630
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    iget-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->t:Z

    invoke-virtual {p2, v0}, Lo/Mode;->setQwertyMode(Z)V

    .line 1631
    iget-object p2, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {p2}, Lo/Mode;->startDispatchingItemsChanged()V

    .line 1635
    :cond_15
    iput-boolean v2, p1, Lo/VoiceInteractor$PendingIntent;->m:Z

    .line 1636
    iput-boolean v1, p1, Lo/VoiceInteractor$PendingIntent;->o:Z

    .line 1637
    iput-object p1, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    return v2
.end method

.method private f(I)V
    .locals 2

    .line 1839
    iget v0, p0, Lo/VoiceInteractor;->q:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lo/VoiceInteractor;->q:I

    .line 1841
    iget-boolean p1, p0, Lo/VoiceInteractor;->s:Z

    if-nez p1, :cond_0

    .line 1842
    iget-object p1, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/VoiceInteractor;->P:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lo/FilterWriter;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1843
    iput-boolean v1, p0, Lo/VoiceInteractor;->s:Z

    :cond_0
    return-void
.end method

.method private k(I)Z
    .locals 4

    .line 2074
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2076
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    if-eq v2, p1, :cond_3

    .line 2083
    invoke-direct {p0}, Lo/VoiceInteractor;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2089
    iget-object p1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 2090
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    .line 2095
    :cond_1
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2096
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2099
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    or-int/2addr p1, v3

    iput p1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 2100
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_2

    .line 2104
    invoke-static {v0}, Lo/ComponentCallbacks2;->d(Landroid/content/res/Resources;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private o(I)I
    .locals 2

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1959
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 1963
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_1
    return p1
.end method

.method private u()V
    .locals 2

    .line 517
    iget-boolean v0, p0, Lo/VoiceInteractor;->D:Z

    if-nez v0, :cond_4

    .line 518
    invoke-direct {p0}, Lo/VoiceInteractor;->v()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    .line 521
    invoke-virtual {p0}, Lo/VoiceInteractor;->o()Ljava/lang/CharSequence;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 523
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v1, :cond_0

    .line 524
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lo/VoiceInteractor;->n()Lo/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p0}, Lo/VoiceInteractor;->n()Lo/Fragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/Fragment;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_1
    iget-object v1, p0, Lo/VoiceInteractor;->F:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 528
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/VoiceInteractor;->w()V

    .line 534
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lo/VoiceInteractor;->b(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lo/VoiceInteractor;->D:Z

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object v0

    .line 544
    iget-boolean v1, p0, Lo/VoiceInteractor;->t:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x6c

    .line 545
    invoke-direct {p0, v0}, Lo/VoiceInteractor;->f(I)V

    :cond_4
    return-void
.end method

.method private v()Landroid/view/ViewGroup;
    .locals 7

    .line 551
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    sget-object v1, Lo/LoaderManager$Dialog;->aE:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 553
    sget v1, Lo/LoaderManager$Dialog;->aH:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 559
    sget v1, Lo/LoaderManager$Dialog;->aS:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0, v3}, Lo/VoiceInteractor;->b(I)Z

    goto :goto_0

    .line 561
    :cond_0
    sget v1, Lo/LoaderManager$Dialog;->aH:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    .line 563
    invoke-virtual {p0, v1}, Lo/VoiceInteractor;->b(I)Z

    .line 565
    :cond_1
    :goto_0
    sget v1, Lo/LoaderManager$Dialog;->aK:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_2

    .line 566
    invoke-virtual {p0, v4}, Lo/VoiceInteractor;->b(I)Z

    .line 568
    :cond_2
    sget v1, Lo/LoaderManager$Dialog;->aM:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 569
    invoke-virtual {p0, v1}, Lo/VoiceInteractor;->b(I)Z

    .line 571
    :cond_3
    sget v1, Lo/LoaderManager$Dialog;->aG:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lo/VoiceInteractor;->p:Z

    .line 572
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 577
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 581
    iget-boolean v1, p0, Lo/VoiceInteractor;->r:Z

    const/4 v5, 0x0

    if-nez v1, :cond_9

    .line 582
    iget-boolean v1, p0, Lo/VoiceInteractor;->p:Z

    if-eqz v1, :cond_4

    .line 584
    sget v1, Lo/LoaderManager$PendingIntent;->i:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    iput-boolean v2, p0, Lo/VoiceInteractor;->l:Z

    iput-boolean v2, p0, Lo/VoiceInteractor;->m:Z

    goto/16 :goto_3

    .line 589
    :cond_4
    iget-boolean v0, p0, Lo/VoiceInteractor;->m:Z

    if-eqz v0, :cond_8

    .line 595
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 596
    iget-object v1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Lo/LoaderManager$StateListAnimator;->h:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 599
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 600
    new-instance v1, Lo/IntentSender;

    iget-object v3, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Lo/IntentSender;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 602
    :cond_5
    iget-object v1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 606
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/LoaderManager$PendingIntent;->r:I

    .line 607
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    sget v1, Lo/LoaderManager$FragmentManager;->r:I

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/DecorContentParent;

    iput-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    .line 611
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-virtual {p0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 616
    iget-boolean v1, p0, Lo/VoiceInteractor;->l:Z

    if-eqz v1, :cond_6

    .line 617
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v1, v4}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 619
    :cond_6
    iget-boolean v1, p0, Lo/VoiceInteractor;->E:Z

    if-eqz v1, :cond_7

    .line 620
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 622
    :cond_7
    iget-boolean v1, p0, Lo/VoiceInteractor;->G:Z

    if-eqz v1, :cond_c

    .line 623
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    goto :goto_3

    :cond_8
    move-object v0, v5

    goto :goto_3

    .line 627
    :cond_9
    iget-boolean v1, p0, Lo/VoiceInteractor;->o:Z

    if-eqz v1, :cond_a

    .line 628
    sget v1, Lo/LoaderManager$PendingIntent;->p:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    .line 631
    :cond_a
    sget v1, Lo/LoaderManager$PendingIntent;->s:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 634
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_b

    .line 637
    new-instance v1, Lo/VoiceInteractor$2;

    invoke-direct {v1, p0}, Lo/VoiceInteractor$2;-><init>(Lo/VoiceInteractor;)V

    invoke-static {v0, v1}, Lo/FilterWriter;->c(Landroid/view/View;Lo/FilenameFilter;)V

    goto :goto_3

    .line 659
    :cond_b
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/FitWindowsViewGroup;

    new-instance v3, Lo/VoiceInteractor$1;

    invoke-direct {v3, p0}, Lo/VoiceInteractor$1;-><init>(Lo/VoiceInteractor;)V

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    :cond_c
    :goto_3
    if-eqz v0, :cond_10

    .line 680
    iget-object v1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-nez v1, :cond_d

    .line 681
    sget v1, Lo/LoaderManager$FragmentManager;->R:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/VoiceInteractor;->F:Landroid/widget/TextView;

    .line 685
    :cond_d
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 687
    sget v1, Lo/LoaderManager$FragmentManager;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 690
    iget-object v3, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_f

    .line 694
    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_e

    .line 695
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 696
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 697
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v2, -0x1

    .line 702
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 703
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    .line 707
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    .line 708
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_f
    iget-object v2, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 715
    new-instance v2, Lo/VoiceInteractor$5;

    invoke-direct {v2, p0}, Lo/VoiceInteractor$5;-><init>(Lo/VoiceInteractor;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V

    return-object v0

    .line 670
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/VoiceInteractor;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/VoiceInteractor;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/VoiceInteractor;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/VoiceInteractor;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo/VoiceInteractor;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private w()V
    .locals 5

    .line 731
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 737
    iget-object v1, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 739
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 740
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 738
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 742
    iget-object v1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    sget-object v2, Lo/LoaderManager$Dialog;->aE:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 743
    sget v2, Lo/LoaderManager$Dialog;->aU:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 744
    sget v2, Lo/LoaderManager$Dialog;->aV:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 746
    sget v2, Lo/LoaderManager$Dialog;->aQ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    sget v2, Lo/LoaderManager$Dialog;->aQ:I

    .line 748
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 747
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 750
    :cond_0
    sget v2, Lo/LoaderManager$Dialog;->aO:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    sget v2, Lo/LoaderManager$Dialog;->aO:I

    .line 752
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 751
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 754
    :cond_1
    sget v2, Lo/LoaderManager$Dialog;->aP:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 755
    sget v2, Lo/LoaderManager$Dialog;->aP:I

    .line 756
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 758
    :cond_2
    sget v2, Lo/LoaderManager$Dialog;->aN:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 759
    sget v2, Lo/LoaderManager$Dialog;->aN:I

    .line 760
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 759
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 762
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    return-void
.end method

.method private x()V
    .locals 3

    .line 319
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    .line 321
    iget-boolean v0, p0, Lo/VoiceInteractor;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 326
    new-instance v1, Lo/BroadcastReceiver;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lo/VoiceInteractor;->l:Z

    invoke-direct {v1, v0, v2}, Lo/BroadcastReceiver;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    goto :goto_0

    .line 328
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 329
    new-instance v1, Lo/BroadcastReceiver;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lo/BroadcastReceiver;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    .line 331
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    if-eqz v0, :cond_3

    .line 332
    iget-boolean v1, p0, Lo/VoiceInteractor;->S:Z

    invoke-virtual {v0, v1}, Lo/Fragment;->f(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private y()V
    .locals 2

    .line 1951
    iget-boolean v0, p0, Lo/VoiceInteractor;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 1952
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lo/Fragment;
    .locals 1

    .line 306
    invoke-direct {p0}, Lo/VoiceInteractor;->x()V

    .line 307
    iget-object v0, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    return-object v0
.end method

.method a(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 859
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 861
    invoke-virtual {p1, v0}, Lo/Fragment;->i(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 866
    invoke-virtual {p0, p1, v1}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    .line 867
    iget-boolean v1, p1, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {p0, p1, v0}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(ILo/VoiceInteractor$PendingIntent;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    .line 1761
    iget-object v0, p0, Lo/VoiceInteractor;->J:[Lo/VoiceInteractor$PendingIntent;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1762
    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1768
    iget-object p3, p2, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    :cond_1
    if-eqz p2, :cond_2

    .line 1773
    iget-boolean p2, p2, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-nez p2, :cond_2

    return-void

    .line 1776
    :cond_2
    iget-boolean p2, p0, Lo/VoiceInteractor;->t:Z

    if-nez p2, :cond_3

    .line 1780
    iget-object p2, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 457
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    .line 458
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 460
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget-object p1, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 484
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    .line 485
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object p1, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1190
    :cond_0
    invoke-direct {p0, v2, p2}, Lo/VoiceInteractor;->e(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1193
    :cond_1
    iget-boolean p1, p0, Lo/VoiceInteractor;->N:Z

    .line 1194
    iput-boolean v2, p0, Lo/VoiceInteractor;->N:Z

    .line 1196
    invoke-virtual {p0, v2, v2}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1197
    iget-boolean v0, p2, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 1202
    invoke-virtual {p0, p2, v1}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    :cond_2
    return v1

    .line 1206
    :cond_3
    invoke-virtual {p0}, Lo/VoiceInteractor;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public b()V
    .locals 0

    .line 431
    invoke-virtual {p0}, Lo/VoiceInteractor;->i()Z

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 299
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    return-void
.end method

.method b(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method b(Lo/VoiceInteractor$PendingIntent;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1661
    iget v0, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1662
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    iget-object p1, p1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {p0, p1}, Lo/VoiceInteractor;->c(Lo/Mode;)V

    return-void

    .line 1667
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1668
    iget-boolean v2, p1, Lo/VoiceInteractor$PendingIntent;->l:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1669
    iget-object v2, p1, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1672
    iget p2, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    invoke-virtual {p0, p2, p1, v1}, Lo/VoiceInteractor;->a(ILo/VoiceInteractor$PendingIntent;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 1676
    iput-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->m:Z

    .line 1677
    iput-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->o:Z

    .line 1678
    iput-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->l:Z

    .line 1681
    iput-object v1, p1, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    const/4 p2, 0x1

    .line 1685
    iput-boolean p2, p1, Lo/VoiceInteractor$PendingIntent;->r:Z

    .line 1687
    iget-object p2, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    if-ne p2, p1, :cond_2

    .line 1688
    iput-object v1, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 4

    .line 769
    invoke-direct {p0, p1}, Lo/VoiceInteractor;->o(I)I

    move-result p1

    .line 771
    iget-boolean v0, p0, Lo/VoiceInteractor;->r:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    .line 774
    :cond_0
    iget-boolean v0, p0, Lo/VoiceInteractor;->m:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    .line 776
    iput-boolean v1, p0, Lo/VoiceInteractor;->m:Z

    :cond_1
    if-eq p1, v3, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    .line 806
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 785
    :cond_2
    invoke-direct {p0}, Lo/VoiceInteractor;->y()V

    .line 786
    iput-boolean v3, p0, Lo/VoiceInteractor;->l:Z

    return v3

    .line 781
    :cond_3
    invoke-direct {p0}, Lo/VoiceInteractor;->y()V

    .line 782
    iput-boolean v3, p0, Lo/VoiceInteractor;->m:Z

    return v3

    .line 789
    :cond_4
    invoke-direct {p0}, Lo/VoiceInteractor;->y()V

    .line 790
    iput-boolean v3, p0, Lo/VoiceInteractor;->o:Z

    return v3

    .line 797
    :cond_5
    invoke-direct {p0}, Lo/VoiceInteractor;->y()V

    .line 798
    iput-boolean v3, p0, Lo/VoiceInteractor;->G:Z

    return v3

    .line 793
    :cond_6
    invoke-direct {p0}, Lo/VoiceInteractor;->y()V

    .line 794
    iput-boolean v3, p0, Lo/VoiceInteractor;->E:Z

    return v3

    .line 801
    :cond_7
    invoke-direct {p0}, Lo/VoiceInteractor;->y()V

    .line 802
    iput-boolean v3, p0, Lo/VoiceInteractor;->r:Z

    return v3
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1128
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0, p1, p2}, Lo/Fragment;->b(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 1135
    :cond_0
    iget-object p1, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    if-eqz p1, :cond_2

    .line 1136
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Lo/VoiceInteractor;->c(Lo/VoiceInteractor$PendingIntent;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1139
    iget-object p1, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    if-eqz p1, :cond_1

    .line 1140
    iput-boolean v1, p1, Lo/VoiceInteractor$PendingIntent;->o:Z

    :cond_1
    return v1

    .line 1150
    :cond_2
    iget-object p1, p0, Lo/VoiceInteractor;->L:Lo/VoiceInteractor$PendingIntent;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1151
    invoke-virtual {p0, v0, v1}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    .line 1152
    invoke-direct {p0, p1, p2}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    .line 1153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Lo/VoiceInteractor;->c(Lo/VoiceInteractor$PendingIntent;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 1154
    iput-boolean v0, p1, Lo/VoiceInteractor$PendingIntent;->m:Z

    if-eqz p2, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method c(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
    .locals 7

    .line 936
    invoke-virtual {p0}, Lo/VoiceInteractor;->s()V

    .line 937
    iget-object v0, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0}, Lo/ServiceConnection;->a()V

    .line 941
    :cond_0
    instance-of v0, p1, Lo/VoiceInteractor$Application;

    if-nez v0, :cond_1

    .line 943
    new-instance v0, Lo/VoiceInteractor$Application;

    invoke-direct {v0, p0, p1}, Lo/VoiceInteractor$Application;-><init>(Lo/VoiceInteractor;Lo/ServiceConnection$Activity;)V

    move-object p1, v0

    .line 947
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor;->c:Lo/TaskStackBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lo/VoiceInteractor;->t:Z

    if-nez v2, :cond_2

    .line 949
    :try_start_0
    invoke-interface {v0, p1}, Lo/TaskStackBuilder;->onWindowStartingSupportActionMode(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 956
    iput-object v0, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    goto/16 :goto_5

    .line 958
    :cond_3
    iget-object v0, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 959
    iget-boolean v0, p0, Lo/VoiceInteractor;->p:Z

    if-eqz v0, :cond_5

    .line 961
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 962
    iget-object v4, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 963
    sget v5, Lo/LoaderManager$StateListAnimator;->h:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 966
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    .line 967
    iget-object v5, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 968
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 969
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 971
    new-instance v4, Lo/IntentSender;

    iget-object v6, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Lo/IntentSender;-><init>(Landroid/content/Context;I)V

    .line 972
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 974
    :cond_4
    iget-object v4, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    .line 977
    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 978
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lo/LoaderManager$StateListAnimator;->j:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    .line 980
    iget-object v5, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lo/OutputStream;->c(Landroid/widget/PopupWindow;I)V

    .line 982
    iget-object v5, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 983
    iget-object v5, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 985
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lo/LoaderManager$StateListAnimator;->a:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 987
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 988
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 987
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 989
    iget-object v4, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 990
    iget-object v0, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 991
    new-instance v0, Lo/VoiceInteractor$6;

    invoke-direct {v0, p0}, Lo/VoiceInteractor$6;-><init>(Lo/VoiceInteractor;)V

    iput-object v0, p0, Lo/VoiceInteractor;->k:Ljava/lang/Runnable;

    goto :goto_2

    .line 1022
    :cond_5
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    sget v4, Lo/LoaderManager$FragmentManager;->j:I

    .line 1023
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_6

    .line 1026
    invoke-virtual {p0}, Lo/VoiceInteractor;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1027
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1032
    :cond_6
    :goto_2
    iget-object v0, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_b

    .line 1033
    invoke-virtual {p0}, Lo/VoiceInteractor;->s()V

    .line 1034
    iget-object v0, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 1035
    new-instance v0, Lo/PackageManager;

    iget-object v4, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-direct {v0, v4, v5, p1, v3}, Lo/PackageManager;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lo/ServiceConnection$Activity;Z)V

    .line 1037
    invoke-virtual {v0}, Lo/ServiceConnection;->c()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lo/ServiceConnection$Activity;->d(Lo/ServiceConnection;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1038
    invoke-virtual {v0}, Lo/ServiceConnection;->e()V

    .line 1039
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Lo/ServiceConnection;)V

    .line 1040
    iput-object v0, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    .line 1042
    invoke-virtual {p0}, Lo/VoiceInteractor;->q()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    .line 1043
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1044
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object p1

    iput-object p1, p0, Lo/VoiceInteractor;->n:Lo/InputStream;

    .line 1045
    iget-object p1, p0, Lo/VoiceInteractor;->n:Lo/InputStream;

    new-instance v0, Lo/VoiceInteractor$9;

    invoke-direct {v0, p0}, Lo/VoiceInteractor$9;-><init>(Lo/VoiceInteractor;)V

    invoke-virtual {p1, v0}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    goto :goto_4

    .line 1064
    :cond_8
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1065
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1066
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1068
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_9

    .line 1069
    iget-object p1, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/FilterWriter;->p(Landroid/view/View;)V

    .line 1073
    :cond_9
    :goto_4
    iget-object p1, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_b

    .line 1074
    iget-object p1, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/VoiceInteractor;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 1077
    :cond_a
    iput-object v1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    .line 1081
    :cond_b
    :goto_5
    iget-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lo/VoiceInteractor;->c:Lo/TaskStackBuilder;

    if-eqz v0, :cond_c

    .line 1082
    invoke-interface {v0, p1}, Lo/TaskStackBuilder;->onSupportActionModeStarted(Lo/ServiceConnection;)V

    .line 1084
    :cond_c
    iget-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 436
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, v1}, Lo/Fragment;->j(Z)V

    .line 442
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor;->O:Lo/VoiceInteractor$TaskDescription;

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0}, Lo/VoiceInteractor$TaskDescription;->d()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 466
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    .line 467
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    iget-object v1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 470
    iget-object p1, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public c(Landroid/content/res/Configuration;)V
    .locals 1

    .line 411
    iget-boolean v0, p0, Lo/VoiceInteractor;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/VoiceInteractor;->D:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Lo/Fragment;->a(Landroid/content/res/Configuration;)V

    .line 421
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object p1

    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 424
    invoke-virtual {p0}, Lo/VoiceInteractor;->i()Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 272
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/OnCapturedPointerListener;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lo/VoiceInteractor;->n()Lo/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 281
    iput-boolean v1, p0, Lo/VoiceInteractor;->S:Z

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {v0, v1}, Lo/Fragment;->f(Z)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 288
    iget v0, p0, Lo/VoiceInteractor;->M:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2

    const-string v0, "appcompat:local_night_mode"

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/VoiceInteractor;->M:I

    :cond_2
    return-void
.end method

.method c(Lo/Mode;)V
    .locals 2

    .line 1643
    iget-boolean v0, p0, Lo/VoiceInteractor;->H:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1647
    iput-boolean v0, p0, Lo/VoiceInteractor;->H:Z

    .line 1648
    iget-object v0, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    .line 1649
    invoke-virtual {p0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1650
    iget-boolean v1, p0, Lo/VoiceInteractor;->t:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 1651
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 1653
    iput-boolean p1, p0, Lo/VoiceInteractor;->H:Z

    return-void
.end method

.method c(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1165
    iget-object v0, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    instance-of v1, v0, Lo/Closeable$ActionBar;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lo/AssistContent;

    if-eqz v0, :cond_1

    .line 1167
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1168
    invoke-static {v0, p1}, Lo/Closeable;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1173
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 1175
    iget-object v0, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1180
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1184
    invoke-virtual {p0, v0, p1}, Lo/VoiceInteractor;->d(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1}, Lo/VoiceInteractor;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public d(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    .line 404
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1234
    iget-object v0, p0, Lo/VoiceInteractor;->W:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    sget-object v2, Lo/LoaderManager$Dialog;->aE:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1236
    sget v2, Lo/LoaderManager$Dialog;->aJ:I

    .line 1237
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1238
    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1239
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 1247
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1248
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, Lo/VoiceInteractor;->W:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 1250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Lo/VoiceInteractor;->W:Landroidx/appcompat/app/AppCompatViewInflater;

    goto :goto_1

    .line 1242
    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Lo/VoiceInteractor;->W:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 1258
    :cond_2
    :goto_1
    sget-boolean v0, Lo/VoiceInteractor;->w:Z

    if-eqz v0, :cond_5

    .line 1259
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1261
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1263
    invoke-direct {p0, v0}, Lo/VoiceInteractor;->a(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_4
    :goto_2
    move v7, v1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 1266
    :goto_3
    iget-object v2, p0, Lo/VoiceInteractor;->W:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v8, Lo/VoiceInteractor;->w:Z

    const/4 v9, 0x1

    .line 1269
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1266
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 451
    invoke-virtual {v0, v1}, Lo/Fragment;->j(Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 492
    iget v0, p0, Lo/VoiceInteractor;->M:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v1, "appcompat:local_night_mode"

    .line 494
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 475
    invoke-direct {p0}, Lo/VoiceInteractor;->u()V

    .line 476
    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 477
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 478
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object p1, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 837
    iput-object p1, p0, Lo/VoiceInteractor;->v:Ljava/lang/CharSequence;

    .line 839
    iget-object v0, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 840
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 841
    :cond_0
    invoke-virtual {p0}, Lo/VoiceInteractor;->n()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {p0}, Lo/VoiceInteractor;->n()Lo/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Fragment;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 844
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method d(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1217
    :cond_0
    invoke-direct {p0, v2, p2}, Lo/VoiceInteractor;->c(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1225
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lo/VoiceInteractor;->N:Z

    :goto_1
    return v2
.end method

.method public e()Landroid/view/MenuInflater;
    .locals 2

    .line 391
    iget-object v0, p0, Lo/VoiceInteractor;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0}, Lo/VoiceInteractor;->x()V

    .line 393
    new-instance v0, Lo/Configuration;

    iget-object v1, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Lo/Fragment;->d()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lo/Configuration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/VoiceInteractor;->g:Landroid/view/MenuInflater;

    .line 396
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor;->g:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public e(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
    .locals 2

    if-eqz p1, :cond_3

    .line 905
    iget-object v0, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Lo/ServiceConnection;->a()V

    .line 909
    :cond_0
    new-instance v0, Lo/VoiceInteractor$Application;

    invoke-direct {v0, p0, p1}, Lo/VoiceInteractor$Application;-><init>(Lo/VoiceInteractor;Lo/ServiceConnection$Activity;)V

    .line 911
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 913
    invoke-virtual {p1, v0}, Lo/Fragment;->e(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    .line 914
    iget-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lo/VoiceInteractor;->c:Lo/TaskStackBuilder;

    if-eqz v1, :cond_1

    .line 915
    invoke-interface {v1, p1}, Lo/TaskStackBuilder;->onSupportActionModeStarted(Lo/ServiceConnection;)V

    .line 919
    :cond_1
    iget-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    if-nez p1, :cond_2

    .line 921
    invoke-virtual {p0, v0}, Lo/VoiceInteractor;->c(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    .line 924
    :cond_2
    iget-object p1, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    return-object p1

    .line 902
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected e(IZ)Lo/VoiceInteractor$PendingIntent;
    .locals 3

    .line 1798
    iget-object p2, p0, Lo/VoiceInteractor;->J:[Lo/VoiceInteractor$PendingIntent;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 1799
    new-array v0, v0, [Lo/VoiceInteractor$PendingIntent;

    if-eqz p2, :cond_1

    .line 1801
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1803
    :cond_1
    iput-object v0, p0, Lo/VoiceInteractor;->J:[Lo/VoiceInteractor$PendingIntent;

    move-object p2, v0

    .line 1806
    :cond_2
    aget-object v0, p2, p1

    if-nez v0, :cond_3

    .line 1808
    new-instance v0, Lo/VoiceInteractor$PendingIntent;

    invoke-direct {v0, p1}, Lo/VoiceInteractor$PendingIntent;-><init>(I)V

    aput-object v0, p2, p1

    :cond_3
    return-object v0
.end method

.method e(Landroid/view/Menu;)Lo/VoiceInteractor$PendingIntent;
    .locals 5

    .line 1785
    iget-object v0, p0, Lo/VoiceInteractor;->J:[Lo/VoiceInteractor$PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1786
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1788
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 1789
    iget-object v4, v3, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method e(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 877
    invoke-virtual {p1, v0}, Lo/Fragment;->i(Z)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    .line 344
    instance-of v1, v0, Lo/BroadcastReceiver;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 352
    iput-object v1, p0, Lo/VoiceInteractor;->g:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lo/Fragment;->j()V

    :cond_1
    if-eqz p1, :cond_2

    .line 360
    new-instance v0, Lo/ClipData;

    iget-object v1, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    .line 361
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lo/VoiceInteractor;->d:Landroid/view/Window$Callback;

    invoke-direct {v0, p1, v1, v2}, Lo/ClipData;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 362
    iput-object v0, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    .line 363
    iget-object p1, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0}, Lo/ClipData;->h()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0

    .line 365
    :cond_2
    iput-object v1, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    .line 367
    iget-object p1, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    iget-object v0, p0, Lo/VoiceInteractor;->d:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 370
    :goto_0
    invoke-virtual {p0}, Lo/VoiceInteractor;->j()V

    return-void

    .line 345
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()V
    .locals 2

    .line 1300
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1302
    invoke-static {v0, p0}, Lo/DataOutputStream;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 1304
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lo/VoiceInteractor;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 1305
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method g(I)I
    .locals 7

    .line 1883
    iget-object v0, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1884
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    .line 1885
    iget-object v0, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1886
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1889
    iget-object v2, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 1890
    iget-object v2, p0, Lo/VoiceInteractor;->R:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 1891
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lo/VoiceInteractor;->R:Landroid/graphics/Rect;

    .line 1892
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lo/VoiceInteractor;->Q:Landroid/graphics/Rect;

    .line 1894
    :cond_0
    iget-object v2, p0, Lo/VoiceInteractor;->R:Landroid/graphics/Rect;

    .line 1895
    iget-object v4, p0, Lo/VoiceInteractor;->Q:Landroid/graphics/Rect;

    .line 1896
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1898
    iget-object v5, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1899
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1900
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    .line 1902
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1904
    iget-object v2, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1905
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    .line 1906
    iget-object v2, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    iget-object v4, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lo/LoaderManager$Activity;->b:I

    .line 1907
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1906
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1908
    iget-object v2, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    iget-object v4, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1912
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1913
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    .line 1914
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1915
    iget-object v4, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 1922
    :goto_2
    iget-object v4, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 1928
    :goto_3
    iget-boolean v4, p0, Lo/VoiceInteractor;->o:Z

    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    const/4 p1, 0x0

    goto :goto_5

    .line 1933
    :cond_6
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_7

    .line 1935
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x0

    :cond_8
    :goto_5
    if-eqz v2, :cond_a

    .line 1939
    iget-object v2, p0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    .line 1943
    :cond_a
    :goto_6
    iget-object v0, p0, Lo/VoiceInteractor;->I:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    const/16 v1, 0x8

    .line 1944
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public g()V
    .locals 2

    .line 500
    iget-boolean v0, p0, Lo/VoiceInteractor;->s:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/VoiceInteractor;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lo/VoiceInteractor;->t:Z

    .line 506
    iget-object v0, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Lo/Fragment;->j()V

    .line 511
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor;->O:Lo/VoiceInteractor$TaskDescription;

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {v0}, Lo/VoiceInteractor$TaskDescription;->d()V

    :cond_2
    return-void
.end method

.method h(I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    return p1

    .line 2046
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 2047
    iget-object p1, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 2048
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 2054
    :cond_1
    invoke-direct {p0}, Lo/VoiceInteractor;->D()V

    .line 2055
    iget-object p1, p0, Lo/VoiceInteractor;->O:Lo/VoiceInteractor$TaskDescription;

    invoke-virtual {p1}, Lo/VoiceInteractor$TaskDescription;->e()I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final h()Lo/FragmentManager$Application;
    .locals 1

    .line 2728
    new-instance v0, Lo/VoiceInteractor$Activity;

    invoke-direct {v0, p0}, Lo/VoiceInteractor$Activity;-><init>(Lo/VoiceInteractor;)V

    return-object v0
.end method

.method i(I)V
    .locals 4

    const/4 v0, 0x1

    .line 1848
    invoke-virtual {p0, p1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object v1

    .line 1850
    iget-object v2, v1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-eqz v2, :cond_1

    .line 1851
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1852
    iget-object v3, v1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v3, v2}, Lo/Mode;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1853
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1854
    iput-object v2, v1, Lo/VoiceInteractor$PendingIntent;->q:Landroid/os/Bundle;

    .line 1857
    :cond_0
    iget-object v2, v1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v2}, Lo/Mode;->stopDispatchingItemsChanged()V

    .line 1858
    iget-object v2, v1, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v2}, Lo/Mode;->clear()V

    .line 1860
    :cond_1
    iput-boolean v0, v1, Lo/VoiceInteractor$PendingIntent;->s:Z

    .line 1861
    iput-boolean v0, v1, Lo/VoiceInteractor$PendingIntent;->r:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 1864
    :cond_2
    iget-object p1, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1866
    invoke-virtual {p0, p1, p1}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1868
    iput-boolean p1, v0, Lo/VoiceInteractor$PendingIntent;->m:Z

    const/4 p1, 0x0

    .line 1869
    invoke-direct {p0, v0, p1}, Lo/VoiceInteractor;->e(Lo/VoiceInteractor$PendingIntent;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public i()Z
    .locals 3

    .line 2004
    invoke-direct {p0}, Lo/VoiceInteractor;->C()I

    move-result v0

    .line 2005
    invoke-virtual {p0, v0}, Lo/VoiceInteractor;->h(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2007
    invoke-direct {p0, v1}, Lo/VoiceInteractor;->k(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2012
    invoke-direct {p0}, Lo/VoiceInteractor;->D()V

    .line 2013
    iget-object v0, p0, Lo/VoiceInteractor;->O:Lo/VoiceInteractor$TaskDescription;

    invoke-virtual {v0}, Lo/VoiceInteractor$TaskDescription;->c()V

    :cond_1
    const/4 v0, 0x1

    .line 2016
    iput-boolean v0, p0, Lo/VoiceInteractor;->K:Z

    return v1
.end method

.method public j()V
    .locals 1

    .line 929
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Lo/Fragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 932
    invoke-direct {p0, v0}, Lo/VoiceInteractor;->f(I)V

    return-void
.end method

.method j(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1657
    invoke-virtual {p0, p1, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lo/VoiceInteractor;->b(Lo/VoiceInteractor$PendingIntent;Z)V

    return-void
.end method

.method final k()Landroid/view/Window$Callback;
    .locals 1

    .line 315
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final l()Landroid/content/Context;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lo/Fragment;->d()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lo/VoiceInteractor;->b:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method final n()Lo/Fragment;
    .locals 1

    .line 311
    iget-object v0, p0, Lo/VoiceInteractor;->f:Lo/Fragment;

    return-object v0
.end method

.method final o()Ljava/lang/CharSequence;
    .locals 2

    .line 850
    iget-object v0, p0, Lo/VoiceInteractor;->a:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 851
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 854
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1316
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/VoiceInteractor;->d(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1324
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/VoiceInteractor;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMenuItemSelected(Lo/Mode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 884
    invoke-virtual {p0}, Lo/VoiceInteractor;->k()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-boolean v1, p0, Lo/VoiceInteractor;->t:Z

    if-nez v1, :cond_0

    .line 886
    invoke-virtual {p1}, Lo/Mode;->getRootMenu()Lo/Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/VoiceInteractor;->e(Landroid/view/Menu;)Lo/VoiceInteractor$PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 888
    iget p1, p1, Lo/VoiceInteractor$PendingIntent;->d:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lo/Mode;)V
    .locals 1

    const/4 v0, 0x1

    .line 896
    invoke-direct {p0, p1, v0}, Lo/VoiceInteractor;->c(Lo/Mode;Z)V

    return-void
.end method

.method p()Z
    .locals 2

    .line 1111
    iget-object v0, p0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0}, Lo/ServiceConnection;->a()V

    return v1

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lo/VoiceInteractor;->a()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {v0}, Lo/Fragment;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final q()Z
    .locals 1

    .line 1090
    iget-boolean v0, p0, Lo/VoiceInteractor;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/VoiceInteractor;->B:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method r()V
    .locals 2

    .line 1976
    iget-object v0, p0, Lo/VoiceInteractor;->y:Landroidx/appcompat/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1977
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    .line 1980
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1981
    iget-object v0, p0, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/VoiceInteractor;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1982
    iget-object v0, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1984
    :try_start_0
    iget-object v0, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 1990
    iput-object v0, p0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    .line 1992
    :cond_2
    invoke-virtual {p0}, Lo/VoiceInteractor;->s()V

    const/4 v0, 0x0

    .line 1994
    invoke-virtual {p0, v0, v0}, Lo/VoiceInteractor;->e(IZ)Lo/VoiceInteractor$PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1995
    iget-object v1, v0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-eqz v1, :cond_3

    .line 1996
    iget-object v0, v0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->close()V

    :cond_3
    return-void
.end method

.method s()V
    .locals 1

    .line 1104
    iget-object v0, p0, Lo/VoiceInteractor;->n:Lo/InputStream;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lo/InputStream;->b()V

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    .line 1100
    iget-boolean v0, p0, Lo/VoiceInteractor;->C:Z

    return v0
.end method
