.class public Lo/Dy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:Lo/Bc;

.field private d:Z

.field private e:Landroid/view/ViewGroup;

.field private final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/Bc;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p3, p0, Lo/Dy;->e:Landroid/view/ViewGroup;

    .line 48
    iput-object p1, p0, Lo/Dy;->c:Lo/Bc;

    .line 49
    iput-object p2, p0, Lo/Dy;->j:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lo/Dy;->d()V

    return-void
.end method

.method static synthetic a(Lo/Dy;I)I
    .locals 0

    .line 23
    iput p1, p0, Lo/Dy;->b:I

    return p1
.end method

.method private a()V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lo/Dy;->d:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lo/Dy;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    iget-object v1, p0, Lo/Dy;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Lo/Bc;)V
    .locals 4

    .line 127
    new-instance v0, Lo/PendingIntent$Activity;

    iget-object v1, p0, Lo/Dy;->j:Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 128
    iget-object v1, p0, Lo/Dy;->j:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 129
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 131
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->gh:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1, v1}, Lo/Dy;->a(Lo/Bc;Landroid/view/View;)V

    .line 141
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->d(Landroid/view/View;)Lo/PendingIntent$Activity;

    .line 142
    invoke-virtual {v0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Lo/Dy;->a(Lo/PendingIntent;)V

    .line 145
    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    return-void
.end method

.method private a(Lo/Bc;Landroid/view/View;)V
    .locals 1

    .line 150
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uX:I

    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 154
    invoke-interface {p1}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private a(Lo/PendingIntent;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 160
    iget-object v1, p0, Lo/Dy;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 162
    invoke-virtual {p1}, Lo/PendingIntent;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 166
    iget-boolean v1, p0, Lo/Dy;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const v1, 0x800003

    :goto_0
    or-int/lit8 v1, v1, 0x30

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 167
    aget v1, v0, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    .line 168
    aget v0, v0, v1

    iget v1, p0, Lo/Dy;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method static synthetic b(Lo/Dy;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Dy;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lo/Dy;Lo/Bc;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/Dy;->a(Lo/Bc;)V

    return-void
.end method

.method static synthetic d(Lo/Dy;)Lo/Bc;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Dy;->c:Lo/Bc;

    return-object p0
.end method

.method public static d(Lo/Bc;Landroid/content/Context;)Lo/Dy;
    .locals 3

    const-string v0, "layout_inflater"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->gf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Lo/Dy;

    invoke-direct {v1, p0, p1, v0}, Lo/Dy;-><init>(Lo/Bc;Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method private d()V
    .locals 2

    .line 61
    iget-object v0, p0, Lo/Dy;->c:Lo/Bc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Dy;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uW:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Dy;->a:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lo/Dy;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/Dy;->c:Lo/Bc;

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v1}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lo/Dy;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-direct {p0}, Lo/Dy;->a()V

    .line 73
    invoke-direct {p0}, Lo/Dy;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lo/Dy;)Landroid/view/ViewGroup;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Dy;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/Dy;->a:Landroid/widget/TextView;

    new-instance v1, Lo/Dy$1;

    invoke-direct {v1, p0}, Lo/Dy$1;-><init>(Lo/Dy;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/Dy;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lo/Dy;->d:Z

    return-void
.end method
