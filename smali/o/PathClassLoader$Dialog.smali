.class Lo/PathClassLoader$Dialog;
.super Lo/PathClassLoader$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PathClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dialog"
.end annotation


# static fields
.field static final c:Lo/PathClassLoader$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Lo/PathClassLoader$Dialog;

    invoke-direct {v0}, Lo/PathClassLoader$Dialog;-><init>()V

    sput-object v0, Lo/PathClassLoader$Dialog;->c:Lo/PathClassLoader$Dialog;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lo/PathClassLoader$StateListAnimator;-><init>(Lo/PathClassLoader$Application;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lo/BufferedOutputStream;->e(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
