.class public final Lo/Sr$ActionBar;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Sr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private final g:Lo/ams;

.field private final j:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Sr$ActionBar;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "image1"

    const-string v5, "getImage1()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "image2"

    const-string v5, "getImage2()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "image3"

    const-string v5, "getImage3()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "setupButton"

    const-string v5, "getSetupButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "divider"

    const-string v4, "getDivider()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lo/Sr$ActionBar;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vq:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Sr$ActionBar;->e:Lo/ams;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vu:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Sr$ActionBar;->c:Lo/ams;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vt:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Sr$ActionBar;->b:Lo/ams;

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rp:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Sr$ActionBar;->j:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eW:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Sr$ActionBar;->g:Lo/ams;

    return-void
.end method


# virtual methods
.method public final a()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Sr$ActionBar;->j:Lo/ams;

    sget-object v1, Lo/Sr$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method public final b()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Sr$ActionBar;->b:Lo/ams;

    sget-object v1, Lo/Sr$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final c()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Sr$ActionBar;->e:Lo/ams;

    sget-object v1, Lo/Sr$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Sr$ActionBar;->g:Lo/ams;

    sget-object v1, Lo/Sr$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Sr$ActionBar;->c:Lo/ams;

    sget-object v1, Lo/Sr$ActionBar;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method