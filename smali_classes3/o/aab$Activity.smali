.class public final Lo/aab$Activity;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private c:Lo/ECPrivateKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/aab$Activity;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "loadingView"

    const-string v4, "getLoadingView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/aab$Activity;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 54
    sget v0, Lo/Zt$Application;->f:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/aab$Activity;->b:Lo/ams;

    return-void
.end method

.method private final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/aab$Activity;->b:Lo/ams;

    sget-object v1, Lo/aab$Activity;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lo/adu;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lo/aab$Activity;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    sget v0, Lo/Zt$TaskDescription;->a:I

    .line 64
    invoke-static {p1, v0}, Lo/ECPrivateKeySpec;->b(Landroid/content/Context;I)Lo/ECPrivateKeySpec;

    move-result-object p1

    iput-object p1, p0, Lo/aab$Activity;->c:Lo/ECPrivateKeySpec;

    .line 68
    invoke-direct {p0}, Lo/aab$Activity;->a()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/aab$Activity;->c:Lo/ECPrivateKeySpec;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 72
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Unable to load avd_lolomo_single_row_loading_more_skeleton"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final e()Lo/ECPrivateKeySpec;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/aab$Activity;->c:Lo/ECPrivateKeySpec;

    return-object v0
.end method
