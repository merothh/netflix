.class public final Lo/LogWriter;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LogWriter$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/LogWriter$Activity;

.field private static final h:I

.field private static final i:I


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LogWriter$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LogWriter$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/LogWriter;->e:Lo/LogWriter$Activity;

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    sput v0, Lo/LogWriter;->i:I

    .line 67
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->w:I

    sput v0, Lo/LogWriter;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 73
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lo/LogWriter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->Z:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 75
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->em:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.deviceImage)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/LogWriter;->d:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ek:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.deviceText)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/LogWriter;->b:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->en:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.deviceContent)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/LogWriter;->c:Landroid/view/View;

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.check_mark)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/LogWriter;->a:Landroid/view/View;

    .line 79
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->K:I

    invoke-virtual {p0, p1}, Lo/LogWriter;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lo/LogWriter;->g:Z

    return v0
.end method

.method public final setDeviceSelected(Z)V
    .locals 2

    .line 83
    iput-boolean p1, p0, Lo/LogWriter;->g:Z

    .line 84
    iget-boolean p1, p0, Lo/LogWriter;->g:Z

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lo/LogWriter;->c:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->N:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    iget-object p1, p0, Lo/LogWriter;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lo/LogWriter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/LogWriter;->i:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    iget-object p1, p0, Lo/LogWriter;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/LogWriter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/LogWriter;->i:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object p1, p0, Lo/LogWriter;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lo/LogWriter;->c:Landroid/view/View;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->K:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    iget-object p1, p0, Lo/LogWriter;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lo/LogWriter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/LogWriter;->h:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    iget-object p1, p0, Lo/LogWriter;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/LogWriter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/LogWriter;->h:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p1, p0, Lo/LogWriter;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/LogWriter;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lo/LogWriter;->b:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
