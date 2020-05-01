.class public final Lo/Hn$TaskDescription;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final c:Lo/ams;

.field private e:Lo/ECPrivateKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Hn$TaskDescription;

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

    sput-object v0, Lo/Hn$TaskDescription;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 50
    sget v0, Lo/GS$Dialog;->q:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Hn$TaskDescription;->c:Lo/ams;

    return-void
.end method

.method private final c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Hn$TaskDescription;->c:Lo/ams;

    sget-object v1, Lo/Hn$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic c(Lo/Hn$TaskDescription;)Landroid/view/View;
    .locals 0

    .line 43
    invoke-direct {p0}, Lo/Hn$TaskDescription;->c()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lo/ECPrivateKeySpec;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Hn$TaskDescription;->e:Lo/ECPrivateKeySpec;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lo/Hn$TaskDescription;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    sget v1, Lo/GS$Application;->c:I

    .line 60
    invoke-static {v0, v1}, Lo/ECPrivateKeySpec;->b(Landroid/content/Context;I)Lo/ECPrivateKeySpec;

    move-result-object v0

    .line 64
    new-instance v1, Lo/Hn$TaskDescription$TaskDescription;

    invoke-direct {v1, p0, p1}, Lo/Hn$TaskDescription$TaskDescription;-><init>(Lo/Hn$TaskDescription;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 63
    iput-object v0, p0, Lo/Hn$TaskDescription;->e:Lo/ECPrivateKeySpec;

    .line 74
    invoke-direct {p0}, Lo/Hn$TaskDescription;->c()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/Hn$TaskDescription;->e:Lo/ECPrivateKeySpec;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 78
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Unable to load avd_trailers_feed_loading_skeleton"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
