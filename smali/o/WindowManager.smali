.class public Lo/WindowManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Lo/CharacterStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharacterStyle<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lo/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Lo/AccessibilityNodeInfo;

    invoke-direct {v0}, Lo/AccessibilityNodeInfo;-><init>()V

    sput-object v0, Lo/WindowManager;->e:Lo/Animation;

    goto :goto_0

    .line 48
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 49
    new-instance v0, Lo/AccessibilityNodeProvider;

    invoke-direct {v0}, Lo/AccessibilityNodeProvider;-><init>()V

    sput-object v0, Lo/WindowManager;->e:Lo/Animation;

    goto :goto_0

    .line 50
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 51
    invoke-static {}, Lo/WindowInsets;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Lo/WindowInsets;

    invoke-direct {v0}, Lo/WindowInsets;-><init>()V

    sput-object v0, Lo/WindowManager;->e:Lo/Animation;

    goto :goto_0

    .line 53
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 54
    new-instance v0, Lo/Window;

    invoke-direct {v0}, Lo/Window;-><init>()V

    sput-object v0, Lo/WindowManager;->e:Lo/Animation;

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Lo/Animation;

    invoke-direct {v0}, Lo/Animation;-><init>()V

    sput-object v0, Lo/WindowManager;->e:Lo/Animation;

    .line 63
    :goto_0
    new-instance v0, Lo/CharacterStyle;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lo/CharacterStyle;-><init>(I)V

    sput-object v0, Lo/WindowManager;->d:Lo/CharacterStyle;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lo/DexFile$Activity;I)Landroid/graphics/Typeface;
    .locals 1

    .line 160
    sget-object v0, Lo/WindowManager;->e:Lo/Animation;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/Animation;->d(Landroid/content/Context;Landroid/os/CancellationSignal;[Lo/DexFile$Activity;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    .line 76
    sget-object v0, Lo/WindowManager;->d:Lo/CharacterStyle;

    invoke-static {p0, p1, p2}, Lo/WindowManager;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/CharacterStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 143
    sget-object v0, Lo/WindowManager;->e:Lo/Animation;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/Animation;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 146
    invoke-static {p1, p2, p4}, Lo/WindowManager;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-object p2, Lo/WindowManager;->d:Lo/CharacterStyle;

    invoke-virtual {p2, p1, p0}, Lo/CharacterStyle;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lo/ViewOverlay$Activity;Landroid/content/res/Resources;IILo/ViewTreeObserver$StateListAnimator;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    .line 105
    instance-of v1, p1, Lo/ViewOverlay$TaskDescription;

    if-eqz v1, :cond_3

    .line 106
    move-object v0, p1

    check-cast v0, Lo/ViewOverlay$TaskDescription;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    .line 108
    invoke-virtual {v0}, Lo/ViewOverlay$TaskDescription;->a()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p7, :cond_2

    .line 111
    invoke-virtual {v0}, Lo/ViewOverlay$TaskDescription;->c()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v5, -0x1

    .line 113
    :goto_1
    invoke-virtual {v0}, Lo/ViewOverlay$TaskDescription;->b()Lo/Toast;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, Lo/DexFile;->b(Landroid/content/Context;Lo/Toast;Lo/ViewTreeObserver$StateListAnimator;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 116
    :cond_3
    sget-object v1, Lo/WindowManager;->e:Lo/Animation;

    move-object v0, p1

    check-cast v0, Lo/ViewOverlay$StateListAnimator;

    invoke-virtual {v1, p0, v0, p2, p4}, Lo/Animation;->d(Landroid/content/Context;Lo/ViewOverlay$StateListAnimator;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {p5, v0, p6}, Lo/ViewTreeObserver$StateListAnimator;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    const/4 v1, -0x3

    .line 122
    invoke-virtual {p5, v1, p6}, Lo/ViewTreeObserver$StateListAnimator;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 129
    sget-object v1, Lo/WindowManager;->d:Lo/CharacterStyle;

    invoke-static {p2, p3, p4}, Lo/WindowManager;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/CharacterStyle;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
