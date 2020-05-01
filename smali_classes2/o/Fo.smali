.class public final Lo/Fo;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fo$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/Fo$TaskDescription;


# instance fields
.field private final a:I

.field private final e:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fo$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fo$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fo;->d:Lo/Fo$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 18
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->V:I

    invoke-static {p1, v0, v3, v2, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->R:I

    invoke-static {p1, v0, v3, v2, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 18
    :goto_0
    iput-object p1, p0, Lo/Fo;->e:Landroid/view/View;

    .line 24
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/Fo;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 24
    iget v0, p0, Lo/Fo;->a:I

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .line 46
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lo/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    invoke-virtual {v0}, Lo/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 49
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jr:I

    goto :goto_0

    .line 51
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iP:I

    .line 47
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "uiView.context.getString\u2026          }\n            )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    const-string v0, "videoTitle"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lo/Fo$ActionBar;

    invoke-direct {v0, p0}, Lo/Fo$ActionBar;-><init>(Lo/Fo;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 30
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 34
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lo/amj;->c:Lo/amj;

    .line 35
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uiView.context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uiView.context.resources\u2026.accesibility_play_video)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 34
    array-length p1, v4

    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/Fo;->e:Landroid/view/View;

    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lo/Fo;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
