.class public final Lo/EZ$StateListAnimator;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/EZ$StateListAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "textView"

    const-string v5, "getTextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "iconView"

    const-string v4, "getIconView()Landroid/widget/ImageButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/EZ$StateListAnimator;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sW:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/EZ$StateListAnimator;->b:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cB:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/EZ$StateListAnimator;->c:Lo/ams;

    return-void
.end method


# virtual methods
.method public final c()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/EZ$StateListAnimator;->b:Lo/ams;

    sget-object v1, Lo/EZ$StateListAnimator;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageButton;
    .locals 3

    iget-object v0, p0, Lo/EZ$StateListAnimator;->c:Lo/ams;

    sget-object v1, Lo/EZ$StateListAnimator;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method
