.class public final Lcom/crittercism/internal/bv$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# instance fields
.field private a:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$h;->a:Ljava/lang/Float;

    invoke-static {}, Lcom/crittercism/internal/bv;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bv$h;->a:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "dpi"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bv$h;->a:Ljava/lang/Float;

    return-object v0
.end method
