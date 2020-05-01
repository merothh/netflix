.class public final Lo/adq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Z

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "LGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/adq;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .line 703
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lo/adq;->e(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 680
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(I)Z
    .locals 8

    const-class v0, Lo/adq;

    monitor-enter v0

    const/4 v1, 0x1

    if-gtz p0, :cond_0

    :try_start_0
    const-string p0, "nf_device_utils"

    const-string v2, "Everybody is enabled"

    .line 451
    invoke-static {p0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x64

    if-lt p0, v3, :cond_1

    :try_start_1
    const-string p0, "nf_device_utils"

    const-string v1, "Everybody is disabled"

    .line 456
    invoke-static {p0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    monitor-exit v0

    return v2

    .line 460
    :cond_1
    :try_start_2
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/dj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {v4}, Lo/adq;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    .line 464
    rem-long/2addr v4, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v5, v4

    if-gez v5, :cond_2

    add-int/lit8 v5, v5, 0x64

    :cond_2
    sub-int/2addr v3, p0

    if-gt v5, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 475
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static a(Lo/zD;Lo/AF;)Z
    .locals 0

    .line 633
    invoke-interface {p0}, Lo/zD;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lo/AF;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    .line 192
    invoke-static {p0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 1

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 302
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 304
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "release/7.54"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static b(I)Z
    .locals 1

    .line 344
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lo/aek;->e(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static b(Lo/zD;Lo/AF;)Z
    .locals 0

    .line 623
    invoke-interface {p0}, Lo/zD;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lo/AF;->I()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static c(Ljava/lang/String;)J
    .locals 5

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 492
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const-wide/16 v3, 0x1f

    mul-long v0, v0, v3

    .line 493
    aget-char v3, p0, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1

    .line 173
    invoke-static {p0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 177
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 183
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1201

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 322
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static c(Lo/zD;Lo/AF;)Z
    .locals 0

    .line 642
    invoke-interface {p0}, Lo/zD;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lo/AF;->J()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 110
    invoke-static {p0}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "N/A"

    :cond_1
    return-object p0
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 1

    .line 715
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lo/adq;->d(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "input_method"

    .line 376
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 377
    invoke-static {p0, p1}, Lo/adq;->b(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0xb06

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 1

    .line 335
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static d(I)Z
    .locals 1

    .line 783
    const-class v0, Lo/UrlInterceptRegistry;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UrlInterceptRegistry;

    invoke-interface {v0}, Lo/UrlInterceptRegistry;->b()Lo/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0, p0}, Lo/ValueCallback;->d(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lo/zD;Lo/AF;)Z
    .locals 0

    .line 628
    invoke-interface {p0}, Lo/zD;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lo/AF;->H()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 1

    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public static e(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 710
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x300

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static e()Z
    .locals 1

    .line 670
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static e(Lo/zD;Lo/AF;)Z
    .locals 0

    .line 651
    invoke-interface {p0}, Lo/zD;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lo/AF;->M()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f()J
    .locals 2

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 203
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 204
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, p0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static g()Z
    .locals 4

    .line 742
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "unknown"

    .line 743
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    .line 744
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    .line 745
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    .line 746
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 747
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 749
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 0

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static h()Z
    .locals 1

    .line 692
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aek;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 212
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 213
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, p0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static i()Z
    .locals 2

    .line 794
    invoke-static {}, Lo/CarrierIdentifier;->e()Landroid/app/Application;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static j()Z
    .locals 7

    .line 762
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 763
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_2

    .line 768
    :cond_0
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    const-string v6, "x86"

    .line 769
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "x86_64"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3

    :cond_3
    return v1

    :cond_4
    :goto_2
    const-string v0, "nf_device_utils"

    const-string v2, "ABIs are not reported, this should not happen!"

    .line 764
    invoke-static {v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "nf_device_utils"

    const/4 v1, 0x0

    .line 564
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    .line 565
    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const-string p0, "Success!"

    .line 571
    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    const-string v3, "Device is not Google certified, skip"

    if-ne v2, p0, :cond_1

    .line 575
    :try_start_1
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 v4, 0x9

    if-ne v4, p0, :cond_2

    .line 578
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "Device is Google certified, problem with Google Play Services"

    .line 581
    invoke-static {v0, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can not use Google Play services"

    .line 588
    invoke-static {v0, p0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 589
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v2, "canUseGooglePlayServices fails"

    invoke-interface {v0, v2, p0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 6

    .line 410
    sget-object v0, Lo/adq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_2

    .line 411
    const-class v0, Lo/adq;

    monitor-enter v0

    .line 412
    :try_start_0
    sget-object v1, Lo/adq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_1

    const-string v1, "nf_first_start_after_install"

    const-wide/16 v2, -0x1

    .line 413
    invoke-static {p0, v1, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 415
    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lo/adq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    const-string v1, "nf_first_start_after_install"

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 420
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 422
    :cond_2
    :goto_1
    sget-object p0, Lo/adq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public static n(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 356
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 357
    invoke-static {p0}, Lo/ContentObservable;->d(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    .line 358
    invoke-static {}, Lo/ContentObservable;->c()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    .line 359
    invoke-static {}, Lo/ContentObservable;->d()I

    move-result v3

    const-string v4, "numCpuCores"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "cpuFreqInMhz"

    .line 360
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "totalRAMInMb"

    .line 361
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 349
    invoke-static {p0}, Lo/adq;->a(Landroid/content/Context;)I

    move-result v1

    const-string v2, "dpi"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    invoke-static {p0}, Lo/adq;->g(Landroid/content/Context;)I

    move-result v1

    const-string v2, "screenWidthPixels"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    invoke-static {p0}, Lo/adq;->i(Landroid/content/Context;)I

    move-result p0

    const-string v1, "screenHeightPixels"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 0

    .line 595
    sget p0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return p0
.end method

.method public static r(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 601
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 605
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "nf_device_utils"

    const-string v1, "gms package not available"

    .line 607
    invoke-static {p0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 1

    .line 618
    invoke-static {p0}, Lo/adq;->r(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lo/adq;->p(Landroid/content/Context;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
