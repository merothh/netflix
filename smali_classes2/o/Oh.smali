.class public Lo/Oh;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Od;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Oh$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/Od$TaskDescription;",
        ">;",
        "Lo/Od;"
    }
.end annotation


# static fields
.field public static final c:Lo/Oh$Activity;


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private final b:I

.field private d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

.field private final e:Landroid/widget/CompoundButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Oh$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Oh$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Oh;->c:Lo/Oh$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    const-string v0, "myListButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    .line 29
    iget-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    iput-object p1, p0, Lo/Oh;->e:Landroid/widget/CompoundButton;

    .line 30
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    iput p1, p0, Lo/Oh;->b:I

    .line 34
    invoke-direct {p0}, Lo/Oh;->f()V

    .line 36
    iget-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    new-instance v0, Lo/Oh$4;

    invoke-direct {v0, p0}, Lo/Oh$4;-><init>(Lo/Oh;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final b(Landroid/widget/CompoundButton;)Lo/Od;
    .locals 1

    sget-object v0, Lo/Oh;->c:Lo/Oh$Activity;

    invoke-virtual {v0, p0}, Lo/Oh$Activity;->e(Landroid/widget/CompoundButton;)Lo/Od;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/Oh;)Landroid/widget/CompoundButton;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method private final e(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;
    .locals 1

    .line 59
    instance-of v0, p1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final f()V
    .locals 4

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Oh;->e(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    move-result-object v0

    iput-object v0, p0, Lo/Oh;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    .line 48
    :cond_0
    iget-object v0, p0, Lo/Oh;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "myListButton.compoundDrawables"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 50
    invoke-direct {p0, v3}, Lo/Oh;->e(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    move-result-object v3

    iput-object v3, p0, Lo/Oh;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    .line 51
    iget-object v3, p0, Lo/Oh;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 30
    iget v0, p0, Lo/Oh;->b:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 73
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 77
    sget-object v0, Lo/Oh;->c:Lo/Oh$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 78
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pre_release_video_id"

    .line 119
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.netflix.mediaclient.mylist.intent.action.ADD"

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/Oh;->j()Landroid/widget/CompoundButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lo/Oh;->d:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 91
    sget-object p1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->a:Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;

    :goto_0
    check-cast p1, Lo/WebViewClient$Application;

    .line 90
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable;->c(Lo/WebViewClient$Application;)V

    .line 93
    :cond_1
    iget-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 95
    iget-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 97
    iget-object p1, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ee:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 69
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 82
    sget-object v0, Lo/Oh;->c:Lo/Oh$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 83
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 103
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qV:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-static {v0, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 110
    iget-object v0, p0, Lo/Oh;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->qW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    invoke-static {v0, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public j()Landroid/widget/CompoundButton;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/Oh;->e:Landroid/widget/CompoundButton;

    return-object v0
.end method
