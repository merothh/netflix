.class public final Lo/Hi$TaskDescription;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field public c:Lo/SelectionActionModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Hi$TaskDescription;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "carousel"

    const-string v4, "getCarousel()Lcom/airbnb/epoxy/Carousel;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/Hi$TaskDescription;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 68
    sget v0, Lo/GS$Dialog;->g:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Hi$TaskDescription;->a:Lo/ams;

    return-void
.end method


# virtual methods
.method public final a()Lo/SelectionActionModeHelper;
    .locals 2

    .line 69
    iget-object v0, p0, Lo/Hi$TaskDescription;->c:Lo/SelectionActionModeHelper;

    if-nez v0, :cond_0

    const-string v1, "pageIndicator"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 16

    const-string v0, "itemView"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lo/Hi$TaskDescription;->d()Lcom/airbnb/epoxy/Carousel;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/airbnb/epoxy/Carousel;->setPadding(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual {v0, v2}, Lcom/airbnb/epoxy/Carousel;->setNumViewsToShowOnScreen(F)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/Carousel;->setItemSpacingDp(I)V

    const/4 v1, 0x0

    .line 80
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AssistContent;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/Carousel;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$AssistContent;)V

    .line 81
    new-instance v1, Lo/AnnotatedElement;

    invoke-direct {v1}, Lo/AnnotatedElement;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lo/AnnotatedElement;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 84
    sget-object v2, Lo/SelectionActionModeHelper;->d:Lo/SelectionActionModeHelper$StateListAnimator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7fe

    const/4 v15, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v15}, Lo/SelectionActionModeHelper$StateListAnimator;->e(Lo/SelectionActionModeHelper$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;IIIIIIIIILandroid/graphics/Typeface;ILjava/lang/Object;)Lo/SelectionActionModeHelper;

    move-result-object v1

    move-object/from16 v2, p0

    iput-object v1, v2, Lo/Hi$TaskDescription;->c:Lo/SelectionActionModeHelper;

    .line 88
    new-instance v1, Lo/DoubleBinaryOperator;

    invoke-direct {v1}, Lo/DoubleBinaryOperator;-><init>()V

    invoke-virtual {v1, v0}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final d()Lcom/airbnb/epoxy/Carousel;
    .locals 3

    iget-object v0, p0, Lo/Hi$TaskDescription;->a:Lo/ams;

    sget-object v1, Lo/Hi$TaskDescription;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/Carousel;

    return-object v0
.end method
