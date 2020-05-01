.class public final Lo/LQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LQ$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/LQ$Application;


# instance fields
.field private a:Z

.field private final d:Lo/aka;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LQ$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LQ$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/LQ;->b:Lo/LQ$Application;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/CastAsFabUiView$castFab$2;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastAsFabUiView$castFab$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/LQ;->d:Lo/aka;

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lo/LQ;->a:Z

    .line 34
    iput-boolean p1, p0, Lo/LQ;->e:Z

    return-void
.end method

.method private final c()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lo/LQ;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/LQ;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lo/LQ;->b:Lo/LQ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 86
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lo/LQ;->b:Lo/LQ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 83
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lo/LQ;->b:Lo/LQ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 50
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-boolean v0, p0, Lo/LQ;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/LQ;->e:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 54
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 57
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lo/LQ;->b:Lo/LQ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 59
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBarHeight()I

    move-result v1

    .line 44
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->f:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v1, p1

    .line 43
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 64
    sget-object v0, Lo/LQ;->b:Lo/LQ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 65
    iget-boolean v0, p0, Lo/LQ;->e:Z

    if-eq v0, p1, :cond_0

    .line 66
    iput-boolean p1, p0, Lo/LQ;->e:Z

    .line 67
    invoke-direct {p0}, Lo/LQ;->c()V

    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lo/LQ;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    .line 72
    sget-object v0, Lo/LQ;->b:Lo/LQ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 73
    iget-boolean v0, p0, Lo/LQ;->a:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lo/LQ;->a:Z

    .line 75
    invoke-direct {p0}, Lo/LQ;->c()V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lo/LQ;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
