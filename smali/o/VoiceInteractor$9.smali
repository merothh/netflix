.class Lo/VoiceInteractor$9;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractor;->c(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1058
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1059
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    .line 1060
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iput-object v0, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1048
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1049
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1051
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1052
    iget-object p1, p0, Lo/VoiceInteractor$9;->c:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/FilterWriter;->p(Landroid/view/View;)V

    :cond_0
    return-void
.end method
