.class Lo/VoiceInteractor$Application$1;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractor$Application;->d(Lo/ServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/VoiceInteractor$Application;


# direct methods
.method constructor <init>(Lo/VoiceInteractor$Application;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 2187
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2188
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2189
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2190
    :cond_0
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2191
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/FilterWriter;->p(Landroid/view/View;)V

    .line 2193
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    .line 2194
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    .line 2195
    iget-object p1, p0, Lo/VoiceInteractor$Application$1;->b:Lo/VoiceInteractor$Application;

    iget-object p1, p1, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iput-object v0, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    return-void
.end method
