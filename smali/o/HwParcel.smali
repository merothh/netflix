.class public Lo/HwParcel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HwParcel$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/HwParcel$Activity;


# instance fields
.field private final C:Landroid/view/View;

.field private a:Z

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/Float;

.field private m:I

.field private n:Lo/HandlerExecutor;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Ljava/lang/CharSequence;

.field private t:Z

.field private u:Lo/HidlSupport;

.field private v:Z

.field private w:Z

.field private x:Lo/HwBinder;

.field private y:Z

.field private final z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/HwParcel$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HwParcel$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/HwParcel;->b:Lo/HwParcel$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/HwParcel;->z:Landroid/content/Context;

    iput-object p2, p0, Lo/HwParcel;->C:Landroid/view/View;

    return-void
.end method

.method public static final b(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lo/HwParcel;->b:Lo/HwParcel$Activity;

    invoke-virtual {v0, p0}, Lo/HwParcel$Activity;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lo/HwParcel;ILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lo/HwParcel;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 160
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lo/HwParcel;->b(ILjava/lang/Integer;Ljava/lang/Integer;)Lo/HwParcel;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMessage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Lo/HwParcel;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lo/HwParcel;->d(Lo/HwParcel;ILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lo/HwParcel;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/CharSequence;)Lo/HwParcel;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lo/HwParcel;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b(I)Lo/HwParcel;
    .locals 1

    .line 168
    iget-object v0, p0, Lo/HwParcel;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "StringUtils.fromHtml(con\u2026sources.getString(resId))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/HwParcel;->a(Ljava/lang/CharSequence;)Lo/HwParcel;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILjava/lang/Integer;Ljava/lang/Integer;)Lo/HwParcel;
    .locals 1

    .line 161
    iget-object v0, p0, Lo/HwParcel;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "StringUtils.fromHtml(con\u2026sources.getString(resId))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lo/HwParcel;->c(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/HwParcel;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)Lo/HwParcel;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lo/HwParcel;->s:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 154
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lo/HwParcel;->z:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lo/HwParcel;->p:Ljava/lang/Integer;

    if-eqz p3, :cond_1

    .line 155
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Lo/HwParcel;->z:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lo/HwParcel;->l:Ljava/lang/Float;

    return-object p0
.end method

.method public final d()Lo/HwBlob;
    .locals 5

    .line 70
    new-instance v0, Lo/HwBlob;

    iget-object v1, p0, Lo/HwParcel;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/HwBlob;-><init>(Landroid/content/Context;)V

    .line 71
    iget-boolean v1, p0, Lo/HwParcel;->v:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lo/HwParcel;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setScrimDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    iget-object v1, p0, Lo/HwParcel;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setTarget$widgetry_release(Landroid/view/View;)V

    .line 75
    iget-boolean v1, p0, Lo/HwParcel;->t:Z

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lo/HwParcel;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lo/HwParcel;->c:Ljava/lang/Integer;

    iget-boolean v3, p0, Lo/HwParcel;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lo/HwBlob;->setBackgroundColors(ILjava/lang/Integer;Z)V

    .line 78
    :cond_2
    iget-object v1, p0, Lo/HwParcel;->n:Lo/HandlerExecutor;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lo/HwBlob;->setOnTooltipClickListener(Lo/HandlerExecutor;)V

    .line 79
    :cond_3
    iget-object v1, p0, Lo/HwParcel;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lo/HwParcel;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v1, p0, Lo/HwParcel;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lo/HwParcel;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/HwBlob;->setMessageTextColor(I)V

    .line 83
    :cond_4
    iget-object v1, p0, Lo/HwParcel;->l:Ljava/lang/Float;

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/HwBlob;->setMessageTextSize(F)V

    .line 84
    :cond_5
    iget-boolean v1, p0, Lo/HwParcel;->w:Z

    if-eqz v1, :cond_6

    .line 85
    iget v1, p0, Lo/HwParcel;->e:I

    invoke-virtual {v0, v1}, Lo/HwBlob;->setContentMarginStart(I)V

    .line 86
    iget v1, p0, Lo/HwParcel;->j:I

    invoke-virtual {v0, v1}, Lo/HwBlob;->setContentMarginTop(I)V

    .line 87
    iget v1, p0, Lo/HwParcel;->h:I

    invoke-virtual {v0, v1}, Lo/HwBlob;->setContentMarginEnd(I)V

    .line 88
    iget v1, p0, Lo/HwParcel;->f:I

    invoke-virtual {v0, v1}, Lo/HwBlob;->setContentMarginBottom(I)V

    .line 90
    :cond_6
    iget-boolean v1, p0, Lo/HwParcel;->y:Z

    if-eqz v1, :cond_7

    .line 91
    iget v1, p0, Lo/HwParcel;->i:I

    iget v2, p0, Lo/HwParcel;->k:I

    iget v3, p0, Lo/HwParcel;->g:I

    iget v4, p0, Lo/HwParcel;->m:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/HwBlob;->setMessagePadding(IIII)V

    .line 93
    :cond_7
    iget-object v1, p0, Lo/HwParcel;->u:Lo/HidlSupport;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setConsumptionManager(Lo/HidlSupport;)V

    .line 94
    iget-object v1, p0, Lo/HwParcel;->x:Lo/HwBinder;

    invoke-virtual {v0, v1}, Lo/HwBlob;->setOnTooltipLayoutChangeListener(Lo/HwBinder;)V

    return-object v0
.end method

.method public final d(Lo/HidlSupport;)Lo/HwParcel;
    .locals 1

    const-string v0, "consumptionManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lo/HwParcel;->u:Lo/HidlSupport;

    return-object p0
.end method
